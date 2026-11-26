package io.appmetrica.analytics.networkapi;

import defpackage.jh2;
import defpackage.xp;

/* JADX INFO: loaded from: classes5.dex */
public final class NetworkCallMetrics {
    private final Long a;
    private final Long b;
    private final Long c;
    private final Long d;
    private final Long e;
    private final boolean f;
    private final String g;

    public static final class Builder {
        private Long a;
        private Long b;
        private Long c;
        private Long d;
        private Long e;
        private boolean f;
        private String g;

        public final NetworkCallMetrics build() {
            return new NetworkCallMetrics(this.a, this.b, this.c, this.d, this.e, this.f, this.g, null);
        }

        public final Builder withConnectionReused(boolean z) {
            this.f = z;
            return this;
        }

        public final Builder withDnsLookup(Long l) {
            this.a = l;
            return this;
        }

        public final Builder withProtocol(String str) {
            this.g = str;
            return this;
        }

        public final Builder withResponse(Long l) {
            this.e = l;
            return this;
        }

        public final Builder withTcpConnect(Long l) {
            this.b = l;
            return this;
        }

        public final Builder withTimeToFirstByte(Long l) {
            this.d = l;
            return this;
        }

        public final Builder withTlsHandshake(Long l) {
            this.c = l;
            return this;
        }
    }

    private NetworkCallMetrics(Long l, Long l2, Long l3, Long l4, Long l5, boolean z, String str) {
        this.a = l;
        this.b = l2;
        this.c = l3;
        this.d = l4;
        this.e = l5;
        this.f = z;
        this.g = str;
    }

    public final boolean getConnectionReused() {
        return this.f;
    }

    public final Long getDnsLookup() {
        return this.a;
    }

    public final String getProtocol() {
        return this.g;
    }

    public final Long getResponse() {
        return this.e;
    }

    public final Long getTcpConnect() {
        return this.b;
    }

    public final Long getTimeToFirstByte() {
        return this.d;
    }

    public final Long getTlsHandshake() {
        return this.c;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("NetworkCallMetrics(dnsLookup=");
        sb.append(this.a);
        sb.append(", tcpConnect=");
        sb.append(this.b);
        sb.append(", tlsHandshake=");
        sb.append(this.c);
        sb.append(", timeToFirstByte=");
        sb.append(this.d);
        sb.append(", response=");
        sb.append(this.e);
        sb.append(", connectionReused=");
        sb.append(this.f);
        sb.append(", protocol=");
        return xp.e(sb, this.g, ')');
    }

    public /* synthetic */ NetworkCallMetrics(Long l, Long l2, Long l3, Long l4, Long l5, boolean z, String str, jh2 jh2Var) {
        this(l, l2, l3, l4, l5, z, str);
    }
}
