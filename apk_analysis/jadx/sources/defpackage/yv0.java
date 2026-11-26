package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class yv0 {
    public final int a;

    public yv0(int i) {
        this.a = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof yv0) && this.a == ((yv0) obj).a;
    }

    public final int hashCode() {
        return Integer.hashCode(this.a);
    }

    public final String toString() {
        return kv2.b(this.a, "ButtonMorePromocodes(promocodesLeft=", ")");
    }
}
