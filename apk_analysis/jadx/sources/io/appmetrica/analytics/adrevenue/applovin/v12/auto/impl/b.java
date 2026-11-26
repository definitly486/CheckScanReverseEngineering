package io.appmetrica.analytics.adrevenue.applovin.v12.auto.impl;

import android.os.Bundle;
import defpackage.bm3;
import defpackage.j59;
import defpackage.qm3;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class b extends qm3 implements bm3 {
    public b(e eVar) {
        super(2, eVar, e.class, "onIlrdReceived", "onIlrdReceived(Ljava/lang/String;Landroid/os/Bundle;)V", 0);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        boolean z;
        String str = (String) obj;
        Bundle bundle = (Bundle) obj2;
        e eVar = (e) this.receiver;
        synchronized (eVar) {
            try {
                if (eVar.c.contains(str)) {
                    z = true;
                } else {
                    if (eVar.c.size() >= 10) {
                        eVar.c.removeFirst();
                    }
                    eVar.c.addLast(str);
                    z = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (!z) {
            try {
                eVar.b.getClass();
                eVar.a.getInternalClientModuleFacade().reportAdRevenue(d.a(bundle));
            } catch (Throwable unused) {
            }
        }
        return j59.a;
    }
}
