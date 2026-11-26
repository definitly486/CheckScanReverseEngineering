package io.appmetrica.analytics.remotepermissions.internal;

import defpackage.jh2;
import io.appmetrica.analytics.remotepermissions.impl.e;

/* JADX INFO: loaded from: classes5.dex */
public final class ServiceSideRemotePermissionsConfigWrapper {
    public static final Companion Companion = new Companion(null);
    private final e a;

    public ServiceSideRemotePermissionsConfigWrapper(e eVar) {
        this.a = eVar;
    }

    public final e getConfig$remote_permissions_release() {
        return this.a;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final ServiceSideRemotePermissionsConfigWrapper toWrapper$remote_permissions_release(e eVar) {
            return new ServiceSideRemotePermissionsConfigWrapper(eVar);
        }

        private Companion() {
        }
    }
}
