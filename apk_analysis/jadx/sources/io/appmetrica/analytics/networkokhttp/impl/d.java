package io.appmetrica.analytics.networkokhttp.impl;

import defpackage.b37;
import defpackage.lu3;
import defpackage.lw1;
import defpackage.ts6;
import io.appmetrica.analytics.coreutils.internal.time.TimeProvider;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class d extends okhttp3.b {
    public final TimeProvider a;
    public long b;
    public long c;
    public long d;
    public long e;
    public long f;
    public long g;
    public long h;
    public long i;
    public long j;
    public String k;
    public boolean l;

    public d(TimeProvider timeProvider) {
        this.a = timeProvider;
    }

    public static Long a(long j, long j2) {
        if (j <= 0 || j2 <= 0) {
            return null;
        }
        return Long.valueOf(j2 - j);
    }

    @Override // okhttp3.b
    public final void callFailed(okhttp3.a aVar, IOException iOException) {
        long jCurrentTimeMillis = this.a.currentTimeMillis();
        if (this.b > 0 && this.c == 0) {
            this.c = jCurrentTimeMillis;
        }
        if (this.d > 0 && this.e == 0) {
            this.e = jCurrentTimeMillis;
        }
        if (this.f > 0 && this.g == 0) {
            this.g = jCurrentTimeMillis;
        }
        if (this.i <= 0 || this.j != 0) {
            return;
        }
        this.j = jCurrentTimeMillis;
    }

    @Override // okhttp3.b
    public final void connectEnd(okhttp3.a aVar, InetSocketAddress inetSocketAddress, Proxy proxy, ts6 ts6Var) {
        this.e = this.a.currentTimeMillis();
    }

    @Override // okhttp3.b
    public final void connectStart(okhttp3.a aVar, InetSocketAddress inetSocketAddress, Proxy proxy) {
        this.d = this.a.currentTimeMillis();
    }

    @Override // okhttp3.b
    public final void connectionAcquired(okhttp3.a aVar, lw1 lw1Var) {
        this.l = this.d == 0;
        this.k = lw1Var.a().toString();
    }

    @Override // okhttp3.b
    public final void dnsEnd(okhttp3.a aVar, String str, List list) {
        this.c = this.a.currentTimeMillis();
    }

    @Override // okhttp3.b
    public final void dnsStart(okhttp3.a aVar, String str) {
        this.b = this.a.currentTimeMillis();
    }

    @Override // okhttp3.b
    public final void requestHeadersEnd(okhttp3.a aVar, b37 b37Var) {
        this.h = this.a.currentTimeMillis();
    }

    @Override // okhttp3.b
    public final void responseBodyEnd(okhttp3.a aVar, long j) {
        this.j = this.a.currentTimeMillis();
    }

    @Override // okhttp3.b
    public final void responseHeadersStart(okhttp3.a aVar) {
        this.i = this.a.currentTimeMillis();
    }

    @Override // okhttp3.b
    public final void secureConnectEnd(okhttp3.a aVar, lu3 lu3Var) {
        this.g = this.a.currentTimeMillis();
    }

    @Override // okhttp3.b
    public final void secureConnectStart(okhttp3.a aVar) {
        this.f = this.a.currentTimeMillis();
    }
}
