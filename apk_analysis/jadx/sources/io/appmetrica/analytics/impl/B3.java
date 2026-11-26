package io.appmetrica.analytics.impl;

import defpackage.qn1;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class B3 implements InterfaceC1111mo {
    @Override // io.appmetrica.analytics.impl.InterfaceC1111mo, defpackage.bm3
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final List<F3> invoke(List<F3> list, F3 f3) {
        if (!(list instanceof Collection) || !list.isEmpty()) {
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                EnumC0914f8 enumC0914f8 = ((F3) it.next()).b;
                EnumC0914f8 enumC0914f9 = f3.b;
                if (enumC0914f8 == enumC0914f9) {
                    if (enumC0914f9 != EnumC0914f8.d) {
                        return null;
                    }
                    ArrayList arrayList = new ArrayList();
                    for (Object obj : list) {
                        if (((F3) obj).b != EnumC0914f8.d) {
                            arrayList.add(obj);
                        }
                    }
                    return qn1.i0(f3, arrayList);
                }
            }
        }
        return qn1.i0(f3, list);
    }
}
