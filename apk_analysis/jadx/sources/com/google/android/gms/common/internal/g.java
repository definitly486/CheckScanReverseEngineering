package com.google.android.gms.common.internal;

import android.app.PendingIntent;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import defpackage.ag;

/* JADX INFO: loaded from: classes4.dex */
public final class g extends com.google.android.gms.internal.common.zzg {
    public final /* synthetic */ BaseGmsClient a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(BaseGmsClient baseGmsClient, Looper looper) {
        super(looper);
        this.a = baseGmsClient;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        zzc zzcVar;
        BaseGmsClient baseGmsClient = this.a;
        int i = baseGmsClient.zzd.get();
        int i2 = message.arg1;
        int i3 = message.what;
        if (i != i2) {
            if ((i3 == 2 || i3 == 1 || i3 == 7) && (zzcVar = (zzc) message.obj) != null) {
                zzcVar.zze();
                return;
            }
            return;
        }
        if ((i3 == 1 || i3 == 7 || ((i3 == 4 && !baseGmsClient.enableLocalFallback()) || message.what == 5)) && !baseGmsClient.isConnecting()) {
            zzc zzcVar2 = (zzc) message.obj;
            if (zzcVar2 != null) {
                zzcVar2.zze();
                return;
            }
            return;
        }
        int i4 = message.what;
        if (i4 == 4) {
            baseGmsClient.zzn(new ConnectionResult(message.arg2));
            if (baseGmsClient.zzg() && !baseGmsClient.zzo()) {
                baseGmsClient.zzd(3, null);
                return;
            }
            ConnectionResult connectionResultZzm = baseGmsClient.zzm() != null ? baseGmsClient.zzm() : new ConnectionResult(8);
            baseGmsClient.zzc.onReportServiceBinding(connectionResultZzm);
            baseGmsClient.onConnectionFailed(connectionResultZzm);
            return;
        }
        if (i4 == 5) {
            ConnectionResult connectionResultZzm2 = baseGmsClient.zzm() != null ? baseGmsClient.zzm() : new ConnectionResult(8);
            baseGmsClient.zzc.onReportServiceBinding(connectionResultZzm2);
            baseGmsClient.onConnectionFailed(connectionResultZzm2);
            return;
        }
        if (i4 == 3) {
            Object obj = message.obj;
            ConnectionResult connectionResult = new ConnectionResult(message.arg2, obj instanceof PendingIntent ? (PendingIntent) obj : null);
            baseGmsClient.zzc.onReportServiceBinding(connectionResult);
            baseGmsClient.onConnectionFailed(connectionResult);
            return;
        }
        if (i4 == 6) {
            baseGmsClient.zzd(5, null);
            if (baseGmsClient.zzk() != null) {
                baseGmsClient.zzk().onConnectionSuspended(message.arg2);
            }
            baseGmsClient.onConnectionSuspended(message.arg2);
            baseGmsClient.zze(5, 1, null);
            return;
        }
        if (i4 == 2 && !baseGmsClient.isConnected()) {
            zzc zzcVar3 = (zzc) message.obj;
            if (zzcVar3 != null) {
                zzcVar3.zze();
                return;
            }
            return;
        }
        int i5 = message.what;
        if (i5 == 2 || i5 == 1 || i5 == 7) {
            ((zzc) message.obj).zzd();
        } else {
            Log.wtf("GmsClient", ag.d(new StringBuilder(String.valueOf(i5).length() + 34), "Don't know how to handle message: ", i5), new Exception());
        }
    }
}
