package com.google.android.gms.common.data;

import com.google.android.gms.common.internal.Preconditions;
import defpackage.ag;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public class DataBufferIterator<T> implements Iterator<T> {
    public final DataBuffer b;
    public int c = -1;

    public DataBufferIterator(DataBuffer dataBuffer) {
        this.b = (DataBuffer) Preconditions.checkNotNull(dataBuffer);
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.c < this.b.getCount() + (-1);
    }

    @Override // java.util.Iterator
    public Object next() {
        if (hasNext()) {
            int i = this.c + 1;
            this.c = i;
            return this.b.get(i);
        }
        int i2 = this.c;
        ag.g(ag.d(new StringBuilder(String.valueOf(i2).length() + 35), "Cannot advance the iterator beyond ", i2));
        return null;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Cannot remove elements from a DataBufferIterator");
    }
}
