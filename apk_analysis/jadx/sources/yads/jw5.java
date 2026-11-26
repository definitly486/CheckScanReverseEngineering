package yads;

import android.view.View;
import android.widget.TextView;

/* JADX INFO: loaded from: classes6.dex */
public final class jw5 extends rf6 {
    public jw5(TextView textView) {
        super(textView);
    }

    @Override // yads.rf6
    public final void a(View view) {
        TextView textView = (TextView) view;
        textView.setText("");
        textView.setVisibility(8);
        textView.setOnClickListener(null);
        textView.setOnTouchListener(null);
        textView.setSelected(false);
    }

    @Override // yads.rf6
    public final void b(View view, Object obj) {
        ((TextView) view).setText((String) obj);
    }

    @Override // yads.rf6
    public final boolean a(View view, Object obj) {
        String str = (String) obj;
        CharSequence text = ((TextView) view).getText();
        if (text != null) {
            return String.valueOf(text).equalsIgnoreCase(str);
        }
        return false;
    }
}
