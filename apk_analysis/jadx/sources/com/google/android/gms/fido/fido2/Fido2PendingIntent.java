package com.google.android.gms.fido.fido2;

import android.app.Activity;

/* JADX INFO: loaded from: classes4.dex */
@Deprecated
public interface Fido2PendingIntent {
    boolean hasPendingIntent();

    void launchPendingIntent(Activity activity, int i);
}
