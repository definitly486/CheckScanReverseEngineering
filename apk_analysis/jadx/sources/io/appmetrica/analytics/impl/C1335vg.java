package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.coreapi.internal.executors.IHandlerExecutor;
import io.appmetrica.analytics.coreutils.internal.services.SafePackageManager;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.vg, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1335vg {
    public final SafePackageManager a;

    public /* synthetic */ C1335vg() {
        this(new SafePackageManager());
    }

    /* JADX WARN: Code duplicated, block: B:22:0x005a  */
    public final L9 a(Context context) {
        InterfaceC1310ug c1127ne;
        Fa fa = Fa.I;
        IHandlerExecutor iHandlerExecutorG = fa.d.g();
        Fo fo = fa.D().c;
        String installerPackageName = this.a.getInstallerPackageName(context, context.getPackageName());
        if (installerPackageName == null) {
            c1127ne = new C1127ne(installerPackageName);
        } else {
            int iHashCode = installerPackageName.hashCode();
            if (iHashCode != -1637701853) {
                if (iHashCode != -1046965711) {
                    if (iHashCode == -356280397 && installerPackageName.equals("ru.vk.store")) {
                        c1127ne = new Yi(context);
                    } else {
                        c1127ne = new C1127ne(installerPackageName);
                    }
                } else if (installerPackageName.equals("com.android.vending")) {
                    c1127ne = new Ia(context, iHandlerExecutorG);
                } else {
                    c1127ne = new C1127ne(installerPackageName);
                }
            } else if (installerPackageName.equals("com.huawei.appmarket")) {
                c1127ne = new Na(context);
            } else {
                c1127ne = new C1127ne(installerPackageName);
            }
        }
        return new L9(new C0899ej(new C1297u3(c1127ne, new Lo(fo))), iHandlerExecutorG);
    }

    public C1335vg(SafePackageManager safePackageManager) {
        this.a = safePackageManager;
    }
}
