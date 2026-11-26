package defpackage;

import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public final class tr implements Iterable<Integer>, re4 {
    public final /* synthetic */ int[] b;

    public tr(int[] iArr) {
        this.b = iArr;
    }

    @Override // java.lang.Iterable
    public final Iterator<Integer> iterator() {
        return new ir(this.b);
    }
}
