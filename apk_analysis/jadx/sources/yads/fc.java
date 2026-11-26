package yads;

import android.app.Dialog;
import android.view.View;

/* JADX INFO: loaded from: classes6.dex */
public final class fc implements View.OnClickListener {
    public final Dialog a;
    public final fr3 b;

    public fc(Dialog dialog, fr3 fr3Var) {
        this.a = dialog;
        this.b = fr3Var;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.b.getClass();
        fr3.a(view);
        eo0.a(this.a);
    }
}
