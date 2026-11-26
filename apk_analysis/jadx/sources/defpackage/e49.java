package defpackage;

import java.net.URL;

/* JADX INFO: loaded from: classes.dex */
public final class e49 {
    public final URL a;
    public final int b;
    public final String c;

    public e49(URL url, int i, String str) {
        this.a = url;
        this.b = i;
        this.c = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e49)) {
            return false;
        }
        e49 e49Var = (e49) obj;
        return this.a.equals(e49Var.a) && this.b == e49Var.b && this.c.equals(e49Var.c);
    }

    public final int hashCode() {
        return this.c.hashCode() + ej0.b(this.b, this.a.hashCode() * 31, 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("NetworkRequestResult(requestUrl=");
        sb.append(this.a);
        sb.append(", responseCode=");
        sb.append(this.b);
        sb.append(", responseBody=");
        return xp.e(sb, this.c, ')');
    }
}
