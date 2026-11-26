package com.yandex.mobile.ads.common;

import defpackage.aa4;
import defpackage.jh2;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class AdRequest {
    private final String a;
    private final Map c;
    private final String d;
    private final AdTheme e;

    /* JADX INFO: loaded from: classes5.dex */
    public static final class Builder {
        private final String a;
        private Map c;
        private String d;
        private AdTheme e;

        public Builder(String str) {
            this.a = str;
        }

        public final AdRequest build() {
            return new AdRequest(this.a, null, this.c, this.d, this.e, null);
        }
    }

    public AdRequest(String str, AdTargeting adTargeting, Map map, String str2, AdTheme adTheme, jh2 jh2Var) {
        this.a = str;
        this.c = map;
        this.d = str2;
        this.e = adTheme;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && AdRequest.class.equals(obj.getClass())) {
            AdRequest adRequest = (AdRequest) obj;
            if (aa4.e(this.a, adRequest.a) && aa4.e(this.c, adRequest.c) && aa4.e(this.d, adRequest.d) && this.e == adRequest.e) {
                return true;
            }
        }
        return false;
    }

    public final String getAdUnitId() {
        return this.a;
    }

    public final String getBiddingData() {
        return this.d;
    }

    public final Map<String, String> getParameters() {
        return this.c;
    }

    public final AdTheme getPreferredTheme() {
        return this.e;
    }

    public final AdTargeting getTargeting() {
        return null;
    }

    public int hashCode() {
        int iHashCode = this.a.hashCode() * 961;
        Map map = this.c;
        int iHashCode2 = (iHashCode + (map != null ? map.hashCode() : 0)) * 31;
        String str = this.d;
        int iHashCode3 = (iHashCode2 + (str != null ? str.hashCode() : 0)) * 31;
        AdTheme adTheme = this.e;
        return iHashCode3 + (adTheme != null ? adTheme.hashCode() : 0);
    }
}
