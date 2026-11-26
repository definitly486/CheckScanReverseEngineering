package io.appmetrica.analytics.adrevenue.other.internal;

import android.os.Bundle;
import com.tapjoy.TJAdUnitConstants;
import defpackage.mx2;
import defpackage.u96;
import io.appmetrica.analytics.adrevenue.other.impl.j;
import io.appmetrica.analytics.adrevenue.other.impl.k;
import io.appmetrica.analytics.adrevenue.other.impl.l;
import io.appmetrica.analytics.adrevenue.other.impl.m;
import io.appmetrica.analytics.coreapi.internal.data.Converter;
import io.appmetrica.analytics.coreapi.internal.data.JsonParser;
import io.appmetrica.analytics.modulesapi.internal.service.ClientConfigProvider;
import io.appmetrica.analytics.modulesapi.internal.service.ModuleRemoteConfig;
import io.appmetrica.analytics.modulesapi.internal.service.ModuleServiceEntryPoint;
import io.appmetrica.analytics.modulesapi.internal.service.RemoteConfigExtensionConfiguration;
import io.appmetrica.analytics.modulesapi.internal.service.RemoteConfigUpdateListener;
import io.appmetrica.analytics.modulesapi.internal.service.ServiceContext;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class AdRevenueOtherServiceModuleEntryPoint extends ModuleServiceEntryPoint<ServiceSideAdRevenueOtherConfigWrapper> {
    private j a;
    private final m b = new m();
    private final l c = new l(null, 1, null);
    private final k d = new k(null, 1, null);
    private final AdRevenueOtherServiceModuleEntryPoint$configUpdateListener$1 e = new RemoteConfigUpdateListener<ServiceSideAdRevenueOtherConfigWrapper>() { // from class: io.appmetrica.analytics.adrevenue.other.internal.AdRevenueOtherServiceModuleEntryPoint$configUpdateListener$1
        @Override // io.appmetrica.analytics.modulesapi.internal.service.RemoteConfigUpdateListener
        public void onRemoteConfigUpdated(ModuleRemoteConfig<ServiceSideAdRevenueOtherConfigWrapper> moduleRemoteConfig) {
            AdRevenueOtherServiceModuleEntryPoint adRevenueOtherServiceModuleEntryPoint = this.a;
            ServiceSideAdRevenueOtherConfigWrapper featuresConfig = moduleRemoteConfig.getFeaturesConfig();
            adRevenueOtherServiceModuleEntryPoint.a = featuresConfig != null ? featuresConfig.getConfig$ad_revenue_other_release() : null;
        }
    };
    private final String f = "ad-revenue-other";
    private final AdRevenueOtherServiceModuleEntryPoint$remoteConfigExtensionConfiguration$1 g = new RemoteConfigExtensionConfiguration<ServiceSideAdRevenueOtherConfigWrapper>() { // from class: io.appmetrica.analytics.adrevenue.other.internal.AdRevenueOtherServiceModuleEntryPoint$remoteConfigExtensionConfiguration$1
        @Override // io.appmetrica.analytics.modulesapi.internal.service.RemoteConfigExtensionConfiguration
        public Map<String, Integer> getBlocks() {
            return mx2.b;
        }

        @Override // io.appmetrica.analytics.modulesapi.internal.service.RemoteConfigExtensionConfiguration
        public List<String> getFeatures() {
            return u96.i("aro", "arois");
        }

        @Override // io.appmetrica.analytics.modulesapi.internal.service.RemoteConfigExtensionConfiguration
        public JsonParser<ServiceSideAdRevenueOtherConfigWrapper> getJsonParser() {
            return this.a.c;
        }

        @Override // io.appmetrica.analytics.modulesapi.internal.service.RemoteConfigExtensionConfiguration
        public Converter<ServiceSideAdRevenueOtherConfigWrapper, byte[]> getProtobufConverter() {
            final AdRevenueOtherServiceModuleEntryPoint adRevenueOtherServiceModuleEntryPoint = this.a;
            return new Converter<ServiceSideAdRevenueOtherConfigWrapper, byte[]>() { // from class: io.appmetrica.analytics.adrevenue.other.internal.AdRevenueOtherServiceModuleEntryPoint$remoteConfigExtensionConfiguration$1$getProtobufConverter$1
                @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
                public byte[] fromModel(ServiceSideAdRevenueOtherConfigWrapper serviceSideAdRevenueOtherConfigWrapper) {
                    k kVar = adRevenueOtherServiceModuleEntryPoint.d;
                    return MessageNano.toByteArray(kVar.a.fromModel(serviceSideAdRevenueOtherConfigWrapper.getConfig$ad_revenue_other_release()));
                }

                @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
                public ServiceSideAdRevenueOtherConfigWrapper toModel(byte[] bArr) {
                    return ServiceSideAdRevenueOtherConfigWrapper.Companion.toWrapper$ad_revenue_other_release(adRevenueOtherServiceModuleEntryPoint.d.toModel(bArr));
                }
            };
        }

        @Override // io.appmetrica.analytics.modulesapi.internal.service.RemoteConfigExtensionConfiguration
        /* JADX INFO: renamed from: getRemoteConfigUpdateListener, reason: merged with bridge method [inline-methods] */
        public RemoteConfigUpdateListener<ServiceSideAdRevenueOtherConfigWrapper> getRemoteConfigUpdateListener2() {
            return this.a.e;
        }
    };
    private final AdRevenueOtherServiceModuleEntryPoint$clientConfigProvider$1 h = new ClientConfigProvider() { // from class: io.appmetrica.analytics.adrevenue.other.internal.AdRevenueOtherServiceModuleEntryPoint$clientConfigProvider$1
        @Override // io.appmetrica.analytics.modulesapi.internal.service.ClientConfigProvider
        public Bundle getConfigBundleForClient() {
            m mVar = this.a.b;
            j jVar = this.a.a;
            mVar.getClass();
            if (jVar == null) {
                return null;
            }
            Bundle bundle = new Bundle();
            bundle.putBoolean(TJAdUnitConstants.String.ENABLED, jVar.a);
            bundle.putBoolean("include_source", jVar.b);
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
    public RemoteConfigExtensionConfiguration<ServiceSideAdRevenueOtherConfigWrapper> getRemoteConfigExtensionConfiguration() {
        return this.g;
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.service.ModuleServiceEntryPoint
    public void initServiceSide(ServiceContext serviceContext, ModuleRemoteConfig<ServiceSideAdRevenueOtherConfigWrapper> moduleRemoteConfig) {
        ServiceSideAdRevenueOtherConfigWrapper featuresConfig = moduleRemoteConfig.getFeaturesConfig();
        this.a = featuresConfig != null ? featuresConfig.getConfig$ad_revenue_other_release() : null;
    }
}
