package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.networktasks.internal.RetryPolicyConfig;
import java.util.List;
import java.util.Map;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.vm, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1341vm {
    public final Map A;
    public final O9 B;
    public final String a;
    public final String b;
    public final C1441zm c;
    public final String d;
    public final List e;
    public final List f;
    public final List g;
    public final Map h;
    public final String i;
    public final String j;
    public final String k;
    public final String l;
    public final String m;
    public final C1423z4 n;
    public final long o;
    public final boolean p;
    public final boolean q;
    public final String r;
    public final He s;
    public final RetryPolicyConfig t;
    public final long u;
    public final long v;
    public final boolean w;
    public final C1194q3 x;
    public final B2 y;
    public final Sm z;

    public C1341vm(String str, String str2, C1441zm c1441zm) {
        this.a = str;
        this.b = str2;
        this.c = c1441zm;
        this.d = c1441zm.a;
        this.e = c1441zm.b;
        this.f = c1441zm.f;
        this.g = c1441zm.g;
        this.h = c1441zm.i;
        this.i = c1441zm.c;
        this.j = c1441zm.d;
        this.k = c1441zm.j;
        this.l = c1441zm.k;
        this.m = c1441zm.l;
        this.n = c1441zm.m;
        this.o = c1441zm.n;
        this.p = c1441zm.o;
        this.q = c1441zm.p;
        this.r = c1441zm.q;
        this.s = c1441zm.s;
        this.t = c1441zm.t;
        this.u = c1441zm.u;
        this.v = c1441zm.v;
        this.w = c1441zm.w;
        this.x = c1441zm.x;
        this.y = c1441zm.y;
        this.z = c1441zm.z;
        this.A = c1441zm.A;
        this.B = c1441zm.B;
    }

    public final String a() {
        return this.a;
    }

    public final String b() {
        return this.b;
    }

    public final String c() {
        return this.d;
    }

    public final String toString() {
        return "StartupState(deviceId=" + this.a + ", deviceIdHash=" + this.b + ", startupStateModel=" + this.c + ')';
    }
}
