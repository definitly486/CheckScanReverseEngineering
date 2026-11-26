package yads;

import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import io.appmetrica.analytics.AppMetricaLibraryAdapter;

/* JADX INFO: loaded from: classes6.dex */
public final class je extends pg8 implements defpackage.bm3 {
    public final /* synthetic */ ke b;
    public final /* synthetic */ rf c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public je(ke keVar, rf rfVar, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.b = keVar;
        this.c = rfVar;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        return new je(this.b, this.c, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return new je(this.b, this.c, (defpackage.e02) obj2).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        r57.b(obj);
        ke keVar = this.b;
        rf rfVar = this.c;
        keVar.getClass();
        ke.a(rfVar);
        he heVar = this.b.a;
        rf rfVar2 = this.c;
        if (heVar.a.b()) {
            try {
                fj0 fj0Var = heVar.b;
                String str = rfVar2.a;
                String str2 = rfVar2.b;
                fj0Var.getClass();
                AppMetricaLibraryAdapter.reportEvent("ads_sdk", str, str2);
                j59 j59Var = j59.a;
            } catch (Throwable unused) {
            }
        }
        return j59.a;
    }
}
