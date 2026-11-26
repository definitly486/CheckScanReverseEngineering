package io.appmetrica.analytics.networkapi;

import defpackage.jh2;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.SSLSocketFactory;

/* JADX INFO: loaded from: classes5.dex */
public final class NetworkClientSettings {
    private final Integer a;
    private final Integer b;
    private final Long c;
    private final SSLSocketFactory d;
    private final Boolean e;
    private final Boolean f;
    private final int g;
    private final Boolean h;

    public static final class Builder {
        private Integer a;
        private Integer b;
        private Long c;
        private SSLSocketFactory d;
        private Boolean e;
        private Boolean f;
        private int g = Integer.MAX_VALUE;
        private Boolean h;

        public final NetworkClientSettings build() {
            return new NetworkClientSettings(this.a, this.b, this.c, this.d, this.e, this.f, this.g, this.h, null);
        }

        public final Builder withCallTimeout(long j, TimeUnit timeUnit) {
            this.c = Long.valueOf(timeUnit.toMillis(j));
            return this;
        }

        public final Builder withCollectMetrics(boolean z) {
            this.h = Boolean.valueOf(z);
            return this;
        }

        public final Builder withConnectTimeout(int i) {
            this.a = Integer.valueOf(i);
            return this;
        }

        public final Builder withInstanceFollowRedirects(boolean z) {
            this.f = Boolean.valueOf(z);
            return this;
        }

        public final Builder withMaxResponseSize(int i) {
            this.g = i;
            return this;
        }

        public final Builder withReadTimeout(int i) {
            this.b = Integer.valueOf(i);
            return this;
        }

        public final Builder withSslSocketFactory(SSLSocketFactory sSLSocketFactory) {
            this.d = sSLSocketFactory;
            return this;
        }

        public final Builder withUseCaches(boolean z) {
            this.e = Boolean.valueOf(z);
            return this;
        }
    }

    private NetworkClientSettings(Integer num, Integer num2, Long l, SSLSocketFactory sSLSocketFactory, Boolean bool, Boolean bool2, int i, Boolean bool3) {
        this.a = num;
        this.b = num2;
        this.c = l;
        this.d = sSLSocketFactory;
        this.e = bool;
        this.f = bool2;
        this.g = i;
        this.h = bool3;
    }

    public final Long getCallTimeout() {
        return this.c;
    }

    public final Boolean getCollectMetrics() {
        return this.h;
    }

    public final Integer getConnectTimeout() {
        return this.a;
    }

    public final Boolean getInstanceFollowRedirects() {
        return this.f;
    }

    public final int getMaxResponseSize() {
        return this.g;
    }

    public final Integer getReadTimeout() {
        return this.b;
    }

    public final SSLSocketFactory getSslSocketFactory() {
        return this.d;
    }

    public final Boolean getUseCaches() {
        return this.e;
    }

    public String toString() {
        return "NetworkClientSettings(connectTimeout=" + this.a + ", readTimeout=" + this.b + ", callTimeout=" + this.c + ", sslSocketFactory=" + this.d + ", useCaches=" + this.e + ", instanceFollowRedirects=" + this.f + ", maxResponseSize=" + this.g + ", collectMetrics=" + this.h + ')';
    }

    public /* synthetic */ NetworkClientSettings(Integer num, Integer num2, Long l, SSLSocketFactory sSLSocketFactory, Boolean bool, Boolean bool2, int i, Boolean bool3, jh2 jh2Var) {
        this(num, num2, l, sSLSocketFactory, bool, bool2, i, bool3);
    }
}
