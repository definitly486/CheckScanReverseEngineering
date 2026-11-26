package defpackage;

import android.app.PendingIntent;
import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.internal.zzc;

/* JADX INFO: loaded from: classes4.dex */
public abstract class joa extends zzc {
    public final /* synthetic */ BaseGmsClient d;
    public final int zza;
    public final Bundle zzb;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public joa(BaseGmsClient baseGmsClient, int i, Bundle bundle) {
        super(baseGmsClient, Boolean.TRUE);
        this.d = baseGmsClient;
        this.zza = i;
        this.zzb = bundle;
    }

    @Override // com.google.android.gms.common.internal.zzc
    public final /* bridge */ /* synthetic */ void a(Object obj) {
        int i = this.zza;
        BaseGmsClient baseGmsClient = this.d;
        if (i != 0) {
            baseGmsClient.zzd(1, null);
            Bundle bundle = this.zzb;
            c(new ConnectionResult(i, bundle != null ? (PendingIntent) bundle.getParcelable(BaseGmsClient.KEY_PENDING_INTENT) : null));
        } else {
            if (b()) {
                return;
            }
            baseGmsClient.zzd(1, null);
            c(new ConnectionResult(8, null));
        }
    }

    public abstract boolean b();

    public abstract void c(ConnectionResult connectionResult);
}
