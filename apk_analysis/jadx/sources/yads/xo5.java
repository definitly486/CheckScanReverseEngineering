package yads;

import androidx.collection.SparseArrayCompat;
import java.util.Iterator;

/* JADX INFO: loaded from: classes6.dex */
public final class xo5 implements Iterable, defpackage.re4 {
    public final SparseArrayCompat b;

    public xo5(SparseArrayCompat sparseArrayCompat) {
        this.b = sparseArrayCompat;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new yo5(this.b);
    }
}
