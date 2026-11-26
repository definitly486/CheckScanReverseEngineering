package defpackage;

import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public final class ur implements Iterable<Long>, re4 {
    public final /* synthetic */ long[] b;

    public ur(long[] jArr) {
        this.b = jArr;
    }

    @Override // java.lang.Iterable
    public final Iterator<Long> iterator() {
        return new or(this.b);
    }
}
