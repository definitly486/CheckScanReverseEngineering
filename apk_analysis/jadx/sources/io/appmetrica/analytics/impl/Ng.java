package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.modulesapi.internal.service.RemoteConfigMetaInfo;

/* JADX INFO: loaded from: classes5.dex */
public final class Ng implements RemoteConfigMetaInfo {
    public final long a;
    public final long b;

    public Ng(long j, long j2) {
        this.a = j;
        this.b = j2;
    }

    public static Ng a(Ng ng, long j, long j2, int i, Object obj) {
        if ((i & 1) != 0) {
            j = ng.a;
        }
        if ((i & 2) != 0) {
            j2 = ng.b;
        }
        ng.getClass();
        return new Ng(j, j2);
    }

    public final long b() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Ng)) {
            return false;
        }
        Ng ng = (Ng) obj;
        return this.a == ng.a && this.b == ng.b;
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.service.RemoteConfigMetaInfo
    public final long getFirstSendTime() {
        return this.a;
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.service.RemoteConfigMetaInfo
    public final long getLastUpdateTime() {
        return this.b;
    }

    public final int hashCode() {
        return Long.hashCode(this.b) + (Long.hashCode(this.a) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("RemoteConfigMetaInfoModel(firstSendTime=");
        sb.append(this.a);
        sb.append(", lastUpdateTime=");
        return defpackage.lg.f(sb, this.b, ')');
    }

    public final Ng a(long j, long j2) {
        return new Ng(j, j2);
    }

    public final long a() {
        return this.a;
    }
}
