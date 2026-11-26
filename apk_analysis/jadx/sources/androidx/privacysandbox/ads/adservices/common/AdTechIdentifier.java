package androidx.privacysandbox.ads.adservices.common;

import defpackage.aa4;

/* JADX INFO: loaded from: classes3.dex */
public final class AdTechIdentifier {
    private final String identifier;

    public AdTechIdentifier(String str) {
        str.getClass();
        this.identifier = str;
    }

    public final android.adservices.common.AdTechIdentifier convertToAdServices$ads_adservices_release() {
        android.adservices.common.AdTechIdentifier adTechIdentifierFromString = android.adservices.common.AdTechIdentifier.fromString(this.identifier);
        adTechIdentifierFromString.getClass();
        return adTechIdentifierFromString;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AdTechIdentifier) {
            return aa4.e(this.identifier, ((AdTechIdentifier) obj).identifier);
        }
        return false;
    }

    public final String getIdentifier() {
        return this.identifier;
    }

    public int hashCode() {
        return this.identifier.hashCode();
    }

    public String toString() {
        return String.valueOf(this.identifier);
    }
}
