package yads;

import android.app.Activity;

/* JADX INFO: loaded from: classes6.dex */
public final class oa5 implements c60 {
    public final Activity a;
    public final ao1 b;
    public final m2 c;
    public boolean d;

    public oa5(Activity activity, ao1 ao1Var, m2 m2Var) {
        this.a = activity;
        this.b = ao1Var;
        this.c = m2Var;
    }

    @Override // yads.c60
    public final void e() {
        if (this.d) {
            this.c.e();
        } else {
            this.b.a(this.a);
        }
    }
}
