package io.appmetrica.analytics.impl;

import android.util.Pair;
import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public final class C2 implements ProtobufConverter {
    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Dm fromModel(B2 b2) {
        Bm bm;
        Dm dm = new Dm();
        dm.a = new Cm[b2.a.size()];
        for (int i = 0; i < b2.a.size(); i++) {
            Cm cm = new Cm();
            Pair pair = (Pair) b2.a.get(i);
            cm.a = (String) pair.first;
            if (pair.second != null) {
                cm.b = new Bm();
                A2 a2 = (A2) pair.second;
                if (a2 == null) {
                    bm = null;
                } else {
                    Bm bm2 = new Bm();
                    bm2.a = a2.a;
                    bm = bm2;
                }
                cm.b = bm;
            }
            dm.a[i] = cm;
        }
        return dm;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final B2 toModel(Dm dm) {
        ArrayList arrayList = new ArrayList();
        for (Cm cm : dm.a) {
            String str = cm.a;
            Bm bm = cm.b;
            arrayList.add(new Pair(str, bm == null ? null : new A2(bm.a)));
        }
        return new B2(arrayList);
    }
}
