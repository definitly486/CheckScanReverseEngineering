package io.appmetrica.analytics.billing.internal;

import defpackage.kx2;
import defpackage.ud;
import io.appmetrica.analytics.billing.impl.A;
import io.appmetrica.analytics.billing.impl.m;
import io.appmetrica.analytics.billing.impl.z;
import io.appmetrica.analytics.coreapi.internal.data.Converter;
import io.appmetrica.analytics.coreapi.internal.data.JsonParser;
import io.appmetrica.analytics.modulesapi.internal.service.ModuleRemoteConfig;
import io.appmetrica.analytics.modulesapi.internal.service.ModuleServiceEntryPoint;
import io.appmetrica.analytics.modulesapi.internal.service.RemoteConfigExtensionConfiguration;
import io.appmetrica.analytics.modulesapi.internal.service.RemoteConfigUpdateListener;
import io.appmetrica.analytics.modulesapi.internal.service.ServiceContext;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class BillingServiceModuleEntryPoint extends ModuleServiceEntryPoint<ServiceSideBillingConfigWrapper> {
    private m a;
    private final A b = new A(null, null, 3, null);
    private final z c = new z(null, 1, null);
    private final BillingServiceModuleEntryPoint$configUpdateListener$1 d = new RemoteConfigUpdateListener<ServiceSideBillingConfigWrapper>() { // from class: io.appmetrica.analytics.billing.internal.BillingServiceModuleEntryPoint$configUpdateListener$1
        @Override // io.appmetrica.analytics.modulesapi.internal.service.RemoteConfigUpdateListener
        public void onRemoteConfigUpdated(ModuleRemoteConfig<ServiceSideBillingConfigWrapper> moduleRemoteConfig) {
            m mVar = this.a.a;
            if (mVar != null) {
                ServiceSideBillingConfigWrapper featuresConfig = moduleRemoteConfig.getFeaturesConfig();
                mVar.a(featuresConfig != null ? featuresConfig.getConfig$billing_release() : null);
            }
        }
    };
    private final String e = "billing";
    private final BillingServiceModuleEntryPoint$remoteConfigExtensionConfiguration$1 f = new RemoteConfigExtensionConfiguration<ServiceSideBillingConfigWrapper>() { // from class: io.appmetrica.analytics.billing.internal.BillingServiceModuleEntryPoint$remoteConfigExtensionConfiguration$1
        @Override // io.appmetrica.analytics.modulesapi.internal.service.RemoteConfigExtensionConfiguration
        public Map<String, Integer> getBlocks() {
            return ud.c(1, "aic");
        }

        @Override // io.appmetrica.analytics.modulesapi.internal.service.RemoteConfigExtensionConfiguration
        public List<String> getFeatures() {
            return kx2.b;
        }

        @Override // io.appmetrica.analytics.modulesapi.internal.service.RemoteConfigExtensionConfiguration
        public JsonParser<ServiceSideBillingConfigWrapper> getJsonParser() {
            return this.a.b;
        }

        @Override // io.appmetrica.analytics.modulesapi.internal.service.RemoteConfigExtensionConfiguration
        public Converter<ServiceSideBillingConfigWrapper, byte[]> getProtobufConverter() {
            final BillingServiceModuleEntryPoint billingServiceModuleEntryPoint = this.a;
            return new Converter<ServiceSideBillingConfigWrapper, byte[]>() { // from class: io.appmetrica.analytics.billing.internal.BillingServiceModuleEntryPoint$remoteConfigExtensionConfiguration$1$getProtobufConverter$1
                @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
                public byte[] fromModel(ServiceSideBillingConfigWrapper serviceSideBillingConfigWrapper) {
                    z zVar = billingServiceModuleEntryPoint.c;
                    return MessageNano.toByteArray(zVar.a.fromModel(serviceSideBillingConfigWrapper.getConfig$billing_release()));
                }

                @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
                public ServiceSideBillingConfigWrapper toModel(byte[] bArr) {
                    return ServiceSideBillingConfigWrapper.Companion.toWrapper$billing_release(billingServiceModuleEntryPoint.c.toModel(bArr));
                }
            };
        }

        @Override // io.appmetrica.analytics.modulesapi.internal.service.RemoteConfigExtensionConfiguration
        /* JADX INFO: renamed from: getRemoteConfigUpdateListener */
        public RemoteConfigUpdateListener<ServiceSideBillingConfigWrapper> getRemoteConfigUpdateListener2() {
            return this.a.d;
        }
    };

    @Override // io.appmetrica.analytics.modulesapi.internal.service.ModuleServiceEntryPoint
    public String getIdentifier() {
        return this.e;
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.service.ModuleServiceEntryPoint
    public RemoteConfigExtensionConfiguration<ServiceSideBillingConfigWrapper> getRemoteConfigExtensionConfiguration() {
        return this.f;
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.service.ModuleServiceEntryPoint
    public void initServiceSide(ServiceContext serviceContext, ModuleRemoteConfig<ServiceSideBillingConfigWrapper> moduleRemoteConfig) {
        ServiceSideBillingConfigWrapper featuresConfig = moduleRemoteConfig.getFeaturesConfig();
        m mVar = new m(serviceContext, featuresConfig != null ? featuresConfig.getConfig$billing_release() : null);
        serviceContext.getServiceModuleReporterComponentLifecycle().subscribe(mVar);
        this.a = mVar;
    }
}
