package io.appmetrica.analytics.idsync.internal;

import defpackage.j59;
import defpackage.u96;
import defpackage.ud;
import io.appmetrica.analytics.coreapi.internal.data.Converter;
import io.appmetrica.analytics.coreapi.internal.data.JsonParser;
import io.appmetrica.analytics.idsync.impl.C0765c;
import io.appmetrica.analytics.idsync.impl.C0766d;
import io.appmetrica.analytics.idsync.impl.C0767e;
import io.appmetrica.analytics.idsync.impl.C0768f;
import io.appmetrica.analytics.idsync.impl.C0769g;
import io.appmetrica.analytics.idsync.impl.C0770h;
import io.appmetrica.analytics.idsync.impl.C0773k;
import io.appmetrica.analytics.modulesapi.internal.service.ModuleRemoteConfig;
import io.appmetrica.analytics.modulesapi.internal.service.ModuleServiceEntryPoint;
import io.appmetrica.analytics.modulesapi.internal.service.RemoteConfigExtensionConfiguration;
import io.appmetrica.analytics.modulesapi.internal.service.RemoteConfigUpdateListener;
import io.appmetrica.analytics.modulesapi.internal.service.ServiceContext;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class IdSyncModuleEntryPoint extends ModuleServiceEntryPoint<IdSyncConfigWrapper> implements RemoteConfigUpdateListener<IdSyncConfigWrapper> {
    private C0773k a;
    private final C0769g b;
    private final C0770h c;
    private final String d;
    private final IdSyncModuleEntryPoint$remoteConfigExtensionConfiguration$1 e;

    /* JADX WARN: Type inference failed for: r0v4, types: [io.appmetrica.analytics.idsync.internal.IdSyncModuleEntryPoint$remoteConfigExtensionConfiguration$1] */
    public IdSyncModuleEntryPoint() {
        C0768f c0768f = new C0768f();
        C0767e c0767e = new C0767e(c0768f);
        this.b = new C0769g(new C0766d(c0768f));
        this.c = new C0770h(c0767e);
        this.d = "id-sync";
        this.e = new RemoteConfigExtensionConfiguration<IdSyncConfigWrapper>() { // from class: io.appmetrica.analytics.idsync.internal.IdSyncModuleEntryPoint$remoteConfigExtensionConfiguration$1
            @Override // io.appmetrica.analytics.modulesapi.internal.service.RemoteConfigExtensionConfiguration
            public Map<String, Integer> getBlocks() {
                return ud.c(1, "is");
            }

            @Override // io.appmetrica.analytics.modulesapi.internal.service.RemoteConfigExtensionConfiguration
            public List<String> getFeatures() {
                return u96.h("is");
            }

            @Override // io.appmetrica.analytics.modulesapi.internal.service.RemoteConfigExtensionConfiguration
            public JsonParser<IdSyncConfigWrapper> getJsonParser() {
                return this.a.b;
            }

            @Override // io.appmetrica.analytics.modulesapi.internal.service.RemoteConfigExtensionConfiguration
            public Converter<IdSyncConfigWrapper, byte[]> getProtobufConverter() {
                return this.a.c;
            }

            @Override // io.appmetrica.analytics.modulesapi.internal.service.RemoteConfigExtensionConfiguration
            /* JADX INFO: renamed from: getRemoteConfigUpdateListener */
            public RemoteConfigUpdateListener<IdSyncConfigWrapper> getRemoteConfigUpdateListener2() {
                return this.a;
            }
        };
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.service.ModuleServiceEntryPoint
    public String getIdentifier() {
        return this.d;
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.service.ModuleServiceEntryPoint
    public RemoteConfigExtensionConfiguration<IdSyncConfigWrapper> getRemoteConfigExtensionConfiguration() {
        return this.e;
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.service.ModuleServiceEntryPoint
    public void initServiceSide(ServiceContext serviceContext, ModuleRemoteConfig<IdSyncConfigWrapper> moduleRemoteConfig) {
        C0765c config$id_sync_release;
        synchronized (this) {
            try {
                if (this.a == null) {
                    C0773k c0773k = new C0773k(serviceContext, moduleRemoteConfig.getIdentifiers());
                    this.a = c0773k;
                    IdSyncConfigWrapper featuresConfig = moduleRemoteConfig.getFeaturesConfig();
                    if (featuresConfig != null && (config$id_sync_release = featuresConfig.getConfig$id_sync_release()) != null) {
                        c0773k.a(config$id_sync_release, moduleRemoteConfig.getIdentifiers());
                    }
                }
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.service.RemoteConfigUpdateListener
    public synchronized void onRemoteConfigUpdated(ModuleRemoteConfig<IdSyncConfigWrapper> moduleRemoteConfig) {
        C0765c config$id_sync_release;
        C0773k c0773k;
        IdSyncConfigWrapper featuresConfig = moduleRemoteConfig.getFeaturesConfig();
        if (featuresConfig != null && (config$id_sync_release = featuresConfig.getConfig$id_sync_release()) != null && (c0773k = this.a) != null) {
            c0773k.a(config$id_sync_release, moduleRemoteConfig.getIdentifiers());
        }
    }
}
