package com.android.billingclient.api;

import defpackage.fg;

/* JADX INFO: loaded from: classes3.dex */
public final class BillingProgramInformationDialogParams {
    private final int billingProgram;
    private final String externalTransactionToken;

    private BillingProgramInformationDialogParams(Builder builder) {
        this.billingProgram = builder.zza;
        this.externalTransactionToken = builder.zzb;
    }

    public static Builder newBuilder() {
        return new Builder(null);
    }

    public int getBillingProgram() {
        return this.billingProgram;
    }

    public String getExternalTransactionToken() {
        return this.externalTransactionToken;
    }

    public static final class Builder {
        private int zza;
        private String zzb;

        public /* synthetic */ Builder(zzde zzdeVar) {
        }

        public BillingProgramInformationDialogParams build() {
            int i = this.zza;
            if (i == 0) {
                fg.c("Billing program must be set.");
                return null;
            }
            if (i != 5) {
                fg.c("The requested billing program is not supported for the billing program information dialog API.");
                return null;
            }
            if (this.zzb != null) {
                return new BillingProgramInformationDialogParams(this);
            }
            fg.c("External transaction token must be set.");
            return null;
        }

        public Builder setBillingProgram(int i) {
            this.zza = i;
            return this;
        }

        public Builder setExternalTransactionToken(String str) {
            this.zzb = str;
            return this;
        }

        private Builder() {
            throw null;
        }
    }
}
