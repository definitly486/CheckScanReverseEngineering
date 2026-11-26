package defpackage;

import android.app.PendingIntent;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.location.zzae;
import com.google.android.gms.internal.location.zzf;

/* JADX INFO: loaded from: classes4.dex */
public final class zpa extends vqa {
    public final /* synthetic */ PendingIntent r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zpa(zzae zzaeVar, GoogleApiClient googleApiClient, PendingIntent pendingIntent) {
        super(googleApiClient);
        this.r = pendingIntent;
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    public final /* bridge */ /* synthetic */ void c(Api.AnyClient anyClient) {
        ((zzf) anyClient).zzp(this.r);
        setResult(Status.RESULT_SUCCESS);
    }
}
