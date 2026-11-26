package io.appmetrica.analytics.impl;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import io.appmetrica.analytics.coreapi.internal.executors.IHandlerExecutor;
import io.appmetrica.analytics.coreutils.internal.AndroidUtils;

/* JADX INFO: loaded from: classes5.dex */
public final class R5 {
    public final BroadcastReceiver a;
    public boolean b = false;

    public R5(I2 i2) {
        this.a = i2;
    }

    public final synchronized Intent a(Context context, IntentFilter intentFilter, IHandlerExecutor iHandlerExecutor) {
        Intent intentRegisterReceiver;
        try {
            AndroidUtils.isApiAchieved(33);
            intentRegisterReceiver = context.registerReceiver(this.a, intentFilter, null, iHandlerExecutor.getHandler(), 4);
            try {
                this.b = true;
            } catch (Throwable unused) {
            }
        } catch (Throwable unused2) {
            intentRegisterReceiver = null;
        }
        return intentRegisterReceiver;
    }
}
