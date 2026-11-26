package yads;

import android.view.View;
import android.widget.TextView;

/* JADX INFO: loaded from: classes6.dex */
public final class aa5 {
    public final ux5 a;
    public final yv5 b;

    public aa5(ux5 ux5Var) {
        yv5 yv5Var = new yv5();
        this.a = ux5Var;
        this.b = yv5Var;
    }

    public final void a(View view, long j, long j2) {
        view.setVisibility(0);
        this.a.getClass();
        View viewFindViewWithTag = view.findViewWithTag("timer_value");
        TextView textView = viewFindViewWithTag instanceof TextView ? (TextView) viewFindViewWithTag : null;
        if (textView != null) {
            this.b.getClass();
            textView.setText(String.valueOf((int) Math.ceil((j - j2) / yv5.a)));
        }
    }
}
