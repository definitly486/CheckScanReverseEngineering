package io.appmetrica.analytics.impl;

import defpackage.kn1;
import defpackage.qn1;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.ed, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C0893ed {
    public final ArrayList a = new ArrayList();

    public final synchronized List a() {
        ArrayList arrayList;
        try {
            ArrayList arrayList2 = this.a;
            ArrayList arrayList3 = new ArrayList(kn1.q(arrayList2, 10));
            Iterator it = arrayList2.iterator();
            while (it.hasNext()) {
                arrayList3.add(((B5) it.next()).a);
            }
            arrayList = new ArrayList();
            for (Object obj : arrayList3) {
                if (((String) obj).length() > 0) {
                    arrayList.add(obj);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return qn1.N(arrayList);
    }
}
