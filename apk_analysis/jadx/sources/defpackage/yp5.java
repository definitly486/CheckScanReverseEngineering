package defpackage;

import java.io.IOException;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.SocketAddress;
import java.net.URI;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class yp5 extends ProxySelector {
    public static final yp5 a = new yp5();

    @Override // java.net.ProxySelector
    public final void connectFailed(URI uri, SocketAddress socketAddress, IOException iOException) {
    }

    @Override // java.net.ProxySelector
    public final List<Proxy> select(URI uri) {
        if (uri != null) {
            return u96.h(Proxy.NO_PROXY);
        }
        fg.c("uri must not be null");
        return null;
    }
}
