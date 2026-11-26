package yads;

import android.view.View;
import android.widget.TextView;

/* JADX INFO: loaded from: classes6.dex */
public final class sg6 implements View.OnClickListener {
    public final TextView a;

    public sg6(TextView textView) {
        this.a = textView;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        TextView textView = this.a;
        if (textView != null) {
            textView.performClick();
        }
    }
}
