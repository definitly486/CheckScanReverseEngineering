package com.google.android.gms.common;

/* JADX INFO: loaded from: classes4.dex */
public class GooglePlayServicesManifestException extends IllegalStateException {
    public final int b;

    public GooglePlayServicesManifestException(int i, String str) {
        super(str);
        this.b = i;
    }

    public int getActualVersion() {
        return this.b;
    }

    public int getExpectedVersion() {
        return GoogleApiAvailabilityLight.GOOGLE_PLAY_SERVICES_VERSION_CODE;
    }
}
