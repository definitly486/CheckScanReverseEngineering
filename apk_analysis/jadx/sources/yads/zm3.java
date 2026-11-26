package yads;

import com.yandex.mobile.ads.features.debugpanel.ui.IntegrationInspectorActivity;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y68;

/* JADX INFO: loaded from: classes6.dex */
public final class zm3 extends pg8 implements defpackage.bm3 {
    public int b;
    public final /* synthetic */ IntegrationInspectorActivity c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zm3(IntegrationInspectorActivity integrationInspectorActivity, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.c = integrationInspectorActivity;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        return new zm3(this.c, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return new zm3(this.c, (defpackage.e02) obj2).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i = this.b;
        if (i == 0) {
            r57.b(obj);
            y68 y68Var = this.c.b().n;
            ym3 ym3Var = new ym3(this.c);
            this.b = 1;
            if (y68Var.collect(ym3Var, this) == a32Var) {
                return a32Var;
            }
        } else {
            if (i != 1) {
                defpackage.ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
        }
        defpackage.h8.d();
        return null;
    }
}
