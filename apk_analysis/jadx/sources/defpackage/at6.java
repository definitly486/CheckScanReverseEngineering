package defpackage;

import androidx.webkit.ProxyConfig;
import java.io.IOException;
import java.net.Authenticator;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.MalformedURLException;
import java.net.PasswordAuthentication;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes5.dex */
public final class at6 implements zs6 {
    public static final Logger c = Logger.getLogger(at6.class.getName());
    public static final a d = new a();
    public static final b e = new b();
    public final kd8<ProxySelector> a;
    public final c b;

    public class a implements c {
        @Override // at6.c
        public final PasswordAuthentication a(String str, InetAddress inetAddress, int i) {
            URL url;
            try {
                url = new URL(ProxyConfig.MATCH_HTTPS, str, i, "");
            } catch (MalformedURLException unused) {
                at6.c.log(Level.WARNING, "failed to create URL for Authenticator: {0} {1}", new Object[]{ProxyConfig.MATCH_HTTPS, str});
                url = null;
            }
            return Authenticator.requestPasswordAuthentication(str, inetAddress, i, ProxyConfig.MATCH_HTTPS, "", null, url, Authenticator.RequestorType.PROXY);
        }
    }

    public class b implements kd8<ProxySelector> {
        @Override // defpackage.kd8
        /* JADX INFO: renamed from: get */
        public final ProxySelector get2() {
            return ProxySelector.getDefault();
        }
    }

    public interface c {
        PasswordAuthentication a(String str, InetAddress inetAddress, int i);
    }

    public at6() {
        b bVar = e;
        bVar.getClass();
        this.a = bVar;
        a aVar = d;
        aVar.getClass();
        this.b = aVar;
    }

    @Override // defpackage.zs6
    public final ys6 a(InetSocketAddress inetSocketAddress) throws IOException {
        if (inetSocketAddress != null) {
            Logger logger = c;
            try {
                URI uri = new URI(ProxyConfig.MATCH_HTTPS, null, inetSocketAddress.getHostString(), inetSocketAddress.getPort(), null, null, null);
                ProxySelector proxySelector = this.a.get2();
                if (proxySelector == null) {
                    logger.log(Level.FINE, "proxy selector is null, so continuing without proxy lookup");
                    return null;
                }
                List<Proxy> listSelect = proxySelector.select(uri);
                if (listSelect == null || listSelect.isEmpty()) {
                    StringBuilder sb = new StringBuilder("ProxySelector ");
                    sb.append(proxySelector.getClass().getName());
                    sb.append(" returned ");
                    throw new IOException(me0.d(sb, listSelect == null ? "null" : "an empty list", ", which violates the java.net.ProxySelector#select(URI) contract"));
                }
                if (listSelect.size() > 1) {
                    logger.warning("More than 1 proxy detected, gRPC will select the first one");
                }
                Proxy proxy = listSelect.get(0);
                if (proxy.type() != Proxy.Type.DIRECT) {
                    InetSocketAddress inetSocketAddress2 = (InetSocketAddress) proxy.address();
                    PasswordAuthentication passwordAuthenticationA = this.b.a(inetSocketAddress2.getHostString(), inetSocketAddress2.getAddress(), inetSocketAddress2.getPort());
                    if (inetSocketAddress2.isUnresolved()) {
                        inetSocketAddress2 = new InetSocketAddress(InetAddress.getByName(inetSocketAddress2.getHostName()), inetSocketAddress2.getPort());
                    }
                    int i = xy3.g;
                    Map map = Collections.EMPTY_MAP;
                    if (passwordAuthenticationA == null) {
                        return new xy3(inetSocketAddress2, inetSocketAddress, null, null);
                    }
                    return new xy3(inetSocketAddress2, inetSocketAddress, passwordAuthenticationA.getUserName(), passwordAuthenticationA.getPassword() != null ? new String(passwordAuthenticationA.getPassword()) : null);
                }
            } catch (URISyntaxException e2) {
                logger.log(Level.WARNING, "Failed to construct URI for proxy lookup, proceeding without proxy", (Throwable) e2);
                return null;
            }
        }
        return null;
    }
}
