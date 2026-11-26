package com.google.android.gms.internal.fido;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.IntentSender;
import com.google.android.gms.fido.u2f.U2fPendingIntent;
import defpackage.ah;

/* JADX INFO: loaded from: classes4.dex */
public final class zzt implements U2fPendingIntent {
    public final PendingIntent a;

    public zzt(PendingIntent pendingIntent) {
        this.a = pendingIntent;
    }

    @Override // com.google.android.gms.fido.u2f.U2fPendingIntent
    public final boolean hasPendingIntent() {
        return this.a != null;
    }

    @Override // com.google.android.gms.fido.u2f.U2fPendingIntent
    public final void launchPendingIntent(Activity activity, int i) throws IntentSender.SendIntentException {
        PendingIntent pendingIntent = this.a;
        if (pendingIntent != null) {
            activity.startIntentSenderForResult(pendingIntent.getIntentSender(), i, null, 0, 0, 0);
        } else {
            ah.f("No PendingIntent available");
        }
    }
}
