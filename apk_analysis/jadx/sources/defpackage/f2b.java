package defpackage;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.location.zzcg;
import com.google.android.gms.internal.location.zzcy;
import com.google.android.gms.internal.location.zzec;
import com.google.android.gms.internal.location.zzu;
import com.google.android.gms.location.LocationSettingsRequest;

/* JADX INFO: loaded from: classes4.dex */
public final class f2b extends k2b {
    public final /* synthetic */ LocationSettingsRequest r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f2b(zzcy zzcyVar, GoogleApiClient googleApiClient, LocationSettingsRequest locationSettingsRequest) {
        super(zzcg.zzb, googleApiClient);
        this.r = locationSettingsRequest;
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    public final /* synthetic */ void c(Api.AnyClient anyClient) {
        zzec zzecVar = (zzec) anyClient;
        LocationSettingsRequest locationSettingsRequest = this.r;
        Preconditions.checkArgument(locationSettingsRequest != null, "locationSettingsRequest can't be null");
        ((zzu) zzecVar.getService()).zzD(locationSettingsRequest, new c4b(this), null);
    }
}
