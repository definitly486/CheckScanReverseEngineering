package defpackage;

import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public final class yh3 extends o0<Iterator<Object>> {
    public final /* synthetic */ Iterable[] d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public yh3(int i, Iterable[] iterableArr) {
        super(i, 0);
        this.d = iterableArr;
    }

    @Override // defpackage.o0
    public final Iterator<Object> a(int i) {
        return this.d[i].iterator();
    }
}
