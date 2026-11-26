package yads;

import android.view.View;

/* JADX INFO: loaded from: classes6.dex */
public final class o10 implements View.OnClickListener {
    public final m2 a;
    public final jd0 b;

    public o10(m2 m2Var, jd0 jd0Var) {
        this.a = m2Var;
        this.b = jd0Var;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.a.e();
        this.b.a(id0.CROSS_CLICKED);
    }
}
