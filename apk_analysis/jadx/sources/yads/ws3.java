package yads;

import android.content.Context;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import java.io.File;

/* JADX INFO: loaded from: classes6.dex */
public final class ws3 extends pg8 implements defpackage.bm3 {
    public final /* synthetic */ ct3 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ws3(ct3 ct3Var, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.b = ct3Var;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        return new ws3(this.b, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return new ws3(this.b, (defpackage.e02) obj2).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        r57.b(obj);
        ct3 ct3Var = this.b;
        pp0 pp0Var = ct3Var.c;
        Context context = ct3Var.a;
        pp0Var.getClass();
        File fileA = pp0.a(context, "mobileads-script-cache");
        if (!fileA.exists()) {
            fileA.mkdirs();
        }
        return fileA;
    }
}
