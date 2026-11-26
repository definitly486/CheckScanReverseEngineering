package com.google.android.gms.common.data;

import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes4.dex */
public abstract class DataBufferRef {
    public final DataHolder a;
    public int b;
    public int c;

    public DataBufferRef(DataHolder dataHolder, int i) {
        DataHolder dataHolder2 = (DataHolder) Preconditions.checkNotNull(dataHolder);
        this.a = dataHolder2;
        boolean z = false;
        if (i >= 0 && i < dataHolder2.getCount()) {
            z = true;
        }
        Preconditions.checkState(z);
        this.b = i;
        this.c = dataHolder2.getWindowIndex(i);
    }

    public boolean equals(Object obj) {
        if (obj instanceof DataBufferRef) {
            DataBufferRef dataBufferRef = (DataBufferRef) obj;
            if (Objects.equal(Integer.valueOf(dataBufferRef.b), Integer.valueOf(this.b)) && Objects.equal(Integer.valueOf(dataBufferRef.c), Integer.valueOf(this.c)) && dataBufferRef.a == this.a) {
                return true;
            }
        }
        return false;
    }

    public boolean hasColumn(String str) {
        return this.a.hasColumn(str);
    }

    public int hashCode() {
        return Objects.hashCode(Integer.valueOf(this.b), Integer.valueOf(this.c), this.a);
    }

    public boolean isDataValid() {
        return !this.a.isClosed();
    }
}
