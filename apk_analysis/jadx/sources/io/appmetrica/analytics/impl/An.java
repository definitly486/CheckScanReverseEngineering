package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.coreutils.internal.services.SafePackageManager;

/* JADX INFO: loaded from: classes5.dex */
public final class An {
    public final Cn a;
    public final Cn b;

    public An(Context context) {
        if (new SafePackageManager().hasSystemFeature(context, "android.hardware.telephony")) {
            this.a = new Z2(new Gl(context));
            this.b = new Z2(new Yc(context));
        } else {
            this.a = new C1069l8();
            this.b = new C1069l8();
        }
    }
}
