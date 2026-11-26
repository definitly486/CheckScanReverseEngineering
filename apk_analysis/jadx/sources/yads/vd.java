package yads;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import com.monetization.ads.core.identifiers.ad.huawei.OpenDeviceIdentifierService;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes6.dex */
public final class vd extends pg8 implements defpackage.bm3 {
    public final /* synthetic */ yd b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public vd(yd ydVar, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.b = ydVar;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        return new vd(this.b, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return new vd(this.b, (defpackage.e02) obj2).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0058  */
    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        ResolveInfo resolveInfoResolveService;
        id idVar;
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        r57.b(obj);
        p93 p93Var = this.b.c;
        p93Var.c.getClass();
        Intent intentA = s93.a();
        fc5 fc5Var = p93Var.a;
        Context context = p93Var.d;
        fc5Var.getClass();
        try {
            resolveInfoResolveService = context.getPackageManager().resolveService(intentA, 0);
        } catch (Throwable unused) {
            resolveInfoResolveService = null;
        }
        if (resolveInfoResolveService == null) {
            return null;
        }
        try {
            com.monetization.ads.core.identifiers.ad.huawei.a aVar = new com.monetization.ads.core.identifiers.ad.huawei.a();
            if (!p93Var.d.bindService(intentA, aVar, 1)) {
                return null;
            }
            p93Var.b.getClass();
            try {
                OpenDeviceIdentifierService openDeviceIdentifierService = (OpenDeviceIdentifierService) aVar.a.poll(5L, TimeUnit.SECONDS);
                if (openDeviceIdentifierService != null) {
                    String oaid = openDeviceIdentifierService.getOaid();
                    boolean oaidTrackLimited = openDeviceIdentifierService.getOaidTrackLimited();
                    if (oaid != null) {
                        idVar = new id(oaid, oaidTrackLimited);
                    } else {
                        idVar = null;
                    }
                } else {
                    idVar = null;
                }
            } catch (Exception unused2) {
            }
            p93Var.d.unbindService(aVar);
            return idVar;
        } catch (Throwable unused3) {
            return null;
        }
    }
}
