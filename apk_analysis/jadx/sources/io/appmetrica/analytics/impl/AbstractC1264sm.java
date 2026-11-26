package io.appmetrica.analytics.impl;

import defpackage.ll3;
import defpackage.yr;
import io.appmetrica.analytics.StartupParamsCallback;
import io.appmetrica.analytics.coreutils.internal.time.SystemTimeProvider;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.sm, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public abstract class AbstractC1264sm {
    public static final Set a = yr.k0(new String[]{"appmetrica_clids", StartupParamsCallback.APPMETRICA_DEVICE_ID_HASH, StartupParamsCallback.APPMETRICA_DEVICE_ID, "appmetrica_get_ad_url", "appmetrica_report_ad_url", StartupParamsCallback.APPMETRICA_UUID});
    public static final SystemTimeProvider b = new SystemTimeProvider();
    public static final Q3 c = new Q3();

    /* JADX WARN: Code duplicated, block: B:50:0x00ac A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:67:0x0017 A[SYNTHETIC] */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static final boolean a(C1341vm c1341vm, Collection collection, Map map, ll3 ll3Var) {
        boolean zA;
        if (collection != null && !collection.isEmpty() && !collection.isEmpty()) {
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                String str = (String) it.next();
                switch (str.hashCode()) {
                    case -1367801046:
                        if (str.equals(StartupParamsCallback.APPMETRICA_UUID)) {
                            zA = a(c1341vm.d);
                            if (!zA) {
                                return false;
                            }
                        }
                        break;
                    case 155670667:
                        if (str.equals("appmetrica_get_ad_url")) {
                            zA = a(c1341vm.i);
                            if (!zA) {
                                return false;
                            }
                        }
                        break;
                    case 299713912:
                        if (str.equals(StartupParamsCallback.APPMETRICA_DEVICE_ID_HASH)) {
                            zA = a(c1341vm.b);
                            if (!zA) {
                                return false;
                            }
                        }
                        break;
                    case 530949152:
                        if (str.equals("appmetrica_clids")) {
                            Q3 q3 = c;
                            N3 n3 = (N3) ll3Var.invoke();
                            q3.getClass();
                            zA = Q3.a(map, c1341vm, n3);
                            if (!zA) {
                                return false;
                            }
                        }
                        break;
                    case 703740463:
                        if (str.equals("appmetrica_report_ad_url")) {
                            zA = a(c1341vm.j);
                            if (!zA) {
                                return false;
                            }
                        }
                        break;
                    case 1117383061:
                        if (str.equals(StartupParamsCallback.APPMETRICA_DEVICE_ID)) {
                            zA = a(c1341vm.a);
                            if (!zA) {
                                return false;
                            }
                        }
                        break;
                }
                if (c1341vm.w) {
                    return false;
                }
                if (b.currentTimeSeconds() > c1341vm.o + ((long) c1341vm.z.a)) {
                    return false;
                }
            }
        }
        return true;
    }

    public static final boolean a(String str) {
        return !(str == null || str.length() == 0);
    }
}
