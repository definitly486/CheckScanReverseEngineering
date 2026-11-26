package yads;

import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import java.io.File;

/* JADX INFO: loaded from: classes6.dex */
public final class zs3 extends pg8 implements defpackage.bm3 {
    public int b;
    public final /* synthetic */ ct3 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zs3(ct3 ct3Var, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.c = ct3Var;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        return new zs3(this.c, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return new zs3(this.c, (defpackage.e02) obj2).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) throws Throwable {
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i = this.b;
        try {
            if (i == 0) {
                r57.b(obj);
                ct3 ct3Var = this.c;
                this.b = 1;
                defpackage.oi2 oi2Var = defpackage.qo2.a;
                obj = defpackage.av0.d(defpackage.sh2.c, new ws3(ct3Var, null), this);
                if (obj == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    defpackage.ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            File file = new File((File) obj, "light_bundle_script.js");
            if (file.exists()) {
                return defpackage.da3.e(file);
            }
        } catch (Exception unused) {
        }
        return null;
    }
}
