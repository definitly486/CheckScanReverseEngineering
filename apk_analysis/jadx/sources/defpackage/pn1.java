package defpackage;

import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public final class pn1 implements zo7<Object> {
    public final /* synthetic */ Iterable a;

    public pn1(Iterable iterable) {
        this.a = iterable;
    }

    @Override // defpackage.zo7
    public final Iterator<Object> iterator() {
        return this.a.iterator();
    }
}
