package defpackage;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.internal.ListenerHolders;
import com.google.android.gms.internal.location.zzbd;
import com.google.android.gms.internal.location.zzec;
import com.google.android.gms.location.LocationCallback;

/* JADX INFO: loaded from: classes4.dex */
public final class fva extends mwa {
    public final /* synthetic */ LocationCallback r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public fva(zzbd zzbdVar, GoogleApiClient googleApiClient, LocationCallback locationCallback) {
        super(googleApiClient);
        this.r = locationCallback;
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    public final /* bridge */ /* synthetic */ void c(Api.AnyClient anyClient) {
        ((zzec) anyClient).zzw(ListenerHolders.createListenerKey(this.r, "LocationCallback"), true, zzbd.a(this));
    }
}
