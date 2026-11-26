package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;
import io.appmetrica.analytics.networktasks.internal.RetryPolicyConfig;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.wm, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1366wm implements ProtobufConverter {
    public final Ie a = new Ie();
    public final C1304ua b = new C1304ua();
    public final Xm c = new Xm();
    public final C1245s3 d = new C1245s3();
    public final C2 e = new C2();
    public final K6 f = new K6();
    public final Tm g = new Tm();
    public final Bd h = new Bd();
    public final P9 i = new P9();

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Mm fromModel(C1441zm c1441zm) {
        Mm mm = new Mm();
        mm.s = c1441zm.u;
        mm.t = c1441zm.v;
        String str = c1441zm.a;
        if (str != null) {
            mm.a = str;
        }
        List list = c1441zm.f;
        if (list != null) {
            mm.f = (String[]) list.toArray(new String[list.size()]);
        }
        List list2 = c1441zm.g;
        if (list2 != null) {
            mm.g = (String[]) list2.toArray(new String[list2.size()]);
        }
        List list3 = c1441zm.b;
        if (list3 != null) {
            mm.c = (String[]) list3.toArray(new String[list3.size()]);
        }
        List list4 = c1441zm.h;
        if (list4 != null) {
            mm.o = (String[]) list4.toArray(new String[list4.size()]);
        }
        Map<String, ? extends List<String>> map = c1441zm.i;
        if (map != null) {
            mm.h = this.f.fromModel(map);
        }
        He he = c1441zm.s;
        if (he != null) {
            mm.v = this.a.fromModel(he);
        }
        String str2 = c1441zm.j;
        if (str2 != null) {
            mm.j = str2;
        }
        String str3 = c1441zm.c;
        if (str3 != null) {
            mm.d = str3;
        }
        String str4 = c1441zm.d;
        if (str4 != null) {
            mm.e = str4;
        }
        String str5 = c1441zm.e;
        if (str5 != null) {
            mm.r = str5;
        }
        mm.i = this.b.fromModel(c1441zm.m);
        String str6 = c1441zm.k;
        if (str6 != null) {
            mm.k = str6;
        }
        String str7 = c1441zm.l;
        if (str7 != null) {
            mm.l = str7;
        }
        mm.m = c1441zm.p;
        mm.b = c1441zm.n;
        mm.q = c1441zm.o;
        RetryPolicyConfig retryPolicyConfig = c1441zm.t;
        mm.w = retryPolicyConfig.maxIntervalSeconds;
        mm.x = retryPolicyConfig.exponentialMultiplier;
        String str8 = c1441zm.q;
        if (str8 != null) {
            mm.n = str8;
        }
        Wm wm = c1441zm.r;
        if (wm != null) {
            this.c.getClass();
            Lm lm = new Lm();
            lm.a = wm.a;
            mm.p = lm;
        }
        mm.u = c1441zm.w;
        C1194q3 c1194q3 = c1441zm.x;
        if (c1194q3 != null) {
            this.d.getClass();
            Em em = new Em();
            em.a = c1194q3.a;
            mm.y = em;
        }
        B2 b2 = c1441zm.y;
        if (b2 != null) {
            mm.z = this.e.fromModel(b2);
        }
        mm.A = this.g.fromModel(c1441zm.z);
        mm.B = this.h.fromModel(c1441zm.A);
        mm.C = this.i.fromModel(c1441zm.B);
        return mm;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final C1441zm toModel(Mm mm) {
        C1416ym c1416ym = new C1416ym(this.b.toModel(mm.i));
        c1416ym.a = mm.a;
        c1416ym.j = mm.j;
        c1416ym.c = mm.d;
        c1416ym.b = Arrays.asList(mm.c);
        c1416ym.g = Arrays.asList(mm.g);
        c1416ym.f = Arrays.asList(mm.f);
        c1416ym.d = mm.e;
        c1416ym.e = mm.r;
        c1416ym.h = Arrays.asList(mm.o);
        c1416ym.k = mm.k;
        c1416ym.l = mm.l;
        c1416ym.q = mm.m;
        c1416ym.o = mm.b;
        c1416ym.p = mm.q;
        c1416ym.t = mm.s;
        c1416ym.u = mm.t;
        c1416ym.r = mm.n;
        c1416ym.v = mm.u;
        c1416ym.w = new RetryPolicyConfig(mm.w, mm.x);
        c1416ym.i = this.f.toModel(mm.h);
        Jm jm = mm.v;
        if (jm != null) {
            this.a.getClass();
            c1416ym.n = new He(jm.a, jm.b);
        }
        Lm lm = mm.p;
        if (lm != null) {
            this.c.getClass();
            c1416ym.s = new Wm(lm.a);
        }
        Em em = mm.y;
        if (em != null) {
            this.d.getClass();
            c1416ym.x = new C1194q3(em.a);
        }
        Dm dm = mm.z;
        if (dm != null) {
            c1416ym.y = this.e.toModel(dm);
        }
        Km km = mm.A;
        if (km != null) {
            this.g.getClass();
            c1416ym.z = new Sm(km.a);
        }
        c1416ym.A = this.h.toModel(mm.B);
        Gm gm = mm.C;
        if (gm != null) {
            this.i.getClass();
            c1416ym.B = new O9(gm.a);
        }
        return new C1441zm(c1416ym);
    }
}
