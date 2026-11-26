package io.appmetrica.analytics.adrevenue.applovin.v12.auto.internal;

import defpackage.j59;
import io.appmetrica.analytics.adrevenue.applovin.v12.auto.impl.c;
import io.appmetrica.analytics.adrevenue.applovin.v12.auto.impl.d;
import io.appmetrica.analytics.adrevenue.applovin.v12.auto.impl.e;
import io.appmetrica.analytics.adrevenue.applovin.v12.auto.impl.i;
import io.appmetrica.analytics.adrevenue.applovin.v12.auto.impl.j;
import io.appmetrica.analytics.adrevenue.applovin.v12.auto.impl.k;
import io.appmetrica.analytics.coreutils.internal.reflection.ReflectionUtils;
import io.appmetrica.analytics.modulesapi.internal.client.BundleToServiceConfigConverter;
import io.appmetrica.analytics.modulesapi.internal.client.ClientContext;
import io.appmetrica.analytics.modulesapi.internal.client.ModuleClientEntryPoint;
import io.appmetrica.analytics.modulesapi.internal.client.ModuleServiceConfig;
import io.appmetrica.analytics.modulesapi.internal.client.ServiceConfigExtensionConfiguration;
import io.appmetrica.analytics.modulesapi.internal.client.ServiceConfigUpdateListener;
import io.appmetrica.analytics.modulesapi.internal.client.adrevenue.AdRevenueCollector;

/* JADX INFO: loaded from: classes5.dex */
public final class AppLovinAutoClientModuleEntryPoint extends ModuleClientEntryPoint<ClientApplovinConfigWrapper> {
    private j b;
    private boolean c;
    private Boolean d;
    private c e;
    private final String a = "ad-revenue-applovin-v12-auto";
    private final i f = new i();
    private final AppLovinAutoClientModuleEntryPoint$configUpdateListener$1 g = new ServiceConfigUpdateListener<ClientApplovinConfigWrapper>() { // from class: io.appmetrica.analytics.adrevenue.applovin.v12.auto.internal.AppLovinAutoClientModuleEntryPoint$configUpdateListener$1
        @Override // io.appmetrica.analytics.modulesapi.internal.client.ServiceConfigUpdateListener
        public void onServiceConfigUpdated(ModuleServiceConfig<ClientApplovinConfigWrapper> moduleServiceConfig) {
            AppLovinAutoClientModuleEntryPoint appLovinAutoClientModuleEntryPoint = this.a;
            synchronized (appLovinAutoClientModuleEntryPoint) {
                try {
                    ClientApplovinConfigWrapper featuresConfig = moduleServiceConfig.getFeaturesConfig();
                    appLovinAutoClientModuleEntryPoint.b = featuresConfig != null ? featuresConfig.getConfig$ad_revenue_applovin_v12_auto_release() : null;
                    j59 j59Var = j59.a;
                } catch (Throwable th) {
                    throw th;
                }
            }
            this.a.a();
        }
    };
    private final AppLovinAutoClientModuleEntryPoint$serviceConfigExtensionConfiguration$1 h = new ServiceConfigExtensionConfiguration<ClientApplovinConfigWrapper>() { // from class: io.appmetrica.analytics.adrevenue.applovin.v12.auto.internal.AppLovinAutoClientModuleEntryPoint$serviceConfigExtensionConfiguration$1
        @Override // io.appmetrica.analytics.modulesapi.internal.client.ServiceConfigExtensionConfiguration
        /* JADX INFO: renamed from: getBundleConverter */
        public BundleToServiceConfigConverter<ClientApplovinConfigWrapper> getBundleConverter2() {
            return this.a.f;
        }

        @Override // io.appmetrica.analytics.modulesapi.internal.client.ServiceConfigExtensionConfiguration
        /* JADX INFO: renamed from: getServiceConfigUpdateListener */
        public ServiceConfigUpdateListener<ClientApplovinConfigWrapper> getServiceConfigUpdateListener2() {
            return this.a.g;
        }
    };
    private final AppLovinAutoClientModuleEntryPoint$adRevenueCollector$1 i = new AdRevenueCollector() { // from class: io.appmetrica.analytics.adrevenue.applovin.v12.auto.internal.AppLovinAutoClientModuleEntryPoint$adRevenueCollector$1
        @Override // io.appmetrica.analytics.modulesapi.internal.client.adrevenue.AdRevenueCollector
        public boolean getEnabled() {
            boolean z;
            AppLovinAutoClientModuleEntryPoint appLovinAutoClientModuleEntryPoint = this.a;
            synchronized (appLovinAutoClientModuleEntryPoint) {
                try {
                    j jVar = appLovinAutoClientModuleEntryPoint.b;
                    z = (jVar != null ? jVar.a : k.a) && appLovinAutoClientModuleEntryPoint.c;
                } catch (Throwable th) {
                    throw th;
                }
            }
            return z;
        }

        @Override // io.appmetrica.analytics.modulesapi.internal.client.adrevenue.AdRevenueCollector
        public String getSourceIdentifier() {
            return "applovin";
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public final void a() {
        boolean zBooleanValue;
        synchronized (this) {
            try {
                c cVar = this.e;
                if (cVar == null) {
                    return;
                }
                j jVar = this.b;
                boolean z = jVar != null ? jVar.a : k.a;
                Boolean bool = this.d;
                if (bool != null) {
                    zBooleanValue = bool.booleanValue();
                } else {
                    zBooleanValue = ReflectionUtils.detectClassExists("com.applovin.communicator.AppLovinCommunicator") && ReflectionUtils.detectClassExists("com.applovin.communicator.AppLovinCommunicatorMessage");
                    this.d = Boolean.valueOf(zBooleanValue);
                }
                boolean z2 = z && zBooleanValue;
                if (z2 == this.c) {
                    return;
                }
                if (z2) {
                    if (cVar.a()) {
                        this.c = true;
                    }
                } else if (cVar.b()) {
                    this.c = false;
                }
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.client.ModuleClientEntryPoint
    public AdRevenueCollector getAdRevenueCollector() {
        return this.i;
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.client.ModuleClientEntryPoint
    public String getIdentifier() {
        return this.a;
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.client.ModuleClientEntryPoint
    public ServiceConfigExtensionConfiguration<ClientApplovinConfigWrapper> getServiceConfigExtensionConfiguration() {
        return this.h;
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.client.ModuleClientEntryPoint
    public void initClientSide(ClientContext clientContext) {
        synchronized (this) {
            this.e = new c(clientContext.getContext(), new e(clientContext, new d()));
            j59 j59Var = j59.a;
        }
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.client.ModuleClientEntryPoint
    public void onActivated() {
        a();
    }
}
