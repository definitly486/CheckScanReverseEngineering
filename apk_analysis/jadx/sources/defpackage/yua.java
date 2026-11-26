package defpackage;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.internal.ListenerHolders;
import com.google.android.gms.internal.location.zzbd;
import com.google.android.gms.internal.location.zzec;
import com.google.android.gms.location.LocationListener;

/* JADX INFO: loaded from: classes4.dex */
public final class yua extends mwa {
    public final /* synthetic */ LocationListener r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public yua(zzbd zzbdVar, GoogleApiClient googleApiClient, LocationListener locationListener) {
        super(googleApiClient);
        this.r = locationListener;
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    public final /* bridge */ /* synthetic */ void c(Api.AnyClient anyClient) {
        ((zzec) anyClient).zzv(ListenerHolders.createListenerKey(this.r, "LocationListener"), true, zzbd.a(this));
    }
}
