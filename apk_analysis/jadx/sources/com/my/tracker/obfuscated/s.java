package com.my.tracker.obfuscated;

import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;

/* JADX INFO: loaded from: classes4.dex */
public final class s {
    public final X509TrustManager a;
    public final SSLContext b;
    public final TrustManagerFactory c;

    public s(X509TrustManager x509TrustManager, SSLContext sSLContext, TrustManagerFactory trustManagerFactory) {
        this.a = x509TrustManager;
        this.b = sSLContext;
        this.c = trustManagerFactory;
    }
}
