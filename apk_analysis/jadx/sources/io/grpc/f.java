package io.grpc;

import java.net.SocketAddress;
import javax.net.ssl.SSLSession;

/* JADX INFO: loaded from: classes5.dex */
public final class f {
    public static final a.b<SocketAddress> a = new a.b<>("io.grpc.Grpc.TRANSPORT_ATTR_REMOTE_ADDR");
    public static final a.b<SocketAddress> b = new a.b<>("io.grpc.Grpc.TRANSPORT_ATTR_LOCAL_ADDR");
    public static final a.b<SSLSession> c = new a.b<>("io.grpc.Grpc.TRANSPORT_ATTR_SSL_SESSION");
}
