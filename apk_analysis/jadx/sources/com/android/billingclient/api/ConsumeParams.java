package com.android.billingclient.api;

import defpackage.fg;

/* JADX INFO: loaded from: classes3.dex */
public final class ConsumeParams {
    private String zza;

    public /* synthetic */ ConsumeParams(zzdi zzdiVar) {
    }

    public static Builder newBuilder() {
        return new Builder(null);
    }

    public String getPurchaseToken() {
        return this.zza;
    }

    public static final class Builder {
        private String zza;

        public /* synthetic */ Builder(zzdi zzdiVar) {
        }

        public ConsumeParams build() {
            String str = this.zza;
            zzdi zzdiVar = null;
            if (str == null) {
                fg.c("Purchase token must be set");
                return null;
            }
            ConsumeParams consumeParams = new ConsumeParams(zzdiVar);
            consumeParams.zza = str;
            return consumeParams;
        }

        public Builder setPurchaseToken(String str) {
            this.zza = str;
            return this;
        }

        private Builder() {
            throw null;
        }
    }

    private ConsumeParams() {
        throw null;
    }
}
