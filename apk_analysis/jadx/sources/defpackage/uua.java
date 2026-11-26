package defpackage;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.internal.location.zzbd;
import com.google.android.gms.internal.location.zzec;
import com.google.android.gms.location.LocationRequest;

/* JADX INFO: loaded from: classes4.dex */
public final class uua extends mwa {
    public final /* synthetic */ ListenerHolder r;
    public final /* synthetic */ LocationRequest s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public uua(zzbd zzbdVar, GoogleApiClient googleApiClient, ListenerHolder listenerHolder, LocationRequest locationRequest) {
        super(googleApiClient);
        this.r = listenerHolder;
        this.s = locationRequest;
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    public final /* bridge */ /* synthetic */ void c(Api.AnyClient anyClient) {
        ((zzec) anyClient).zzt(new xla(this.r), this.s, zzbd.a(this));
    }
}
