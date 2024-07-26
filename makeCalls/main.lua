require "import"
import "android.widget.*"
import "android.view.*"
name="call maker"
layout={
    LinearLayout;
    {
        EditText;
        hint="type phone numver";
        id="phoneNumber";
    };
    {
        Button;
        text="call";
        onClick=function ()
            if phoneNumber.getText().toString()~="" then
                this.startActivity(Intent(Intent.ACTION_CALL,Uri.parse("tel:" .. phoneNumber.getText().toString())))
            end
        end;
    };
}
dlg=activity
dlg.setTitle(name)
dlg.setContentView(loadlayout(layout))
