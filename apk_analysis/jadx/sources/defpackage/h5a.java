package defpackage;

/* JADX INFO: loaded from: classes4.dex */
public final class h5a {
    public final String a;
    public final String b;
    public final long c;

    public h5a(String str, String str2, long j) {
        this.a = str;
        this.b = str2;
        this.c = j;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof h5a)) {
            return false;
        }
        h5a h5aVar = (h5a) obj;
        return this.a.equals(h5aVar.a) && this.b.equals(h5aVar.b) && this.c == h5aVar.c;
    }

    public final int hashCode() {
        return Long.hashCode(this.c) + zg.b(((this.a.hashCode() * 31) - 861391249) * 31, 31, this.b);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("FsaEventDto(phoneSha256=");
        sb.append(this.a);
        sb.append(", platform=android, partner=");
        sb.append(this.b);
        sb.append(", eventTimestamp=");
        return lg.f(sb, this.c, ')');
    }
}
