package io.appmetrica.analytics.impl;

import defpackage.kn1;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.fo, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public abstract class AbstractC0930fo {
    public static final C0853co a(Throwable th, Y y, List list, String str, Boolean bool) {
        ArrayList arrayList = null;
        Un unA = th != null ? Vn.a(th, 1, 0) : null;
        if (list != null) {
            arrayList = new ArrayList(kn1.q(list, 10));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(new Tl((StackTraceElement) it.next()));
            }
        }
        return new C0853co(unA, y, arrayList, null, null, null, str, bool);
    }
}
