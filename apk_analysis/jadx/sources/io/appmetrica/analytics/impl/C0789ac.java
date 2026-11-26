package io.appmetrica.analytics.impl;

import android.content.Context;
import android.location.Location;
import io.appmetrica.analytics.coreapi.internal.system.PermissionExtractor;
import io.appmetrica.analytics.locationapi.internal.CacheArguments;
import io.appmetrica.analytics.locationapi.internal.LastKnownLocationExtractorProvider;
import io.appmetrica.analytics.locationapi.internal.LastKnownLocationExtractorProviderFactory;
import io.appmetrica.analytics.locationapi.internal.LocationClient;
import io.appmetrica.analytics.locationapi.internal.LocationControllerObserver;
import io.appmetrica.analytics.locationapi.internal.LocationFilter;
import io.appmetrica.analytics.locationapi.internal.LocationProvider;
import io.appmetrica.analytics.locationapi.internal.LocationReceiverProvider;
import io.appmetrica.analytics.locationapi.internal.LocationReceiverProviderFactory;
import io.appmetrica.analytics.modulesapi.internal.service.ModuleLocationSourcesServiceController;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.ac, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C0789ac implements Zb, Am, LocationProvider {
    public final Context a;
    public final InterfaceC0892ec b;
    public final LocationClient c;
    public final Ml d;
    public final Nk e;
    public final LastKnownLocationExtractorProviderFactory f;
    public final LocationReceiverProviderFactory g;

    public C0789ac(Context context, InterfaceC0892ec interfaceC0892ec, LocationClient locationClient) {
        this.a = context;
        this.b = interfaceC0892ec;
        this.c = locationClient;
        C1021jc c1021jc = new C1021jc();
        this.d = new Ml(new C1299u5(c1021jc, Fa.k().p().getAskForPermissionStrategy()));
        this.e = Fa.k().p();
        ((C0970hc) interfaceC0892ec).a(c1021jc, true);
        ((C0970hc) interfaceC0892ec).a(locationClient, true);
        this.f = locationClient.getLastKnownExtractorProviderFactory();
        this.g = locationClient.getLocationReceiverProviderFactory();
    }

    @Override // io.appmetrica.analytics.impl.Am
    public final void a(C1341vm c1341vm) {
        C1194q3 c1194q3 = c1341vm.x;
        if (c1194q3 != null) {
            long j = c1194q3.a;
            this.c.updateCacheArguments(new CacheArguments(j, 2 * j));
        }
    }

    @Override // io.appmetrica.analytics.impl.Zb, io.appmetrica.analytics.impl.InterfaceC0841cc
    public final void b(Object obj) {
        ((C0970hc) this.b).a(obj);
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.service.LocationServiceApi
    public final LastKnownLocationExtractorProviderFactory getLastKnownExtractorProviderFactory() {
        return this.f;
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.service.LocationServiceApi
    public final LocationReceiverProviderFactory getLocationReceiverProviderFactory() {
        return this.g;
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.service.LocationServiceApi
    public final PermissionExtractor getPermissionExtractor() {
        return this.d;
    }

    @Override // io.appmetrica.analytics.locationapi.internal.LocationProvider
    public final Location getSystemLocation() {
        return this.c.getSystemLocation();
    }

    @Override // io.appmetrica.analytics.locationapi.internal.LocationProvider
    public final Location getUserLocation() {
        return this.c.getUserLocation();
    }

    @Override // io.appmetrica.analytics.impl.Zb, io.appmetrica.analytics.impl.InterfaceC0841cc
    public final void init() {
        this.c.init(this.a, this.d, Fa.I.d.c(), this.e.d());
        ModuleLocationSourcesServiceController moduleLocationSourcesServiceControllerE = this.e.e();
        if (moduleLocationSourcesServiceControllerE != null) {
            moduleLocationSourcesServiceControllerE.init();
        } else {
            LocationClient locationClient = this.c;
            locationClient.registerSystemLocationSource(locationClient.getLastKnownExtractorProviderFactory().getGplLastKnownLocationExtractorProvider());
            LocationClient locationClient2 = this.c;
            locationClient2.registerSystemLocationSource(locationClient2.getLastKnownExtractorProviderFactory().getNetworkLastKnownLocationExtractorProvider());
        }
        ((C0970hc) this.b).a(this.e.f());
        Fa.I.u.a(this);
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.service.LocationServiceApi
    public final void registerControllerObserver(LocationControllerObserver locationControllerObserver) {
        ((C0970hc) this.b).a(locationControllerObserver, true);
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.service.LocationServiceApi
    public final void registerSource(LastKnownLocationExtractorProvider lastKnownLocationExtractorProvider) {
        this.c.registerSystemLocationSource(lastKnownLocationExtractorProvider);
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.service.LocationServiceApi
    public final void unregisterSource(LastKnownLocationExtractorProvider lastKnownLocationExtractorProvider) {
        this.c.unregisterSystemLocationSource(lastKnownLocationExtractorProvider);
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.service.LocationServiceApi
    public final void updateLocationFilter(LocationFilter locationFilter) {
        this.c.updateLocationFilter(locationFilter);
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.service.LocationServiceApi
    public final void registerSource(LocationReceiverProvider locationReceiverProvider) {
        this.c.registerSystemLocationSource(locationReceiverProvider);
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.service.LocationServiceApi
    public final void unregisterSource(LocationReceiverProvider locationReceiverProvider) {
        this.c.unregisterSystemLocationSource(locationReceiverProvider);
    }

    public final Ml a() {
        return this.d;
    }

    @Override // io.appmetrica.analytics.impl.Zb, io.appmetrica.analytics.impl.InterfaceC0841cc
    public final void a(Object obj) {
        ((C0970hc) this.b).b(obj);
    }

    @Override // io.appmetrica.analytics.impl.Zb, io.appmetrica.analytics.impl.InterfaceC0841cc
    public final void a(boolean z) {
        ((C0970hc) this.b).a(z);
    }

    @Override // io.appmetrica.analytics.impl.Zb, io.appmetrica.analytics.impl.InterfaceC0841cc
    public final void a(Location location) {
        this.c.updateUserLocation(location);
    }
}
