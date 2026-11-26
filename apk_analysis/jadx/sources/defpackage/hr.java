package defpackage;

import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public final class hr implements Iterator, re4 {
    public final float[] b;
    public int c;

    public hr(float[] fArr) {
        this.b = fArr;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.c < this.b.length;
    }

    @Override // java.util.Iterator
    public final Object next() {
        float f;
        try {
            float[] fArr = this.b;
            int i = this.c;
            this.c = i + 1;
            f = fArr[i];
        } catch (ArrayIndexOutOfBoundsException e) {
            this.c--;
            ag.g(e.getMessage());
            f = 0.0f;
        }
        return Float.valueOf(f);
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
