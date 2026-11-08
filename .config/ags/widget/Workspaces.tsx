import { bind } from "astal"
import Hyprland from "gi://AstalHyprland"


export default function Workspaces() {
    const hyprland = Hyprland.get_default()
    return <box className="Workspaces">
        {bind(hyprland, "workspaces").as(workspaces => workspaces
            .filter(workspace => !(workspace.id >= -99 && workspace.id <= -2))
            .sort((a, b) => a.id - b.id)
            .map(workspace => (
                <button
                    className={bind(hyprland, "focusedWorkspace").as(focusedWorkspace => (workspace === focusedWorkspace ? "focused" : ""))}
                    onClicked={() => workspace.focus()}
                />
            ))
        )}
    </box>
}
