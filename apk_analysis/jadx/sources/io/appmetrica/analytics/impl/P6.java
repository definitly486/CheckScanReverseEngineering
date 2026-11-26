package io.appmetrica.analytics.impl;

import android.os.Bundle;
import android.os.Handler;
import android.os.ResultReceiver;

/* JADX INFO: loaded from: classes5.dex */
public final class P6 extends ResultReceiver {
    public final O6 a;

    public P6(Handler handler, O6 o6) {
        super(handler);
        this.a = o6;
    }

    public static void a(ResultReceiver resultReceiver, Zl zl, C0936g4 c0936g4) {
        if (resultReceiver != null) {
            Bundle bundle = new Bundle();
            bundle.putInt("startup_error_key_code", zl.a);
            c0936g4.b(bundle);
            resultReceiver.send(2, bundle);
        }
    }

    @Override // android.os.ResultReceiver
    public final void onReceiveResult(int i, Bundle bundle) {
        if (bundle == null) {
            bundle = new Bundle();
        }
        this.a.a(i, bundle);
    }

    public static void a(ResultReceiver resultReceiver, C0936g4 c0936g4) {
        if (resultReceiver != null) {
            Bundle bundle = new Bundle();
            c0936g4.b(bundle);
            resultReceiver.send(1, bundle);
        }
    }
}
