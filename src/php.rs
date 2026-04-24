mod language_servers;

use zed::CodeLabel;
use zed_extension_api::{self as zed, serde_json, LanguageServerId, Result};

use crate::language_servers::Intelephense;

struct LaravelExtension {
    intelephense: Option<Intelephense>,
}

impl zed::Extension for LaravelExtension {
    fn new() -> Self {
        Self { intelephense: None }
    }

    fn language_server_command(
        &mut self,
        language_server_id: &LanguageServerId,
        worktree: &zed::Worktree,
    ) -> Result<zed::Command> {
        match language_server_id.as_ref() {
            Intelephense::LANGUAGE_SERVER_ID => {
                let intelephense = self.intelephense.get_or_insert_with(Intelephense::new);
                intelephense.language_server_command(language_server_id, worktree)
            }
            language_server_id => Err(format!("unknown language server: {language_server_id}")),
        }
    }

    fn language_server_workspace_configuration(
        &mut self,
        language_server_id: &LanguageServerId,
        worktree: &zed::Worktree,
    ) -> Result<Option<serde_json::Value>> {
        if language_server_id.as_ref() == Intelephense::LANGUAGE_SERVER_ID {
            if let Some(intelephense) = self.intelephense.as_mut() {
                return intelephense.language_server_workspace_configuration(worktree);
            }
        }
        Ok(None)
    }

    fn label_for_completion(
        &self,
        language_server_id: &zed::LanguageServerId,
        completion: zed::lsp::Completion,
    ) -> Option<CodeLabel> {
        match language_server_id.as_ref() {
            Intelephense::LANGUAGE_SERVER_ID => {
                self.intelephense.as_ref()?.label_for_completion(completion)
            }
            _ => None,
        }
    }
}

zed::register_extension!(LaravelExtension);
