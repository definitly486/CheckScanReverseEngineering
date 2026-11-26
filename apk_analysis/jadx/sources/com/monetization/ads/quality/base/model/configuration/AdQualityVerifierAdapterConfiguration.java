package com.monetization.ads.quality.base.model.configuration;

import defpackage.aa4;
import defpackage.vg;
import yads.m7;

/* JADX INFO: loaded from: classes6.dex */
public final class AdQualityVerifierAdapterConfiguration {
    private final String apiKey;
    private final boolean blockAll;
    private final boolean debug;
    private final long verificationTimeoutInSec;

    public AdQualityVerifierAdapterConfiguration(String str, long j, boolean z, boolean z2) {
        this.apiKey = str;
        this.verificationTimeoutInSec = j;
        this.debug = z;
        this.blockAll = z2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AdQualityVerifierAdapterConfiguration)) {
            return false;
        }
        AdQualityVerifierAdapterConfiguration adQualityVerifierAdapterConfiguration = (AdQualityVerifierAdapterConfiguration) obj;
        return aa4.e(this.apiKey, adQualityVerifierAdapterConfiguration.apiKey) && this.verificationTimeoutInSec == adQualityVerifierAdapterConfiguration.verificationTimeoutInSec && this.debug == adQualityVerifierAdapterConfiguration.debug && this.blockAll == adQualityVerifierAdapterConfiguration.blockAll;
    }

    public final long getVerificationTimeoutInSec() {
        return this.verificationTimeoutInSec;
    }

    public int hashCode() {
        return Boolean.hashCode(this.blockAll) + m7.a(vg.b(this.apiKey.hashCode() * 31, 31, this.verificationTimeoutInSec), 31, this.debug);
    }

    public String toString() {
        return "AdQualityVerifierAdapterConfiguration(apiKey=" + this.apiKey + ", verificationTimeoutInSec=" + this.verificationTimeoutInSec + ", debug=" + this.debug + ", blockAll=" + this.blockAll + ")";
    }
}
