package com.google.android.gms.common.signatureverification;

/* JADX INFO: loaded from: classes4.dex */
public final class zzd {
    public static SignatureVerificationConfiguration a;

    public static synchronized void zza(SignatureVerificationConfiguration signatureVerificationConfiguration) {
        if (a != null) {
            throw new IllegalStateException("Redundantly setting SignatureVerificationConfiguration");
        }
        a = signatureVerificationConfiguration;
    }
}
