package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class ba8 implements kv6 {
    public final String a;

    public ba8(String str) {
        this.a = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ba8) && this.a.equals(((ba8) obj).a);
    }

    @Override // defpackage.kv6
    public final String getValue() {
        return this.a;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return this.a;
    }
}
