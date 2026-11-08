import { App, Astal, Gtk, Gdk } from "astal/gtk3"
import { Variable } from "astal"

export default function Clock() {
    const timeDateFormats = {
        date: "date '+%d-%m-%y'",
        time: "date '+%H:%M'"
    };
    const format = Variable(timeDateFormats.time)
    const time = Variable("").poll(1000, format.get())

    function changeTimeFormat() {
        if (format.get() === timeDateFormats.time) {
            format.set(timeDateFormats.date)
        } else if (format.get() === timeDateFormats.date) {
            format.set(timeDateFormats.time)
        }
    }

    return <button
        onClicked={() => {
            time.stopPoll();
            changeTimeFormat()
            time.poll(1000, format.get())
        }}
        halign={Gtk.Align.CENTER}
    >
        <label label={time()} />
    </button>
}

