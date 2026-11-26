package defpackage;

import java.util.Arrays;
import java.util.Iterator;
import java.util.ServiceConfigurationError;

/* JADX INFO: loaded from: classes5.dex */
public final class uy4 {
    public static final hu3 a;

    static {
        String property;
        int i = kh8.a;
        Object next = null;
        try {
            property = System.getProperty("kotlinx.coroutines.fast.service.loader");
        } catch (SecurityException unused) {
            property = null;
        }
        if (property != null) {
            Boolean.parseBoolean(property);
        }
        try {
            Iterator it = jp7.q(dp7.f(Arrays.asList(new hi()).iterator())).iterator();
            if (it.hasNext()) {
                next = it.next();
                if (it.hasNext()) {
                    ((ty4) next).getClass();
                    do {
                        ((ty4) it.next()).getClass();
                    } while (it.hasNext());
                }
            }
            ty4 ty4Var = (ty4) next;
            if (ty4Var != null) {
                a = ty4Var.a();
            } else {
                ah.f("Module with the Main dispatcher is missing. Add dependency providing the Main dispatcher, e.g. 'kotlinx-coroutines-android' and ensure it has the same version as 'kotlinx-coroutines-core'");
            }
        } catch (Throwable th) {
            throw new ServiceConfigurationError(th.getMessage(), th);
        }
    }
}
