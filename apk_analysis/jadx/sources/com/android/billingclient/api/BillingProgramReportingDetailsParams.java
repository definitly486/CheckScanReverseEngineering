package com.android.billingclient.api;

import defpackage.fg;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes3.dex */
public final class BillingProgramReportingDetailsParams {
    private final int zza;
    private final int zzb;

    @Retention(RetentionPolicy.SOURCE)
    public @interface DeveloperBillingType {
        public static final int DEVELOPER_BILLING_TYPE_UNSPECIFIED = 0;
        public static final int EXTERNAL_LINK = 2;
        public static final int IN_APP = 1;
    }

    public /* synthetic */ BillingProgramReportingDetailsParams(Builder builder, zzdf zzdfVar) {
        this.zza = builder.zza;
        this.zzb = builder.zzb;
    }

    public static Builder newBuilder() {
        return new Builder(null);
    }

    public int getBillingProgram() {
        return this.zza;
    }

    public int getDeveloperBillingType() {
        return this.zzb;
    }

    public static final class Builder {
        private int zza = 0;
        private int zzb = 0;

        private Builder() {
        }

        public BillingProgramReportingDetailsParams build() {
            int i = this.zza;
            if (i == 0) {
                fg.c("Billing program is not specified.");
                return null;
            }
            if (i != 5 || this.zzb != 0) {
                return new BillingProgramReportingDetailsParams(this, null);
            }
            fg.c("Developer billing type must be specified for billing choice.");
            return null;
        }

        public Builder setBillingProgram(int i) {
            this.zza = i;
            return this;
        }

        public Builder setDeveloperBillingType(int i) {
            this.zzb = i;
            return this;
        }

        public /* synthetic */ Builder(zzdf zzdfVar) {
        }
    }
}
