package defpackage;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import com.google.android.gms.auth.zzl;
import com.google.android.gms.internal.auth.zzby;
import com.google.android.gms.internal.auth.zze;

/* JADX INFO: loaded from: classes4.dex */
public final class tub implements fyb {
    public final /* synthetic */ String b;
    public final /* synthetic */ Context c;

    public tub(Context context, String str) {
        this.b = str;
        this.c = context;
    }

    @Override // defpackage.fyb
    public final /* bridge */ /* synthetic */ Object zza(IBinder iBinder) {
        Bundle bundleZzg = zze.zzb(iBinder).zzg(this.b);
        zzl.d(bundleZzg);
        String string = bundleZzg.getString("Error");
        Intent intent = (Intent) bundleZzg.getParcelable("userRecoveryIntent");
        PendingIntent pendingIntent = (PendingIntent) bundleZzg.getParcelable("userRecoveryPendingIntent");
        if (zzby.SUCCESS.equals(zzby.zza(string))) {
            return Boolean.TRUE;
        }
        zzl.h(this.c, "requestGoogleAccountsAccess", string, intent, pendingIntent);
        throw null;
    }
}
