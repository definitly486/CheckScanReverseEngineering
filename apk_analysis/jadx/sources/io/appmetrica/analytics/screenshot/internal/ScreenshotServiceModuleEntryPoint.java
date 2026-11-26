package io.appmetrica.analytics.screenshot.internal;

import android.os.Bundle;
import com.tapjoy.TJAdUnitConstants;
import defpackage.u96;
import defpackage.ud;
import io.appmetrica.analytics.coreapi.internal.data.Converter;
import io.appmetrica.analytics.coreapi.internal.data.JsonParser;
import io.appmetrica.analytics.modulesapi.internal.service.ClientConfigProvider;
import io.appmetrica.analytics.modulesapi.internal.service.ModuleRemoteConfig;
import io.appmetrica.analytics.modulesapi.internal.service.ModuleServiceEntryPoint;
import io.appmetrica.analytics.modulesapi.internal.service.RemoteConfigExtensionConfiguration;
import io.appmetrica.analytics.modulesapi.internal.service.RemoteConfigUpdateListener;
import io.appmetrica.analytics.modulesapi.internal.service.ServiceContext;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import io.appmetrica.analytics.screenshot.impl.N;
import io.appmetrica.analytics.screenshot.impl.O;
import io.appmetrica.analytics.screenshot.impl.P;
import io.appmetrica.analytics.screenshot.impl.Q;
import io.appmetrica.analytics.screenshot.impl.S;
import io.appmetrica.analytics.screenshot.impl.T;
import io.appmetrica.analytics.screenshot.impl.U;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class ScreenshotServiceModuleEntryPoint extends ModuleServiceEntryPoint<ServiceSideScreenshotConfigWrapper> {
    private P a;
    private final T b = new T();
    private final S c = new S(null, 1, null);
    private final Q d = new Q(null, 1, null);
    private final ScreenshotServiceModuleEntryPoint$configUpdateListener$1 e = new RemoteConfigUpdateListener<ServiceSideScreenshotConfigWrapper>() { // from class: io.appmetrica.analytics.screenshot.internal.ScreenshotServiceModuleEntryPoint$configUpdateListener$1
        @Override // io.appmetrica.analytics.modulesapi.internal.service.RemoteConfigUpdateListener
        public void onRemoteConfigUpdated(ModuleRemoteConfig<ServiceSideScreenshotConfigWrapper> moduleRemoteConfig) {
            ScreenshotServiceModuleEntryPoint screenshotServiceModuleEntryPoint = this.a;
            ServiceSideScreenshotConfigWrapper featuresConfig = moduleRemoteConfig.getFeaturesConfig();
            screenshotServiceModuleEntryPoint.a = featuresConfig != null ? featuresConfig.getConfig$screenshot_release() : null;
        }
    };
    private final String f = "screenshot";
    private final ScreenshotServiceModuleEntryPoint$remoteConfigExtensionConfiguration$1 g = new RemoteConfigExtensionConfiguration<ServiceSideScreenshotConfigWrapper>() { // from class: io.appmetrica.analytics.screenshot.internal.ScreenshotServiceModuleEntryPoint$remoteConfigExtensionConfiguration$1
        @Override // io.appmetrica.analytics.modulesapi.internal.service.RemoteConfigExtensionConfiguration
        public Map<String, Integer> getBlocks() {
            return ud.c(1, "scr");
        }

        @Override // io.appmetrica.analytics.modulesapi.internal.service.RemoteConfigExtensionConfiguration
        public List<String> getFeatures() {
            return u96.h("scr");
        }

        @Override // io.appmetrica.analytics.modulesapi.internal.service.RemoteConfigExtensionConfiguration
        public JsonParser<ServiceSideScreenshotConfigWrapper> getJsonParser() {
            return this.a.c;
        }

        @Override // io.appmetrica.analytics.modulesapi.internal.service.RemoteConfigExtensionConfiguration
        public Converter<ServiceSideScreenshotConfigWrapper, byte[]> getProtobufConverter() {
            final ScreenshotServiceModuleEntryPoint screenshotServiceModuleEntryPoint = this.a;
            return new Converter<ServiceSideScreenshotConfigWrapper, byte[]>() { // from class: io.appmetrica.analytics.screenshot.internal.ScreenshotServiceModuleEntryPoint$remoteConfigExtensionConfiguration$1$getProtobufConverter$1
                @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
                public byte[] fromModel(ServiceSideScreenshotConfigWrapper serviceSideScreenshotConfigWrapper) {
                    Q q = screenshotServiceModuleEntryPoint.d;
                    return MessageNano.toByteArray(q.a.fromModel(serviceSideScreenshotConfigWrapper.getConfig$screenshot_release()));
                }

                @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
                public ServiceSideScreenshotConfigWrapper toModel(byte[] bArr) {
                    return ServiceSideScreenshotConfigWrapper.Companion.toWrapper$screenshot_release(screenshotServiceModuleEntryPoint.d.toModel(bArr));
                }
            };
        }

        @Override // io.appmetrica.analytics.modulesapi.internal.service.RemoteConfigExtensionConfiguration
        /* JADX INFO: renamed from: getRemoteConfigUpdateListener */
        public RemoteConfigUpdateListener<ServiceSideScreenshotConfigWrapper> getRemoteConfigUpdateListener2() {
            return this.a.e;
        }
    };
    private final ScreenshotServiceModuleEntryPoint$clientConfigProvider$1 h = new ClientConfigProvider() { // from class: io.appmetrica.analytics.screenshot.internal.ScreenshotServiceModuleEntryPoint$clientConfigProvider$1
        @Override // io.appmetrica.analytics.modulesapi.internal.service.ClientConfigProvider
        public Bundle getConfigBundleForClient() {
            T t = this.a.b;
            P p = this.a.a;
            t.getClass();
            if (p == null) {
                return null;
            }
            Bundle bundle = new Bundle();
            bundle.putBoolean(TJAdUnitConstants.String.ENABLED, p.a);
            N n = p.b;
            if (n != null) {
                bundle.putBoolean("api_captor_enabled", n.a);
            }
            U u = p.c;
            if (u != null) {
                bundle.putBoolean("service_captor_enabled", u.a);
                bundle.putLong("service_captor_delay_seconds", u.b);
            }
            O o = p.d;
            if (o != null) {
                bundle.putBoolean("content_observer_enabled", o.a);
                bundle.putStringArrayList("content_observer_media_store_column_names", new ArrayList<>(o.b));
                bundle.putLong("content_observer_detect_window_seconds", o.c);
            }
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
    public RemoteConfigExtensionConfiguration<ServiceSideScreenshotConfigWrapper> getRemoteConfigExtensionConfiguration() {
        return this.g;
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.service.ModuleServiceEntryPoint
    public void initServiceSide(ServiceContext serviceContext, ModuleRemoteConfig<ServiceSideScreenshotConfigWrapper> moduleRemoteConfig) {
        ServiceSideScreenshotConfigWrapper featuresConfig = moduleRemoteConfig.getFeaturesConfig();
        this.a = featuresConfig != null ? featuresConfig.getConfig$screenshot_release() : null;
    }
}
