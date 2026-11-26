package io.appmetrica.analytics.impl;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public final class N4 extends Tf {
    public final M4 a;

    public N4(I4 i4) {
        this.a = new M4(i4);
    }

    @Override // io.appmetrica.analytics.impl.Tf
    public final AbstractC0993i9 a(int i) {
        ArrayList arrayList = new ArrayList();
        int iOrdinal = EnumC1176pb.a(i).ordinal();
        if (iOrdinal == 12) {
            arrayList.add(this.a.a);
        } else if (iOrdinal == 14) {
            arrayList.add(this.a.b);
        } else if (iOrdinal == 34) {
            arrayList.add(this.a.c);
        }
        return new C0967h9(arrayList);
    }
}
