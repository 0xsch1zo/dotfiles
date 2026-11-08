import { App, Astal, Gtk, Gdk } from "astal/gtk3"
import { Variable } from "astal"

import Clock from "./Clock"
import Workspaces from "./Workspaces"


export default function Bar(gdkmonitor: Gdk.Monitor) {
    const { TOP } = Astal.WindowAnchor

    return <window
        className="Bar"
        gdkmonitor={gdkmonitor}
        exclusivity={Astal.Exclusivity.EXCLUSIVE}
        anchor={TOP}
        application={App}>
        <centerbox>
            <Workspaces />
            <Clock />
        </centerbox>
    </window>
}
