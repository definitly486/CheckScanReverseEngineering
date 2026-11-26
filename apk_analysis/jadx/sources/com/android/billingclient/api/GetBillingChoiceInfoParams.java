package com.android.billingclient.api;

import defpackage.fg;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Locale;

/* JADX INFO: loaded from: classes3.dex */
public final class GetBillingChoiceInfoParams {
    private final int billingProgram;
    private final String playBillingChoiceImageLayout;
    private final Locale userLocale;

    @Retention(RetentionPolicy.SOURCE)
    public @interface ImageLayout {
        public static final String RECTANGULAR_FOUR_BY_ONE = "RECTANGULAR_FOUR_BY_ONE";
        public static final String RECTANGULAR_THREE_BY_ONE = "RECTANGULAR_THREE_BY_ONE";
        public static final String RECTANGULAR_TWO_BY_TWO = "RECTANGULAR_TWO_BY_TWO";
    }

    private GetBillingChoiceInfoParams(Builder builder) {
        this.userLocale = builder.zza;
        this.billingProgram = builder.zzb;
        this.playBillingChoiceImageLayout = builder.zzc;
    }

    public static Builder newBuilder() {
        return new Builder(null);
    }

    public int getBillingProgram() {
        return this.billingProgram;
    }

    public String getPlayBillingChoiceImageLayout() {
        return this.playBillingChoiceImageLayout;
    }

    public Locale getUserLocale() {
        return this.userLocale;
    }

    public static final class Builder {
        private Locale zza;
        private int zzb = 0;
        private String zzc;

        private Builder() {
        }

        public GetBillingChoiceInfoParams build() {
            if (this.zzb != 5) {
                fg.c("Only billing choice is allowed for this API.");
                return null;
            }
            if (this.zzc != null) {
                return new GetBillingChoiceInfoParams(this);
            }
            fg.c("Play Billing choice image layout is required.");
            return null;
        }

        public Builder setBillingProgram(int i) {
            this.zzb = i;
            return this;
        }

        public Builder setPlayBillingChoiceImageLayout(String str) {
            this.zzc = str;
            return this;
        }

        public Builder setUserLocale(Locale locale) {
            this.zza = locale;
            return this;
        }

        public /* synthetic */ Builder(zzdw zzdwVar) {
        }
    }
}
