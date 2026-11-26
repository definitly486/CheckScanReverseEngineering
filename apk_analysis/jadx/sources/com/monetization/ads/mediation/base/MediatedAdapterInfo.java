package com.monetization.ads.mediation.base;

import defpackage.jh2;

/* JADX INFO: loaded from: classes6.dex */
public final class MediatedAdapterInfo {
    private final String a;
    private final String b;
    private final String c;

    /* JADX INFO: loaded from: classes4.dex */
    public static final class Builder {
        private String a;
        private String b;
        private String c;

        public final MediatedAdapterInfo build() {
            return new MediatedAdapterInfo(this.a, this.b, this.c, null);
        }

        public final Builder setAdapterVersion(String str) {
            this.a = str;
            return this;
        }

        public final Builder setNetworkName(String str) {
            this.b = str;
            return this;
        }

        public final Builder setNetworkSdkVersion(String str) {
            this.c = str;
            return this;
        }
    }

    private MediatedAdapterInfo(String str, String str2, String str3) {
        this.a = str;
        this.b = str2;
        this.c = str3;
    }

    public final String getAdapterVersion() {
        return this.a;
    }

    public final String getNetworkName() {
        return this.b;
    }

    public final String getNetworkSdkVersion() {
        return this.c;
    }

    public /* synthetic */ MediatedAdapterInfo(String str, String str2, String str3, jh2 jh2Var) {
        this(str, str2, str3);
    }
}
