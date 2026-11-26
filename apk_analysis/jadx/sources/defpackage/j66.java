package defpackage;

import com.warefly.checkscan.auth.presentation.flow.AuthReason;
import com.warefly.checkscan.presentation.e;
import com.warefly.checkscan.presentation.profile.reason.ProfileReason;

/* JADX INFO: loaded from: classes5.dex */
public final class j66 implements i66 {
    public final o87 a;

    public j66(o87 o87Var) {
        this.a = o87Var;
    }

    @Override // defpackage.i66
    public final void a() {
        this.a.c();
    }

    @Override // defpackage.i66
    public final void b() {
        this.a.g(e.a);
    }

    @Override // defpackage.i66
    public final void c() {
        this.a.d(new qh7(ProfileReason.ChangeCity.b));
    }

    @Override // defpackage.i66
    public final void d(e66 e66Var) {
        y57 y57Var = this.a.b;
        y57Var.getClass();
        y57Var.a.put("PERSONAL_DATA_CITY_CHANGED_KEY", e66Var);
    }

    @Override // defpackage.i66
    public final void e() {
        this.a.g(lh7.a);
    }

    @Override // defpackage.i66
    public final void f() {
        this.a.d(new ix(AuthReason.AddEmail.b));
    }
}
