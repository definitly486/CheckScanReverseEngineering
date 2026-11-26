package yads;

import android.view.View;
import android.widget.TextView;

/* JADX INFO: loaded from: classes6.dex */
public final class i10 extends rf6 {
    public i10(TextView textView) {
        super(textView);
    }

    @Override // yads.rf6
    public final boolean a(View view, Object obj) {
        TextView textView = (TextView) view;
        g10 g10Var = (g10) obj;
        if (f10.TEXT == g10Var.a) {
            return defpackage.aa4.e(textView.getText().toString(), g10Var.b);
        }
        return true;
    }

    @Override // yads.rf6
    public final void b(View view, Object obj) {
        TextView textView = (TextView) view;
        g10 g10Var = (g10) obj;
        if (f10.TEXT == g10Var.a) {
            textView.setText(g10Var.b);
        }
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
}
