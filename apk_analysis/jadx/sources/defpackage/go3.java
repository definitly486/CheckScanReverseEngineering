package defpackage;

import com.warefly.checkscan.auth.presentation.flow.AuthReason;

/* JADX INFO: loaded from: classes5.dex */
public final class go3 implements fo3 {
    public final o87 a;
    public final jf6 b;

    public go3(o87 o87Var, jf6 jf6Var) {
        this.a = o87Var;
        this.b = jf6Var;
    }

    @Override // defpackage.fo3
    public final void a() {
        this.a.d(new ix(new AuthReason.Login((String) null, "checkscan://games-tab?play=true", 3)));
    }

    @Override // defpackage.fo3
    public final void b() {
        this.a.d(new jg7(this.b.s0()));
    }
}
