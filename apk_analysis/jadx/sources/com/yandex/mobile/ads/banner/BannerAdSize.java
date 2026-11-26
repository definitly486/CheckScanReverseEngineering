package com.yandex.mobile.ads.banner;

import defpackage.aa4;
import defpackage.jh2;
import yads.n05;
import yads.sl5;

/* JADX INFO: loaded from: classes5.dex */
public final class BannerAdSize extends n05 {
    public static final a a = new a(null);
    private final sl5 b;

    public static final class a {
        public a(jh2 jh2Var) {
        }
    }

    public BannerAdSize(sl5 sl5Var) {
        this.b = sl5Var;
    }

    public final sl5 a() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !BannerAdSize.class.equals(obj.getClass())) {
            return false;
        }
        return aa4.e(this.b, ((BannerAdSize) obj).b);
    }

    public int hashCode() {
        return this.b.hashCode();
    }

    public String toString() {
        return this.b.toString();
    }
}
