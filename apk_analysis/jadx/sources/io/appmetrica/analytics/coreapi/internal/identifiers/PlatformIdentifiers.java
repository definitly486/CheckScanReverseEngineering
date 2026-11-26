package io.appmetrica.analytics.coreapi.internal.identifiers;

import defpackage.aa4;

/* JADX INFO: loaded from: classes5.dex */
public final class PlatformIdentifiers {
    private final AdvertisingIdsProvider a;
    private final AppSetIdProvider b;

    public PlatformIdentifiers(AdvertisingIdsProvider advertisingIdsProvider, AppSetIdProvider appSetIdProvider) {
        this.a = advertisingIdsProvider;
        this.b = appSetIdProvider;
    }

    public static /* synthetic */ PlatformIdentifiers copy$default(PlatformIdentifiers platformIdentifiers, AdvertisingIdsProvider advertisingIdsProvider, AppSetIdProvider appSetIdProvider, int i, Object obj) {
        if ((i & 1) != 0) {
            advertisingIdsProvider = platformIdentifiers.a;
        }
        if ((i & 2) != 0) {
            appSetIdProvider = platformIdentifiers.b;
        }
        return platformIdentifiers.copy(advertisingIdsProvider, appSetIdProvider);
    }

    public final AdvertisingIdsProvider component1() {
        return this.a;
    }

    public final AppSetIdProvider component2() {
        return this.b;
    }

    public final PlatformIdentifiers copy(AdvertisingIdsProvider advertisingIdsProvider, AppSetIdProvider appSetIdProvider) {
        return new PlatformIdentifiers(advertisingIdsProvider, appSetIdProvider);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PlatformIdentifiers)) {
            return false;
        }
        PlatformIdentifiers platformIdentifiers = (PlatformIdentifiers) obj;
        return aa4.e(this.a, platformIdentifiers.a) && aa4.e(this.b, platformIdentifiers.b);
    }

    public final AdvertisingIdsProvider getAdvIdentifiersProvider() {
        return this.a;
    }

    public final AppSetIdProvider getAppSetIdProvider() {
        return this.b;
    }

    public int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public String toString() {
        return "PlatformIdentifiers(advIdentifiersProvider=" + this.a + ", appSetIdProvider=" + this.b + ')';
    }
}
