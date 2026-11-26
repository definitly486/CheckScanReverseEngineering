package defpackage;

import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public final class wr implements Iterable<Double>, re4 {
    public final /* synthetic */ double[] b;

    public wr(double[] dArr) {
        this.b = dArr;
    }

    @Override // java.lang.Iterable
    public final Iterator<Double> iterator() {
        return new gr(this.b);
    }
}
