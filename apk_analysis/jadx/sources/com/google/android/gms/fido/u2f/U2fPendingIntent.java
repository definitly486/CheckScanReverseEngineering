package com.google.android.gms.fido.u2f;

import android.app.Activity;

/* JADX INFO: loaded from: classes4.dex */
@Deprecated
public interface U2fPendingIntent {
    boolean hasPendingIntent();

    void launchPendingIntent(Activity activity, int i);
}
