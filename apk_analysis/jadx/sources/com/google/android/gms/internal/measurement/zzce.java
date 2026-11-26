package com.google.android.gms.internal.measurement;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import androidx.compose.runtime.composer.linkbuffer.GroupFlagsKt;

/* JADX INFO: loaded from: classes4.dex */
public final class zzce {
    public static final int zza;

    static {
        zza = Build.VERSION.SDK_INT >= 31 ? GroupFlagsKt.HasAuxSlotFlag : 0;
    }

    public static PendingIntent zza(Context context, int i, Intent intent, int i2) {
        return PendingIntent.getBroadcast(context, 0, intent, i2);
    }
}
