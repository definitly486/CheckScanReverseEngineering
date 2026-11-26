package com.google.android.gms.common.signatureverification;

/* JADX INFO: loaded from: classes4.dex */
public class SignatureVerificationConfigurationProvider {
    public static final SignatureVerificationConfiguration a;

    static {
        SignatureVerificationConfiguration signatureVerificationConfiguration;
        synchronized (zzd.class) {
            try {
                if (zzd.a == null) {
                    zzd.zza(new zzb());
                }
                signatureVerificationConfiguration = zzd.a;
            } catch (Throwable th) {
                throw th;
            }
        }
        a = signatureVerificationConfiguration;
    }

    public static SignatureVerificationConfiguration zza() {
        return a;
    }
}
