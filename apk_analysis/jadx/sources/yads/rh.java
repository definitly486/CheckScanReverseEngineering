package yads;

import android.content.Context;
import android.os.Build;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes6.dex */
public final class rh extends pg8 implements defpackage.bm3 {
    public final /* synthetic */ Context b;
    public final /* synthetic */ do6 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public rh(Context context, do6 do6Var, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.b = context;
        this.c = do6Var;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        return new rh(this.b, this.c, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return new rh(this.b, this.c, (defpackage.e02) obj2).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        r57.b(obj);
        g46.a(this.b, this.c.a());
        nf.a(this.b, this.c.a());
        if (Build.VERSION.SDK_INT >= 30) {
            AtomicBoolean atomicBoolean = zh.a;
            zh.a(this.b, this.c.a());
        }
        gw3 gw3Var = new gw3();
        Boolean boolA = gw3.a(this.b);
        if (boolA != null) {
            ha4.b(boolA.booleanValue());
        }
        Boolean boolB = gw3.b(this.b);
        if (boolB != null) {
            ha4.a(boolB.booleanValue());
        }
        if (za.a(this.b)) {
            p94 p94VarA = q94.a(this.b);
            if (p94VarA instanceof o94) {
                jn3.a(new kn3().a((o94) p94VarA), new Object[0]);
            } else if (p94VarA instanceof n94) {
                jn3.b("Yandex Mobile Ads 8.2.0 integrated successfully", new Object[0]);
            }
            n64 n64Var = new n64();
            b74.a(new e74(n64Var).a(new z64().a(u54.a())));
        }
        ah5 ah5Var = new ah5(gw3Var, this.c);
        s1.a(this.b);
        ah5Var.a(this.b);
        return j59.a;
    }
}
