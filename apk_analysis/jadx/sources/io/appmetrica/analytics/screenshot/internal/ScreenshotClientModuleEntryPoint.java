package io.appmetrica.analytics.screenshot.internal;

import defpackage.aa4;
import defpackage.j59;
import io.appmetrica.analytics.coreutils.internal.AndroidUtils;
import io.appmetrica.analytics.modulesapi.internal.client.BundleToServiceConfigConverter;
import io.appmetrica.analytics.modulesapi.internal.client.ClientContext;
import io.appmetrica.analytics.modulesapi.internal.client.ModuleClientEntryPoint;
import io.appmetrica.analytics.modulesapi.internal.client.ModuleServiceConfig;
import io.appmetrica.analytics.modulesapi.internal.client.ServiceConfigExtensionConfiguration;
import io.appmetrica.analytics.modulesapi.internal.client.ServiceConfigUpdateListener;
import io.appmetrica.analytics.screenshot.impl.B;
import io.appmetrica.analytics.screenshot.impl.C1536g;
import io.appmetrica.analytics.screenshot.impl.C1540k;
import io.appmetrica.analytics.screenshot.impl.C1548t;
import io.appmetrica.analytics.screenshot.impl.C1549u;
import io.appmetrica.analytics.screenshot.impl.D;
import io.appmetrica.analytics.screenshot.impl.v;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public final class ScreenshotClientModuleEntryPoint extends ModuleClientEntryPoint<ClientSideScreenshotConfigWrapper> {
    private C1540k a;
    private D d;
    private final C1536g b = new C1536g();
    private final ScreenshotClientModuleEntryPoint$configUpdateListener$1 c = new ServiceConfigUpdateListener<ClientSideScreenshotConfigWrapper>() { // from class: io.appmetrica.analytics.screenshot.internal.ScreenshotClientModuleEntryPoint$configUpdateListener$1
        @Override // io.appmetrica.analytics.modulesapi.internal.client.ServiceConfigUpdateListener
        public void onServiceConfigUpdated(ModuleServiceConfig<ClientSideScreenshotConfigWrapper> moduleServiceConfig) {
            ScreenshotClientModuleEntryPoint screenshotClientModuleEntryPoint = this.a;
            synchronized (screenshotClientModuleEntryPoint) {
                try {
                    ClientSideScreenshotConfigWrapper featuresConfig = moduleServiceConfig.getFeaturesConfig();
                    screenshotClientModuleEntryPoint.a = featuresConfig != null ? featuresConfig.getConfig$screenshot_release() : null;
                    if (screenshotClientModuleEntryPoint.d != null) {
                        D d = screenshotClientModuleEntryPoint.d;
                        if (d == null) {
                            aa4.j("screenshotCaptorsController");
                            throw null;
                        }
                        C1540k c1540k = screenshotClientModuleEntryPoint.a;
                        Iterator it = d.a.iterator();
                        while (it.hasNext()) {
                            ((B) it.next()).a((c1540k == null || !c1540k.a) ? null : c1540k);
                        }
                    }
                    j59 j59Var = j59.a;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    };
    private final String e = "screenshot";
    private final ScreenshotClientModuleEntryPoint$serviceConfigExtensionConfiguration$1 f = new ServiceConfigExtensionConfiguration<ClientSideScreenshotConfigWrapper>() { // from class: io.appmetrica.analytics.screenshot.internal.ScreenshotClientModuleEntryPoint$serviceConfigExtensionConfiguration$1
        @Override // io.appmetrica.analytics.modulesapi.internal.client.ServiceConfigExtensionConfiguration
        /* JADX INFO: renamed from: getBundleConverter, reason: avoid collision after fix types in other method */
        public BundleToServiceConfigConverter<ClientSideScreenshotConfigWrapper> getBundleConverter2() {
            return this.a.b;
        }

        @Override // io.appmetrica.analytics.modulesapi.internal.client.ServiceConfigExtensionConfiguration
        /* JADX INFO: renamed from: getServiceConfigUpdateListener, reason: avoid collision after fix types in other method */
        public ServiceConfigUpdateListener<ClientSideScreenshotConfigWrapper> getServiceConfigUpdateListener2() {
            return this.a.c;
        }
    };

    @Override // io.appmetrica.analytics.modulesapi.internal.client.ModuleClientEntryPoint
    public String getIdentifier() {
        return this.e;
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.client.ModuleClientEntryPoint
    public ServiceConfigExtensionConfiguration<ClientSideScreenshotConfigWrapper> getServiceConfigExtensionConfiguration() {
        return this.f;
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.client.ModuleClientEntryPoint
    public void initClientSide(ClientContext clientContext) {
        synchronized (this) {
            try {
                C1549u c1549u = new C1549u(clientContext);
                this.d = new D(AndroidUtils.isApiAchieved(34) ? new C1548t(clientContext, c1549u) : new v(clientContext, c1549u));
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.client.ModuleClientEntryPoint
    public void onActivated() {
        synchronized (this) {
            try {
                D d = this.d;
                if (d != null) {
                    C1540k c1540k = this.a;
                    Iterator it = d.a.iterator();
                    while (it.hasNext()) {
                        ((B) it.next()).a();
                    }
                    Iterator it2 = d.a.iterator();
                    while (it2.hasNext()) {
                        ((B) it2.next()).a((c1540k == null || !c1540k.a) ? null : c1540k);
                    }
                }
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
