package yads;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;

/* JADX INFO: loaded from: classes6.dex */
public final class ud extends pg8 implements defpackage.bm3 {
    public final /* synthetic */ yd b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ud(yd ydVar, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.b = ydVar;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        return new ud(this.b, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return new ud(this.b, (defpackage.e02) obj2).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0046  */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        id idVar;
        ResolveInfo resolveInfoResolveService;
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        r57.b(obj);
        n73 n73Var = this.b.b;
        q73 q73Var = n73Var.a;
        q73Var.getClass();
        if (AdvertisingIdClient.class != 0) {
            try {
                Object objA = g55.a(AdvertisingIdClient.class, "getAdvertisingIdInfo", q73Var.a);
                if (objA != null) {
                    String str = (String) f55.a(objA, "getId", new Object[0]);
                    Boolean bool = (Boolean) f55.a(objA, "isLimitAdTrackingEnabled", new Object[0]);
                    if (bool == null || str == null) {
                        idVar = null;
                    } else {
                        idVar = new id(str, bool.booleanValue());
                    }
                } else {
                    idVar = null;
                }
            } catch (Throwable unused) {
            }
        } else {
            idVar = null;
        }
        if (idVar != null) {
            return idVar;
        }
        s73 s73Var = n73Var.b;
        s73Var.c.getClass();
        Intent intentA = u73.a();
        fc5 fc5Var = s73Var.a;
        Context context = s73Var.d;
        fc5Var.getClass();
        try {
            resolveInfoResolveService = context.getPackageManager().resolveService(intentA, 0);
        } catch (Throwable unused2) {
            resolveInfoResolveService = null;
        }
        if (resolveInfoResolveService == null) {
            return null;
        }
        try {
            p73 p73Var = new p73();
            if (!s73Var.d.bindService(intentA, p73Var, 1)) {
                return null;
            }
            id idVarA = s73Var.b.a(p73Var);
            s73Var.d.unbindService(p73Var);
            return idVarA;
        } catch (Throwable unused3) {
            return null;
        }
    }
}
