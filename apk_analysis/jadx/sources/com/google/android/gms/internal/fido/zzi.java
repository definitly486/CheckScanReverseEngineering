package com.google.android.gms.internal.fido;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.IntentSender;
import com.google.android.gms.fido.fido2.Fido2PendingIntent;
import defpackage.ah;

/* JADX INFO: loaded from: classes4.dex */
@Deprecated
public final class zzi implements Fido2PendingIntent {
    public final PendingIntent a;

    public zzi(PendingIntent pendingIntent) {
        this.a = pendingIntent;
    }

    @Override // com.google.android.gms.fido.fido2.Fido2PendingIntent
    public final boolean hasPendingIntent() {
        return this.a != null;
    }

    @Override // com.google.android.gms.fido.fido2.Fido2PendingIntent
    public final void launchPendingIntent(Activity activity, int i) throws IntentSender.SendIntentException {
        PendingIntent pendingIntent = this.a;
        if (pendingIntent != null) {
            activity.startIntentSenderForResult(pendingIntent.getIntentSender(), i, null, 0, 0, 0);
        } else {
            ah.f("No PendingIntent available");
        }
    }
}
