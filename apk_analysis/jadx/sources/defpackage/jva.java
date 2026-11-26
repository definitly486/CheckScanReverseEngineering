package defpackage;

import android.location.Location;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.internal.location.zzbd;
import com.google.android.gms.internal.location.zzec;

/* JADX INFO: loaded from: classes4.dex */
public final class jva extends mwa {
    public final /* synthetic */ Location r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public jva(zzbd zzbdVar, GoogleApiClient googleApiClient, Location location) {
        super(googleApiClient);
        this.r = location;
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    public final /* bridge */ /* synthetic */ void c(Api.AnyClient anyClient) {
        ((zzec) anyClient).zzA(this.r, zzbd.a(this));
    }
}
