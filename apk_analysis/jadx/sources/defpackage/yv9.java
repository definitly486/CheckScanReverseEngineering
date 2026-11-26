package defpackage;

import android.content.Context;
import android.view.View;
import com.my.target.a0;
import com.my.target.q;
import com.my.target.v;

/* JADX INFO: loaded from: classes4.dex */
public final class yv9 implements View.OnClickListener {
    public final /* synthetic */ q b;
    public final /* synthetic */ a0 c;

    public yv9(a0 a0Var, q qVar) {
        this.c = a0Var;
        this.b = qVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        Context context = view.getContext();
        a0 a0Var = this.c;
        v vVar = a0Var.d;
        if (vVar == null || !vVar.d()) {
            v vVar2 = a0Var.d;
            if (vVar2 == null) {
                y14.n(context, this.b.b, null, null, null);
            } else {
                vVar2.c(context);
            }
        }
    }
}
