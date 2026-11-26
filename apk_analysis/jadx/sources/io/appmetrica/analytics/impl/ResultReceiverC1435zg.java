package io.appmetrica.analytics.impl;

import android.os.Bundle;
import android.os.Handler;
import android.os.ResultReceiver;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.zg, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class ResultReceiverC1435zg extends ResultReceiver {
    public final C1103mg a;

    public ResultReceiverC1435zg(Handler handler, C1103mg c1103mg) {
        super(handler);
        this.a = c1103mg;
    }

    public static void a(ResultReceiver resultReceiver, C1155og c1155og) {
        if (resultReceiver != null) {
            Bundle bundle = new Bundle();
            bundle.putByteArray("referrer", c1155og == null ? null : c1155og.a());
            resultReceiver.send(1, bundle);
        }
    }

    @Override // android.os.ResultReceiver
    public final void onReceiveResult(int i, Bundle bundle) {
        if (i == 1) {
            C1155og c1155og = null;
            try {
                byte[] byteArray = bundle.getByteArray("referrer");
                if (byteArray != null && byteArray.length != 0) {
                    c1155og = new C1155og(byteArray);
                }
            } catch (Throwable unused) {
            }
            this.a.a(c1155og);
        }
    }
}
