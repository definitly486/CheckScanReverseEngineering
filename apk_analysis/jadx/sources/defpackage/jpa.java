package defpackage;

import android.app.PendingIntent;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.location.zzae;
import com.google.android.gms.internal.location.zzf;
import com.google.android.gms.internal.location.zzu;

/* JADX INFO: loaded from: classes4.dex */
public final class jpa extends vqa {
    public final /* synthetic */ long r;
    public final /* synthetic */ PendingIntent s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public jpa(zzae zzaeVar, GoogleApiClient googleApiClient, long j, PendingIntent pendingIntent) {
        super(googleApiClient);
        this.r = j;
        this.s = pendingIntent;
    }

    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    public final /* bridge */ /* synthetic */ void c(Api.AnyClient anyClient) {
        zzf zzfVar = (zzf) anyClient;
        PendingIntent pendingIntent = this.s;
        Preconditions.checkNotNull(pendingIntent);
        long j = this.r;
        Preconditions.checkArgument(j >= 0, "detectionIntervalMillis must be >= 0");
        ((zzu) zzfVar.getService()).zzh(j, true, pendingIntent);
        setResult(Status.RESULT_SUCCESS);
    }
}
