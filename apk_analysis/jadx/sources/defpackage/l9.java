package defpackage;

import androidx.webkit.ProxyConfig;
import java.net.ProxySelector;
import java.util.List;
import java.util.Objects;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;

/* JADX INFO: loaded from: classes5.dex */
public final class l9 {
    public final vp2 a;
    public final SocketFactory b;
    public final SSLSocketFactory c;
    public final HostnameVerifier d;
    public final u81 e;
    public final px f;
    public final ProxySelector g;
    public final fz3 h;
    public final List<ts6> i;
    public final List<tw1> j;

    public l9(String str, int i, vp2 vp2Var, SocketFactory socketFactory, SSLSocketFactory sSLSocketFactory, HostnameVerifier hostnameVerifier, u81 u81Var, px pxVar, List list, List list2, ProxySelector proxySelector) {
        str.getClass();
        vp2Var.getClass();
        socketFactory.getClass();
        pxVar.getClass();
        list.getClass();
        list2.getClass();
        proxySelector.getClass();
        this.a = vp2Var;
        this.b = socketFactory;
        this.c = sSLSocketFactory;
        this.d = hostnameVerifier;
        this.e = u81Var;
        this.f = pxVar;
        this.g = proxySelector;
        fz3.a aVar = new fz3.a();
        String str2 = sSLSocketFactory != null ? ProxyConfig.MATCH_HTTPS : ProxyConfig.MATCH_HTTP;
        if (str2.equalsIgnoreCase(ProxyConfig.MATCH_HTTP)) {
            aVar.a = ProxyConfig.MATCH_HTTP;
        } else {
            if (!str2.equalsIgnoreCase(ProxyConfig.MATCH_HTTPS)) {
                fg.c("unexpected scheme: ".concat(str2));
                throw null;
            }
            aVar.a = ProxyConfig.MATCH_HTTPS;
        }
        String strF = xz2.f(fz3.b.c(0, 0, 7, str));
        if (strF == null) {
            fg.c("unexpected host: ".concat(str));
            throw null;
        }
        aVar.d = strF;
        if (1 > i || i >= 65536) {
            c9.f(jh.b(i, "unexpected port: "));
            throw null;
        }
        aVar.e = i;
        this.h = aVar.a();
        this.i = gb9.w(list);
        this.j = gb9.w(list2);
    }

    public final boolean a(l9 l9Var) {
        return this.a.equals(l9Var.a) && this.f.equals(l9Var.f) && this.i.equals(l9Var.i) && this.j.equals(l9Var.j) && aa4.e(this.g, l9Var.g) && aa4.e(this.c, l9Var.c) && aa4.e(this.d, l9Var.d) && aa4.e(this.e, l9Var.e) && this.h.e == l9Var.h.e;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof l9)) {
            return false;
        }
        l9 l9Var = (l9) obj;
        return this.h.equals(l9Var.h) && a(l9Var);
    }

    public final int hashCode() {
        return Objects.hashCode(this.e) + ((Objects.hashCode(this.d) + ((Objects.hashCode(this.c) + ((this.g.hashCode() + e2.b(this.j, e2.b(this.i, (this.f.hashCode() + ((this.a.hashCode() + zg.b(527, 31, this.h.i)) * 31)) * 31, 31), 31)) * 961)) * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Address{");
        fz3 fz3Var = this.h;
        sb.append(fz3Var.d);
        sb.append(':');
        sb.append(fz3Var.e);
        sb.append(", ");
        sb.append("proxySelector=" + this.g);
        sb.append('}');
        return sb.toString();
    }
}
