package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.collection.CollectionUtils;
import io.appmetrica.analytics.networktasks.internal.RetryPolicyConfig;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.zm, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1441zm {
    public final Map A;
    public final O9 B;
    public final String a;
    public final List b;
    public final String c;
    public final String d;
    public final String e;
    public final List f;
    public final List g;
    public final List h;
    public final Map i;
    public final String j;
    public final String k;
    public final String l;
    public final C1423z4 m;
    public final long n;
    public final boolean o;
    public final boolean p;
    public final String q;
    public final Wm r;
    public final He s;
    public final RetryPolicyConfig t;
    public final long u;
    public final long v;
    public final boolean w;
    public final C1194q3 x;
    public final B2 y;
    public final Sm z;

    public C1441zm(C1416ym c1416ym) {
        this.a = c1416ym.a;
        List list = c1416ym.b;
        this.b = list == null ? null : CollectionUtils.unmodifiableListCopy(list);
        this.c = c1416ym.c;
        this.d = c1416ym.d;
        this.e = c1416ym.e;
        List list2 = c1416ym.f;
        this.f = list2 == null ? null : CollectionUtils.unmodifiableListCopy(list2);
        List list3 = c1416ym.g;
        this.g = list3 == null ? null : CollectionUtils.unmodifiableListCopy(list3);
        List list4 = c1416ym.h;
        this.h = list4 == null ? null : CollectionUtils.unmodifiableListCopy(list4);
        Map map = c1416ym.i;
        this.i = map != null ? CollectionUtils.unmodifiableMapCopy(map) : null;
        this.j = c1416ym.j;
        this.k = c1416ym.k;
        this.m = c1416ym.m;
        this.s = c1416ym.n;
        this.n = c1416ym.o;
        this.o = c1416ym.p;
        this.l = c1416ym.l;
        this.p = c1416ym.q;
        this.q = c1416ym.r;
        this.r = c1416ym.s;
        this.u = c1416ym.t;
        this.v = c1416ym.u;
        this.w = c1416ym.v;
        RetryPolicyConfig retryPolicyConfig = c1416ym.w;
        if (retryPolicyConfig == null) {
            Mm mm = new Mm();
            this.t = new RetryPolicyConfig(mm.w, mm.x);
        } else {
            this.t = retryPolicyConfig;
        }
        this.x = c1416ym.x;
        this.y = c1416ym.y;
        this.z = c1416ym.z == null ? new Sm(U7.b.a) : c1416ym.z;
        this.A = c1416ym.A == null ? Collections.EMPTY_MAP : c1416ym.A;
        this.B = c1416ym.B;
    }

    public final C1416ym a(C1423z4 c1423z4) {
        C1416ym c1416ym = new C1416ym(c1423z4);
        c1416ym.a = this.a;
        c1416ym.f = this.f;
        c1416ym.g = this.g;
        c1416ym.j = this.j;
        c1416ym.b = this.b;
        c1416ym.c = this.c;
        c1416ym.d = this.d;
        c1416ym.e = this.e;
        c1416ym.h = this.h;
        c1416ym.i = this.i;
        c1416ym.k = this.k;
        c1416ym.l = this.l;
        c1416ym.q = this.p;
        c1416ym.o = this.n;
        c1416ym.p = this.o;
        c1416ym.r = this.q;
        c1416ym.n = this.s;
        c1416ym.t = this.u;
        c1416ym.u = this.v;
        c1416ym.s = this.r;
        c1416ym.v = this.w;
        c1416ym.w = this.t;
        c1416ym.x = this.x;
        c1416ym.y = this.y;
        c1416ym.z = this.z;
        c1416ym.A = this.A;
        c1416ym.B = this.B;
        return c1416ym;
    }

    public final String toString() {
        return "StartupStateModel{uuid='" + this.a + "', reportUrls=" + this.b + ", getAdUrl='" + this.c + "', reportAdUrl='" + this.d + "', certificateUrl='" + this.e + "', hostUrlsFromStartup=" + this.f + ", hostUrlsFromClient=" + this.g + ", diagnosticUrls=" + this.h + ", customSdkHosts=" + this.i + ", encodedClidsFromResponse='" + this.j + "', lastClientClidsForStartupRequest='" + this.k + "', lastChosenForRequestClids='" + this.l + "', collectingFlags=" + this.m + ", obtainTime=" + this.n + ", hadFirstStartup=" + this.o + ", startupDidNotOverrideClids=" + this.p + ", countryInit='" + this.q + "', statSending=" + this.r + ", permissionsCollectingConfig=" + this.s + ", retryPolicyConfig=" + this.t + ", obtainServerTime=" + this.u + ", firstStartupServerTime=" + this.v + ", outdated=" + this.w + ", cacheControl=" + this.x + ", attributionConfig=" + this.y + ", startupUpdateConfig=" + this.z + ", modulesRemoteConfigs=" + this.A + ", externalAttributionConfig=" + this.B + '}';
    }
}
