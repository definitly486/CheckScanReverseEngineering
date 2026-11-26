package com.android.billingclient.api;

import defpackage.fg;

/* JADX INFO: loaded from: classes3.dex */
public final class AcknowledgePurchaseParams {
    private String zza;

    public /* synthetic */ AcknowledgePurchaseParams(zza zzaVar) {
    }

    public static Builder newBuilder() {
        return new Builder(null);
    }

    public String getPurchaseToken() {
        return this.zza;
    }

    public static final class Builder {
        private String zza;

        public /* synthetic */ Builder(zza zzaVar) {
        }

        public AcknowledgePurchaseParams build() {
            String str = this.zza;
            zza zzaVar = null;
            if (str == null) {
                fg.c("Purchase token must be set");
                return null;
            }
            AcknowledgePurchaseParams acknowledgePurchaseParams = new AcknowledgePurchaseParams(zzaVar);
            acknowledgePurchaseParams.zza = str;
            return acknowledgePurchaseParams;
        }

        public Builder setPurchaseToken(String str) {
            this.zza = str;
            return this;
        }

        private Builder() {
            throw null;
        }
    }

    private AcknowledgePurchaseParams() {
        throw null;
    }
}
