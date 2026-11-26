package yads;

import com.google.android.gms.appset.AppSet;
import com.google.android.gms.appset.AppSetIdInfo;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import defpackage.zya;

/* JADX INFO: loaded from: classes6.dex */
public final class qv4 extends pg8 implements defpackage.bm3 {
    public int b;
    public final /* synthetic */ sv4 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public qv4(sv4 sv4Var, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.c = sv4Var;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        return new qv4(this.c, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return new qv4(this.c, (defpackage.e02) obj2).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) throws Throwable {
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i = this.b;
        if (i != 0) {
            if (i == 1) {
                r57.b(obj);
                return obj;
            }
            defpackage.ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        r57.b(obj);
        sv4 sv4Var = this.c;
        this.b = 1;
        defpackage.c31 c31Var = new defpackage.c31(1, zya.b(this));
        c31Var.u();
        try {
            Task<AppSetIdInfo> appSetIdInfo = AppSet.getClient(sv4Var.a.getApplicationContext()).getAppSetIdInfo();
            final ov4 ov4Var = new ov4(c31Var);
            appSetIdInfo.addOnSuccessListener(new OnSuccessListener() { // from class: yads.rv4
                @Override // com.google.android.gms.tasks.OnSuccessListener
                public final /* synthetic */ void onSuccess(Object obj2) {
                    ov4Var.invoke(obj2);
                }
            }).addOnFailureListener(new pv4(c31Var));
        } catch (Throwable unused) {
            c31Var.B(null, null);
        }
        Object objS = c31Var.s();
        defpackage.a32 a32Var2 = defpackage.a32.COROUTINE_SUSPENDED;
        return objS == a32Var ? a32Var : objS;
    }
}
