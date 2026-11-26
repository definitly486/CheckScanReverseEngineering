package yads;

import android.content.Context;
import defpackage.fh8;
import defpackage.zya;
import java.util.UUID;

/* JADX INFO: loaded from: classes6.dex */
public final class vy2 {
    public final Context a;
    public final defpackage.cl4 b = new fh8(new defpackage.eh4(this, 7));

    public vy2(Context context) {
        this.a = context;
    }

    public final Object a(String str, xy2 xy2Var) throws Throwable {
        defpackage.c31 c31Var = new defpackage.c31(1, zya.b(xy2Var));
        c31Var.u();
        sv svVar = new sv(str, new ty2(c31Var), new uy2(c31Var));
        svVar.j = false;
        UUID uuidRandomUUID = UUID.randomUUID();
        svVar.q = uuidRandomUUID;
        ((e85) this.b.getValue()).a(svVar);
        c31Var.n(new sy2(this, uuidRandomUUID));
        Object objS = c31Var.s();
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        return objS;
    }

    public static final e85 a(vy2 vy2Var) {
        Context context = vy2Var.a;
        e85 e85VarA = f85.a(context, in4.a(context));
        e85VarA.a();
        return e85VarA;
    }
}
