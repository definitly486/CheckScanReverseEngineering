package com.google.android.gms.common.data;

import com.google.android.gms.common.internal.Preconditions;
import defpackage.ag;
import defpackage.ah;
import defpackage.kh;

/* JADX INFO: loaded from: classes4.dex */
public class SingleRefDataBufferIterator<T> extends DataBufferIterator<T> {
    public Object d;

    public SingleRefDataBufferIterator(DataBuffer dataBuffer) {
        super(dataBuffer);
    }

    @Override // com.google.android.gms.common.data.DataBufferIterator, java.util.Iterator
    public final Object next() {
        boolean zHasNext = hasNext();
        int i = this.c;
        if (!zHasNext) {
            ag.g(ag.d(new StringBuilder(String.valueOf(i).length() + 35), "Cannot advance the iterator beyond ", i));
            return null;
        }
        int i2 = i + 1;
        this.c = i2;
        if (i2 == 0) {
            Object objCheckNotNull = Preconditions.checkNotNull(this.b.get(0));
            this.d = objCheckNotNull;
            if (!(objCheckNotNull instanceof DataBufferRef)) {
                String strValueOf = String.valueOf(objCheckNotNull.getClass());
                ah.f(kh.c(new StringBuilder(strValueOf.length() + 44), "DataBuffer reference of type ", strValueOf, " is not movable"));
                return null;
            }
        } else {
            DataBufferRef dataBufferRef = (DataBufferRef) Preconditions.checkNotNull(this.d);
            int i3 = this.c;
            DataHolder dataHolder = dataBufferRef.a;
            Preconditions.checkState(i3 >= 0 && i3 < dataHolder.getCount());
            dataBufferRef.b = i3;
            dataBufferRef.c = dataHolder.getWindowIndex(i3);
        }
        return this.d;
    }
}
