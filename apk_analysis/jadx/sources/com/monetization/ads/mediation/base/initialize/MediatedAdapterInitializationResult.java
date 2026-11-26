package com.monetization.ads.mediation.base.initialize;

/* JADX INFO: loaded from: classes4.dex */
public interface MediatedAdapterInitializationResult {

    /* JADX INFO: loaded from: classes6.dex */
    public static final class Failure implements MediatedAdapterInitializationResult {
        public final int getErrorCode() {
            throw null;
        }

        public final String getErrorMessage() {
            throw null;
        }
    }
}
