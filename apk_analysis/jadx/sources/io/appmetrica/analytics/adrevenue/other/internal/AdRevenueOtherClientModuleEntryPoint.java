package io.appmetrica.analytics.adrevenue.other.internal;

import com.facebook.ads.AdSDKNotificationManager;
import defpackage.j59;
import io.appmetrica.analytics.adrevenue.other.impl.d;
import io.appmetrica.analytics.adrevenue.other.impl.e;
import io.appmetrica.analytics.adrevenue.other.impl.g;
import io.appmetrica.analytics.adrevenue.other.impl.h;
import io.appmetrica.analytics.adrevenue.other.impl.i;
import io.appmetrica.analytics.coreutils.internal.reflection.ReflectionUtils;
import io.appmetrica.analytics.modulesapi.internal.client.BundleToServiceConfigConverter;
import io.appmetrica.analytics.modulesapi.internal.client.ClientContext;
import io.appmetrica.analytics.modulesapi.internal.client.ModuleClientEntryPoint;
import io.appmetrica.analytics.modulesapi.internal.client.ModuleServiceConfig;
import io.appmetrica.analytics.modulesapi.internal.client.ServiceConfigExtensionConfiguration;
import io.appmetrica.analytics.modulesapi.internal.client.ServiceConfigUpdateListener;
import io.appmetrica.analytics.modulesapi.internal.client.adrevenue.AdRevenueCollector;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes5.dex */
public final class AdRevenueOtherClientModuleEntryPoint extends ModuleClientEntryPoint<ClientSideAdRevenueOtherConfigWrapper> {
    private ClientContext a;
    private e b;
    private final AtomicBoolean c = new AtomicBoolean(false);
    private final g d = new g();
    private final d e = new d();
    private final AdRevenueOtherClientModuleEntryPoint$configUpdateListener$1 f = new ServiceConfigUpdateListener<ClientSideAdRevenueOtherConfigWrapper>() { // from class: io.appmetrica.analytics.adrevenue.other.internal.AdRevenueOtherClientModuleEntryPoint$configUpdateListener$1
        @Override // io.appmetrica.analytics.modulesapi.internal.client.ServiceConfigUpdateListener
        public void onServiceConfigUpdated(ModuleServiceConfig<ClientSideAdRevenueOtherConfigWrapper> moduleServiceConfig) {
            AdRevenueOtherClientModuleEntryPoint adRevenueOtherClientModuleEntryPoint = this.a;
            synchronized (adRevenueOtherClientModuleEntryPoint) {
                try {
                    ClientSideAdRevenueOtherConfigWrapper featuresConfig = moduleServiceConfig.getFeaturesConfig();
                    adRevenueOtherClientModuleEntryPoint.b = featuresConfig != null ? featuresConfig.getConfig$ad_revenue_other_release() : null;
                    j59 j59Var = j59.a;
                } catch (Throwable th) {
                    throw th;
                }
            }
            this.a.a();
        }
    };
    private final String g = "ad-revenue-other";
    private final AdRevenueOtherClientModuleEntryPoint$serviceConfigExtensionConfiguration$1 h = new ServiceConfigExtensionConfiguration<ClientSideAdRevenueOtherConfigWrapper>() { // from class: io.appmetrica.analytics.adrevenue.other.internal.AdRevenueOtherClientModuleEntryPoint$serviceConfigExtensionConfiguration$1
        @Override // io.appmetrica.analytics.modulesapi.internal.client.ServiceConfigExtensionConfiguration
        /* JADX INFO: renamed from: getBundleConverter, reason: merged with bridge method [inline-methods] */
        public BundleToServiceConfigConverter<ClientSideAdRevenueOtherConfigWrapper> getBundleConverter2() {
            return this.a.e;
        }

        @Override // io.appmetrica.analytics.modulesapi.internal.client.ServiceConfigExtensionConfiguration
        /* JADX INFO: renamed from: getServiceConfigUpdateListener, reason: merged with bridge method [inline-methods] */
        public ServiceConfigUpdateListener<ClientSideAdRevenueOtherConfigWrapper> getServiceConfigUpdateListener2() {
            return this.a.f;
        }
    };
    private final AdRevenueOtherClientModuleEntryPoint$adRevenueCollector$1 i = new AdRevenueCollector() { // from class: io.appmetrica.analytics.adrevenue.other.internal.AdRevenueOtherClientModuleEntryPoint$adRevenueCollector$1
        /* JADX WARN: Code duplicated, block: B:13:0x001b  */
        @Override // io.appmetrica.analytics.modulesapi.internal.client.adrevenue.AdRevenueCollector
        public boolean getEnabled() {
            boolean z;
            AdRevenueOtherClientModuleEntryPoint adRevenueOtherClientModuleEntryPoint = this.a;
            synchronized (adRevenueOtherClientModuleEntryPoint) {
                e eVar = adRevenueOtherClientModuleEntryPoint.b;
                if (eVar != null) {
                    z = eVar.b && adRevenueOtherClientModuleEntryPoint.c.get();
                }
            }
            return z;
        }

        @Override // io.appmetrica.analytics.modulesapi.internal.client.adrevenue.AdRevenueCollector
        public String getSourceIdentifier() {
            return "facebook";
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public final void a() {
        synchronized (this) {
            try {
                ClientContext clientContext = this.a;
                if (clientContext == null) {
                    return;
                }
                e eVar = this.b;
                boolean z = eVar != null && eVar.a;
                boolean zDetectClassExists = ReflectionUtils.detectClassExists("com.facebook.ads.AdSDKNotificationManager");
                if (z && zDetectClassExists) {
                    g gVar = this.d;
                    if (gVar.a == null) {
                        i iVar = new i(clientContext, new h());
                        AdSDKNotificationManager.addSDKNotificationListener(iVar);
                        gVar.a = iVar;
                    }
                    this.c.set(true);
                } else {
                    g gVar2 = this.d;
                    i iVar2 = gVar2.a;
                    if (iVar2 != null) {
                        AdSDKNotificationManager.removeSDKNotificationListener(iVar2);
                    }
                    gVar2.a = null;
                    this.c.set(false);
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
        return this.g;
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.client.ModuleClientEntryPoint
    public ServiceConfigExtensionConfiguration<ClientSideAdRevenueOtherConfigWrapper> getServiceConfigExtensionConfiguration() {
        return this.h;
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.client.ModuleClientEntryPoint
    public void initClientSide(ClientContext clientContext) {
        this.a = clientContext;
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.client.ModuleClientEntryPoint
    public void onActivated() {
        a();
    }
}
