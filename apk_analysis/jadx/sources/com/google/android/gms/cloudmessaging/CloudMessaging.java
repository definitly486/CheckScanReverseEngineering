package com.google.android.gms.cloudmessaging;

import android.content.Context;
import com.google.android.gms.internal.cloudmessaging.zzm;

/* JADX INFO: loaded from: classes4.dex */
public final class CloudMessaging {
    public static CloudMessagingClient getClient(Context context) {
        return new zzm(context);
    }
}
