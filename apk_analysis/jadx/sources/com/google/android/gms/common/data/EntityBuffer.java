package com.google.android.gms.common.data;

/* JADX INFO: loaded from: classes4.dex */
public abstract class EntityBuffer<T> extends AbstractDataBuffer<T> {
    @Override // com.google.android.gms.common.data.AbstractDataBuffer, com.google.android.gms.common.data.DataBuffer
    public final T get(int i) {
        n();
        if (i >= 0) {
            throw null;
        }
        StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 42);
        sb.append("Position ");
        sb.append(i);
        sb.append(" is out of bounds for this buffer");
        throw new IllegalArgumentException(sb.toString());
    }

    @Override // com.google.android.gms.common.data.AbstractDataBuffer, com.google.android.gms.common.data.DataBuffer
    public int getCount() {
        n();
        throw null;
    }

    public abstract Object m();

    public final void n() {
        synchronized (this) {
        }
    }
}
