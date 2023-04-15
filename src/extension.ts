// The module 'vscode' contains the VS Code extensibility API
// Import the module and reference it with the alias vscode in your code below
import * as vscode from 'vscode';

function setExternalLibrary(folder: string, enable: boolean) {
	const extensionId = "poggudev.cs2-vscript-natives"; // this id is case sensitive
	const extensionPath = vscode.extensions.getExtension(extensionId)?.extensionPath;
	const folderPath = extensionPath+"\\"+folder;
	const config = vscode.workspace.getConfiguration("Lua");
	const library: string[] | undefined = config.get("workspace.library");
	if (library && extensionPath) {
		// remove any older versions of our path e.g. "publisher.name-0.0.1"
		for (let i = library.length-1; i >= 0; i--) {
			const el = library[i];
			const isSelfExtension = el.indexOf(extensionId) > -1;
			const isCurrentVersion = el.indexOf(extensionPath) > -1;
			if (isSelfExtension && !isCurrentVersion) {
				library.splice(i, 1);
			}
		}
		const index = library.indexOf(folderPath);
		if (enable) {
			if (index === -1) {
				library.push(folderPath);
			}
		}
		else {
			if (index > -1) {
				library.splice(index, 1);
			}
		}
		config.update("workspace.library", library, true);
	}
}

export function activate(context: vscode.ExtensionContext) {
	context.globalState.setKeysForSync(["disableExternalLib"]);

	if(!context.globalState.get("disableExternalLib"))
	{
		setExternalLibrary("EmmyLua", true);
	}

	context.subscriptions.push(vscode.commands.registerCommand("cs2-vscript-natives.disableAnnotations", () => {
		setExternalLibrary("EmmyLua", false);
		context.globalState.update("disableExternalLib", 1);
	}));

	context.subscriptions.push(vscode.commands.registerCommand("cs2-vscript-natives.enableAnnotations", () => {
		setExternalLibrary("EmmyLua", true);
		context.globalState.update("disableExternalLib", 0);
	}));
}

// This method is called when your extension is deactivated
export function deactivate() {}