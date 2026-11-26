package com.my.tracker.obfuscated;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;

/* JADX INFO: loaded from: classes4.dex */
public final class x1 {

    public static class a extends BroadcastReceiver {
        final v a;

        public a(v vVar) {
            this.a = vVar;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("ru.rustore.sdk.remoteconfig.SEGMENT_HANDLED".equals(intent.getAction())) {
                try {
                    String stringExtra = intent.getStringExtra("payload");
                    if (stringExtra == null) {
                        stringExtra = "";
                    }
                    b3.a("RuStoreRemoteConfigHandler: received: action=" + intent.getAction() + ", payload=" + stringExtra);
                    this.a.a(stringExtra);
                } catch (Exception e) {
                    b3.a("RuStoreRemoteConfigHandler: error " + e);
                }
            }
        }
    }

    private x1() {
    }

    public void a(Context context, v vVar) {
        a aVar = new a(vVar);
        IntentFilter intentFilter = new IntentFilter("ru.rustore.sdk.remoteconfig.SEGMENT_HANDLED");
        if (Build.VERSION.SDK_INT < 33) {
            context.registerReceiver(aVar, intentFilter);
        } else {
            context.registerReceiver(aVar, intentFilter, 4);
        }
    }

    public static x1 a() {
        return new x1();
    }
}
