package yads;

import defpackage.kv2;

/* JADX INFO: loaded from: classes6.dex */
public final class ux4 {
    public final int a;

    public ux4(int i) {
        this.a = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ux4) && this.a == ((ux4) obj).a;
    }

    public final int hashCode() {
        return Integer.hashCode(Integer.MAX_VALUE) + i96.a(0, Integer.hashCode(this.a) * 31, 31);
    }

    public final String toString() {
        return kv2.b(this.a, "PreCreationModel(capacity=", ", min=0, max=2147483647)");
    }
}
