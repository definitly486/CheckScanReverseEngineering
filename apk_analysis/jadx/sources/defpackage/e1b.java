package defpackage;

import android.app.PendingIntent;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.internal.location.zzcr;
import com.google.android.gms.internal.location.zzec;
import com.google.android.gms.location.GeofencingRequest;

/* JADX INFO: loaded from: classes4.dex */
public final class e1b extends p1b {
    public final /* synthetic */ GeofencingRequest r;
    public final /* synthetic */ PendingIntent s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e1b(zzcr zzcrVar, GoogleApiClient googleApiClient, GeofencingRequest geofencingRequest, PendingIntent pendingIntent) {
        super(googleApiClient);
        this.r = geofencingRequest;
        this.s = pendingIntent;
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    public final /* bridge */ /* synthetic */ void c(Api.AnyClient anyClient) {
        ((zzec) anyClient).zzE(this.r, this.s, zzcr.a(this));
    }
}
