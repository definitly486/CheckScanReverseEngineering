package io.appmetrica.analytics.push.coreutils.internal.model;

import android.os.Bundle;
import defpackage.cl4;
import defpackage.fh8;
import io.appmetrica.analytics.push.coreutils.impl.i;

/* JADX INFO: loaded from: classes5.dex */
public final class TransportPushMessage extends BasePushMessage {
    private final cl4 d;
    private final cl4 e;

    public TransportPushMessage(Bundle bundle) {
        super(bundle);
        this.d = new fh8(new a(this));
        this.e = new fh8(new i(this));
    }

    public final Long getProcessingMinTime() {
        return (Long) this.e.getValue();
    }

    public final ServiceType getServiceType() {
        return (ServiceType) this.d.getValue();
    }
}
