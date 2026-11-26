package com.google.firebase.perf.transport;

import com.google.firebase.inject.Provider;
import com.google.firebase.perf.logging.AndroidLogger;
import com.google.firebase.perf.v1.PerfMetric;
import defpackage.iy2;
import defpackage.lt0;
import defpackage.q29;
import defpackage.ry;
import defpackage.t29;

/* JADX INFO: loaded from: classes4.dex */
final class FlgTransport {
    private static final AndroidLogger logger = AndroidLogger.getInstance();
    private q29<PerfMetric> flgTransport;
    private final Provider<t29> flgTransportFactoryProvider;
    private final String logSourceName;

    public FlgTransport(Provider<t29> provider, String str) {
        this.logSourceName = str;
        this.flgTransportFactoryProvider = provider;
    }

    private boolean initializeFlgTransportClient() {
        if (this.flgTransport == null) {
            t29 t29Var = this.flgTransportFactoryProvider.get();
            if (t29Var != null) {
                this.flgTransport = t29Var.a(this.logSourceName, new iy2("proto"), new lt0());
            } else {
                logger.warn("Flg TransportFactory is not available at the moment");
            }
        }
        return this.flgTransport != null;
    }

    public void log(PerfMetric perfMetric) {
        if (initializeFlgTransportClient()) {
            this.flgTransport.a(ry.b(perfMetric));
        } else {
            logger.warn("Unable to dispatch event because Flg Transport is not available");
        }
    }
}
