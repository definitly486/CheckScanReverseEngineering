package io.appmetrica.analytics.impl;

import com.tapjoy.TJAdUnitConstants;
import defpackage.aa4;
import io.appmetrica.analytics.coreapi.internal.identifiers.IdentifierStatus;
import io.appmetrica.analytics.internal.IdentifiersResult;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.ga, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C0942ga {
    public final C1031jm a = new C1031jm();
    public C0994ia b = new C0994ia();

    public final synchronized void a(List list, HashMap map) {
        Boolean bool;
        String str;
        try {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                if (aa4.e((String) it.next(), "appmetrica_lib_ssl_enabled") && (bool = this.b.a) != null) {
                    boolean zBooleanValue = bool.booleanValue();
                    C0994ia c0994ia = this.b;
                    IdentifierStatus identifierStatus = c0994ia.b;
                    String str2 = c0994ia.c;
                    if (zBooleanValue) {
                        str = TJAdUnitConstants.String.TRUE;
                    } else {
                        if (zBooleanValue) {
                            throw new NoWhenBranchMatchedException();
                        }
                        str = TJAdUnitConstants.String.FALSE;
                    }
                    map.put("appmetrica_lib_ssl_enabled", this.a.a(new IdentifiersResult(str, identifierStatus, str2)));
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void a(C0994ia c0994ia) {
        this.b = c0994ia;
    }
}
