package yads;

import android.content.Context;
import com.google.android.gms.appset.AppSetIdInfo;
import defpackage.r57;
import defpackage.ta8;
import defpackage.yv8;

/* JADX INFO: loaded from: classes6.dex */
public final class sv4 {
    public final Context a;

    public sv4(Context context) {
        this.a = context;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(long j, defpackage.f02 f02Var) {
        nv4 nv4Var;
        String id;
        if (f02Var instanceof nv4) {
            nv4Var = (nv4) f02Var;
            int i = nv4Var.d;
            if ((i & Integer.MIN_VALUE) != 0) {
                nv4Var.d = i - Integer.MIN_VALUE;
            } else {
                nv4Var = new nv4(this, f02Var);
            }
        } else {
            nv4Var = new nv4(this, f02Var);
        }
        Object objC = nv4Var.b;
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i2 = nv4Var.d;
        try {
            if (i2 == 0) {
                r57.b(objC);
                qv4 qv4Var = new qv4(this, null);
                nv4Var.d = 1;
                objC = yv8.c(j, qv4Var, nv4Var);
                if (objC == a32Var) {
                    return a32Var;
                }
            } else {
                if (i2 != 1) {
                    defpackage.ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(objC);
            }
            AppSetIdInfo appSetIdInfo = (AppSetIdInfo) objC;
            if (appSetIdInfo == null || (id = appSetIdInfo.getId()) == null || ta8.M(id)) {
                return null;
            }
            return id;
        } catch (Throwable unused) {
        }
    }
}
