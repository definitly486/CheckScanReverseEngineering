package defpackage;

import android.app.PendingIntent;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.internal.location.zzbd;
import com.google.android.gms.internal.location.zzec;
import com.google.android.gms.location.LocationRequest;

/* JADX INFO: loaded from: classes4.dex */
public final class vua extends mwa {
    public final /* synthetic */ PendingIntent r;
    public final /* synthetic */ LocationRequest s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public vua(zzbd zzbdVar, GoogleApiClient googleApiClient, PendingIntent pendingIntent, LocationRequest locationRequest) {
        super(googleApiClient);
        this.r = pendingIntent;
        this.s = locationRequest;
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    public final /* bridge */ /* synthetic */ void c(Api.AnyClient anyClient) {
        ((zzec) anyClient).zzu(this.r, this.s, zzbd.a(this));
    }
}
