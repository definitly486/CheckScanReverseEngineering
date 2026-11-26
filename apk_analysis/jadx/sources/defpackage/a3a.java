package defpackage;

import android.app.Activity;
import android.view.View;
import com.my.target.q;
import com.my.target.v;
import com.my.target.w0;

/* JADX INFO: loaded from: classes4.dex */
public final class a3a implements View.OnClickListener {
    public final /* synthetic */ w0 b;

    public a3a(w0 w0Var) {
        this.b = w0Var;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        q qVar;
        w0 w0Var = this.b;
        wv9 wv9Var = w0Var.o;
        if (wv9Var == null || (qVar = wv9Var.H) == null) {
            return;
        }
        v vVar = w0Var.l;
        if (vVar == null || !vVar.d()) {
            Activity activity = (Activity) w0Var.g.get();
            if (vVar == null || activity == null) {
                y14.n(w0Var.h, qVar.b, null, null, null);
            } else {
                vVar.c(activity);
            }
        }
    }
}
