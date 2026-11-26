package org.conscrypt.metrics;

/* JADX INFO: loaded from: classes5.dex */
public enum CertificateTransparencyVerificationReason {
    UNKNOWN(0),
    APP_OPT_IN(3),
    DOMAIN_OPT_IN(4);

    final int id;

    CertificateTransparencyVerificationReason(int i) {
        this.id = i;
    }

    public int getId() {
        return this.id;
    }
}
