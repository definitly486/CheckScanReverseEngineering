package io.appmetrica.analytics.impl;

import java.util.LinkedList;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.x9, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1378x9 extends Tf {
    public final C1285th a;
    public final C1336vh b;
    public final C0975hh c;

    public C1378x9(C0989i5 c0989i5) {
        this.a = new C1285th(c0989i5);
        this.b = new C1336vh(c0989i5);
        this.c = new C0975hh(c0989i5);
    }

    @Override // io.appmetrica.analytics.impl.Tf
    public final AbstractC0993i9 a(int i) {
        LinkedList linkedList = new LinkedList();
        int iOrdinal = EnumC1176pb.a(i).ordinal();
        if (iOrdinal == 1) {
            linkedList.add(this.a);
        } else if (iOrdinal == 3) {
            linkedList.add(this.c);
        } else if (iOrdinal == 27) {
            linkedList.add(this.b);
            linkedList.add(this.a);
        }
        return new C0967h9(linkedList);
    }
}
