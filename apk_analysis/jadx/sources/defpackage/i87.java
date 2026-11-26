package defpackage;

import java.net.InetSocketAddress;
import java.net.Proxy;

/* JADX INFO: loaded from: classes5.dex */
public final class i87 {
    public final l9 a;
    public final Proxy b;
    public final InetSocketAddress c;

    public i87(l9 l9Var, Proxy proxy, InetSocketAddress inetSocketAddress) {
        inetSocketAddress.getClass();
        this.a = l9Var;
        this.b = proxy;
        this.c = inetSocketAddress;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof i87)) {
            return false;
        }
        i87 i87Var = (i87) obj;
        return i87Var.a.equals(this.a) && i87Var.b.equals(this.b) && aa4.e(i87Var.c, this.c);
    }

    public final int hashCode() {
        return this.c.hashCode() + ((this.b.hashCode() + ((this.a.hashCode() + 527) * 31)) * 31);
    }

    public final String toString() {
        return "Route{" + this.c + '}';
    }
}
