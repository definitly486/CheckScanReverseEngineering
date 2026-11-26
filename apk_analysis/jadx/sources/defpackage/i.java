package defpackage;

import android.content.ServiceConnection;

/* JADX INFO: loaded from: classes.dex */
public final class i extends gh4 implements nl3<z54, j59> {
    public final /* synthetic */ ru6 f;
    public final /* synthetic */ a08<a64> g;
    public final /* synthetic */ r07<ServiceConnection> h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(r07 r07Var, ru6 ru6Var, a08 a08Var) {
        super(1);
        this.f = ru6Var;
        this.g = a08Var;
        this.h = r07Var;
    }

    @Override // defpackage.nl3
    public final j59 invoke(z54 z54Var) {
        a64 a64Var;
        z54 z54Var2 = z54Var;
        ru6 ru6Var = this.f;
        if (z54Var2 != null) {
            zya zyaVar = ru6Var.b;
            String str = z54Var2.a;
            str.getClass();
            String str2 = z54Var2.b;
            str2.getClass();
            a64Var = new a64(str, str2, z54Var2.c.longValue(), z54Var2.d.longValue(), z54Var2.e);
        } else {
            a64Var = null;
        }
        this.g.a(a64Var);
        ny1.a(ru6Var.a, this.h.b);
        return j59.a;
    }
}
