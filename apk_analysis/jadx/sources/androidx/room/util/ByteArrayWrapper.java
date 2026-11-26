package androidx.room.util;

import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
public final class ByteArrayWrapper {
    public final byte[] array;

    public ByteArrayWrapper(byte[] bArr) {
        bArr.getClass();
        this.array = bArr;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ByteArrayWrapper) {
            return Arrays.equals(this.array, ((ByteArrayWrapper) obj).array);
        }
        return false;
    }

    public int hashCode() {
        return Arrays.hashCode(this.array);
    }
}
