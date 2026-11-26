package defpackage;

import java.util.concurrent.Executor;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes.dex */
public final class pi2 implements ie7 {
    public static final Logger f = Logger.getLogger(d39.class.getName());
    public final pk9 a;
    public final Executor b;
    public final e00 c;
    public final f13 d;
    public final eh8 e;

    public pi2(Executor executor, e00 e00Var, pk9 pk9Var, f13 f13Var, eh8 eh8Var) {
        this.b = executor;
        this.c = e00Var;
        this.a = pk9Var;
        this.d = f13Var;
        this.e = eh8Var;
    }

    @Override // defpackage.ie7
    public final void a(hz hzVar, sy syVar, f39 f39Var) {
        this.b.execute(new c01(this, hzVar, f39Var, syVar, 1));
    }
}
