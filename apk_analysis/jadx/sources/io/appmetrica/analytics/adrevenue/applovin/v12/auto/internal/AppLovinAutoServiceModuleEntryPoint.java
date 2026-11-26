package io.appmetrica.analytics.adrevenue.applovin.v12.auto.internal;

import android.os.Bundle;
import com.tapjoy.TJAdUnitConstants;
import defpackage.mx2;
import defpackage.u96;
import io.appmetrica.analytics.adrevenue.applovin.v12.auto.impl.l;
import io.appmetrica.analytics.adrevenue.applovin.v12.auto.impl.m;
import io.appmetrica.analytics.adrevenue.applovin.v12.auto.impl.n;
import io.appmetrica.analytics.adrevenue.applovin.v12.auto.impl.o;
import io.appmetrica.analytics.coreapi.internal.data.Converter;
import io.appmetrica.analytics.coreapi.internal.data.JsonParser;
import io.appmetrica.analytics.modulesapi.internal.service.ClientConfigProvider;
import io.appmetrica.analytics.modulesapi.internal.service.ModuleRemoteConfig;
import io.appmetrica.analytics.modulesapi.internal.service.ModuleServiceEntryPoint;
import io.appmetrica.analytics.modulesapi.internal.service.RemoteConfigExtensionConfiguration;
import io.appmetrica.analytics.modulesapi.internal.service.RemoteConfigUpdateListener;
import io.appmetrica.analytics.modulesapi.internal.service.ServiceContext;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class AppLovinAutoServiceModuleEntryPoint extends ModuleServiceEntryPoint<ServiceApplovinConfigWrapper> {
    private l a;
    private final o b = new o();
    private final n c = new n(null, null, 3, null);
    private final m d = new m(null, 1, null);
    private final AppLovinAutoServiceModuleEntryPoint$configUpdateListener$1 e = new RemoteConfigUpdateListener<ServiceApplovinConfigWrapper>() { // from class: io.appmetrica.analytics.adrevenue.applovin.v12.auto.internal.AppLovinAutoServiceModuleEntryPoint$configUpdateListener$1
        @Override // io.appmetrica.analytics.modulesapi.internal.service.RemoteConfigUpdateListener
        public void onRemoteConfigUpdated(ModuleRemoteConfig<ServiceApplovinConfigWrapper> moduleRemoteConfig) {
            AppLovinAutoServiceModuleEntryPoint appLovinAutoServiceModuleEntryPoint = this.a;
            ServiceApplovinConfigWrapper featuresConfig = moduleRemoteConfig.getFeaturesConfig();
            appLovinAutoServiceModuleEntryPoint.a = featuresConfig != null ? featuresConfig.getConfig$ad_revenue_applovin_v12_auto_release() : null;
        }
    };
    private final String f = "ad-revenue-applovin-v12-auto";
    private final AppLovinAutoServiceModuleEntryPoint$remoteConfigExtensionConfiguration$1 g = new RemoteConfigExtensionConfiguration<ServiceApplovinConfigWrapper>() { // from class: io.appmetrica.analytics.adrevenue.applovin.v12.auto.internal.AppLovinAutoServiceModuleEntryPoint$remoteConfigExtensionConfiguration$1
        @Override // io.appmetrica.analytics.modulesapi.internal.service.RemoteConfigExtensionConfiguration
        public Map<String, Integer> getBlocks() {
            return mx2.b;
        }

        @Override // io.appmetrica.analytics.modulesapi.internal.service.RemoteConfigExtensionConfiguration
        public List<String> getFeatures() {
            return u96.h("aram");
        }

        @Override // io.appmetrica.analytics.modulesapi.internal.service.RemoteConfigExtensionConfiguration
        public JsonParser<ServiceApplovinConfigWrapper> getJsonParser() {
            return this.a.c;
        }

        @Override // io.appmetrica.analytics.modulesapi.internal.service.RemoteConfigExtensionConfiguration
        public Converter<ServiceApplovinConfigWrapper, byte[]> getProtobufConverter() {
            return this.a.d;
        }

        @Override // io.appmetrica.analytics.modulesapi.internal.service.RemoteConfigExtensionConfiguration
        /* JADX INFO: renamed from: getRemoteConfigUpdateListener */
        public RemoteConfigUpdateListener<ServiceApplovinConfigWrapper> getRemoteConfigUpdateListener2() {
            return this.a.e;
        }
    };
    private final AppLovinAutoServiceModuleEntryPoint$clientConfigProvider$1 h = new ClientConfigProvider() { // from class: io.appmetrica.analytics.adrevenue.applovin.v12.auto.internal.AppLovinAutoServiceModuleEntryPoint$clientConfigProvider$1
        @Override // io.appmetrica.analytics.modulesapi.internal.service.ClientConfigProvider
        public Bundle getConfigBundleForClient() {
            o oVar = this.a.b;
            l lVar = this.a.a;
            oVar.getClass();
            if (lVar == null) {
                return null;
            }
            Bundle bundle = new Bundle();
            bundle.putBoolean(TJAdUnitConstants.String.ENABLED, lVar.a);
            return bundle;
        }
    };

    @Override // io.appmetrica.analytics.modulesapi.internal.service.ModuleServiceEntryPoint
    public ClientConfigProvider getClientConfigProvider() {
        return this.h;
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.service.ModuleServiceEntryPoint
    public String getIdentifier() {
        return this.f;
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.service.ModuleServiceEntryPoint
    public RemoteConfigExtensionConfiguration<ServiceApplovinConfigWrapper> getRemoteConfigExtensionConfiguration() {
        return this.g;
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.service.ModuleServiceEntryPoint
    public void initServiceSide(ServiceContext serviceContext, ModuleRemoteConfig<ServiceApplovinConfigWrapper> moduleRemoteConfig) {
        ServiceApplovinConfigWrapper featuresConfig = moduleRemoteConfig.getFeaturesConfig();
        this.a = featuresConfig != null ? featuresConfig.getConfig$ad_revenue_applovin_v12_auto_release() : null;
    }
}
