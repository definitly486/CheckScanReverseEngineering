package androidx.compose.runtime.retain;

import defpackage.vg;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
final class RetainKeys {
    private final Object[] keys;
    private final long positionalKey;
    private final int typeHash;

    public RetainKeys(Object[] objArr, long j, int i) {
        this.keys = objArr;
        this.positionalKey = j;
        this.typeHash = i;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof RetainKeys)) {
            return false;
        }
        RetainKeys retainKeys = (RetainKeys) obj;
        return retainKeys.positionalKey == this.positionalKey && retainKeys.typeHash == this.typeHash && Arrays.equals(retainKeys.keys, this.keys);
    }

    public final long getPositionalKey() {
        return this.positionalKey;
    }

    public final int getTypeHash() {
        return this.typeHash;
    }

    public int hashCode() {
        Object[] objArr = this.keys;
        return Integer.hashCode(this.typeHash) + vg.b((objArr != null ? Arrays.hashCode(objArr) : 0) * 31, 31, this.positionalKey);
    }
}
