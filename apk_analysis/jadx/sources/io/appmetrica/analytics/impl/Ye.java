package io.appmetrica.analytics.impl;

import defpackage.kn1;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class Ye {
    public final List a;

    public Ye(List list) {
        this.a = list;
    }

    public final ArrayList a() {
        List<Xe> list = this.a;
        ArrayList arrayList = new ArrayList(kn1.q(list, 10));
        for (Xe xe : list) {
            arrayList.add(new C1126nd(xe.a, xe.b.a()));
        }
        return arrayList;
    }
}
