package io.appmetrica.analytics.remotepermissions.internal;

import defpackage.kx2;
import defpackage.ox2;
import defpackage.ud;
import io.appmetrica.analytics.coreapi.internal.data.Converter;
import io.appmetrica.analytics.coreapi.internal.data.JsonParser;
import io.appmetrica.analytics.coreapi.internal.permission.PermissionStrategy;
import io.appmetrica.analytics.modulesapi.internal.common.AskForPermissionStrategyModuleProvider;
import io.appmetrica.analytics.modulesapi.internal.service.ModuleRemoteConfig;
import io.appmetrica.analytics.modulesapi.internal.service.ModuleServiceEntryPoint;
import io.appmetrica.analytics.modulesapi.internal.service.RemoteConfigExtensionConfiguration;
import io.appmetrica.analytics.modulesapi.internal.service.RemoteConfigUpdateListener;
import io.appmetrica.analytics.modulesapi.internal.service.ServiceContext;
import io.appmetrica.analytics.remotepermissions.impl.a;
import io.appmetrica.analytics.remotepermissions.impl.e;
import io.appmetrica.analytics.remotepermissions.impl.f;
import io.appmetrica.analytics.remotepermissions.impl.g;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
public final class RemotePermissionsModuleEntryPoint extends ModuleServiceEntryPoint<ServiceSideRemotePermissionsConfigWrapper> implements AskForPermissionStrategyModuleProvider, RemoteConfigUpdateListener<ServiceSideRemotePermissionsConfigWrapper> {
    private final g a = new g(null, null, 3, null);
    private final f b = new f(null, 1, null);
    private final RemotePermissionsModuleEntryPoint c = this;
    private final a d = new a();
    private final String e = "rp";
    private final RemotePermissionsModuleEntryPoint$remoteConfigExtensionConfiguration$1 f = new RemoteConfigExtensionConfiguration<ServiceSideRemotePermissionsConfigWrapper>() { // from class: io.appmetrica.analytics.remotepermissions.internal.RemotePermissionsModuleEntryPoint$remoteConfigExtensionConfiguration$1
        @Override // io.appmetrica.analytics.modulesapi.internal.service.RemoteConfigExtensionConfiguration
        public Map<String, Integer> getBlocks() {
            return ud.c(1, "permissions");
        }

        @Override // io.appmetrica.analytics.modulesapi.internal.service.RemoteConfigExtensionConfiguration
        public List<String> getFeatures() {
            return kx2.b;
        }

        @Override // io.appmetrica.analytics.modulesapi.internal.service.RemoteConfigExtensionConfiguration
        public JsonParser<ServiceSideRemotePermissionsConfigWrapper> getJsonParser() {
            return this.a.a;
        }

        @Override // io.appmetrica.analytics.modulesapi.internal.service.RemoteConfigExtensionConfiguration
        public Converter<ServiceSideRemotePermissionsConfigWrapper, byte[]> getProtobufConverter() {
            return this.a.b;
        }

        @Override // io.appmetrica.analytics.modulesapi.internal.service.RemoteConfigExtensionConfiguration
        /* JADX INFO: renamed from: getRemoteConfigUpdateListener */
        public RemoteConfigUpdateListener<ServiceSideRemotePermissionsConfigWrapper> getRemoteConfigUpdateListener2() {
            return this.a.c;
        }
    };

    @Override // io.appmetrica.analytics.modulesapi.internal.common.AskForPermissionStrategyModuleProvider
    public PermissionStrategy getAskForPermissionStrategy() {
        return this.d;
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.service.ModuleServiceEntryPoint
    public String getIdentifier() {
        return this.e;
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.service.ModuleServiceEntryPoint
    public RemoteConfigExtensionConfiguration<ServiceSideRemotePermissionsConfigWrapper> getRemoteConfigExtensionConfiguration() {
        return this.f;
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.service.ModuleServiceEntryPoint
    public void initServiceSide(ServiceContext serviceContext, ModuleRemoteConfig<ServiceSideRemotePermissionsConfigWrapper> moduleRemoteConfig) {
        Set set;
        e config$remote_permissions_release;
        a aVar = this.d;
        ServiceSideRemotePermissionsConfigWrapper featuresConfig = moduleRemoteConfig.getFeaturesConfig();
        if (featuresConfig == null || (config$remote_permissions_release = featuresConfig.getConfig$remote_permissions_release()) == null || (set = config$remote_permissions_release.a) == null) {
            set = ox2.b;
        }
        synchronized (aVar) {
            aVar.a = set;
        }
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.service.RemoteConfigUpdateListener
    public void onRemoteConfigUpdated(ModuleRemoteConfig<ServiceSideRemotePermissionsConfigWrapper> moduleRemoteConfig) {
        Set set;
        e config$remote_permissions_release;
        a aVar = this.d;
        ServiceSideRemotePermissionsConfigWrapper featuresConfig = moduleRemoteConfig.getFeaturesConfig();
        if (featuresConfig == null || (config$remote_permissions_release = featuresConfig.getConfig$remote_permissions_release()) == null || (set = config$remote_permissions_release.a) == null) {
            set = ox2.b;
        }
        synchronized (aVar) {
            aVar.a = set;
        }
    }
}
