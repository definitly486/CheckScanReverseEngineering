package com.google.android.gms.internal.appset;

import android.content.Context;
import com.google.android.gms.appset.AppSetIdClient;
import com.google.android.gms.appset.AppSetIdInfo;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import defpackage.r6c;
import defpackage.w8c;

/* JADX INFO: loaded from: classes4.dex */
public final class zzp extends GoogleApi<Api.ApiOptions.NoOptions> implements AppSetIdClient {
    public static final Api<Api.ApiOptions.NoOptions> c = new Api<>("AppSet.API", new r6c(), new Api.ClientKey());
    public final Context a;
    public final GoogleApiAvailabilityLight b;

    public zzp(Context context, GoogleApiAvailabilityLight googleApiAvailabilityLight) {
        super(context, c, Api.ApiOptions.NO_OPTIONS, GoogleApi.Settings.DEFAULT_SETTINGS);
        this.a = context;
        this.b = googleApiAvailabilityLight;
    }

    @Override // com.google.android.gms.appset.AppSetIdClient
    public final Task<AppSetIdInfo> getAppSetIdInfo() {
        return this.b.isGooglePlayServicesAvailable(this.a, 212800000) == 0 ? doRead(TaskApiCall.builder().setFeatures(com.google.android.gms.appset.zze.zza).run(new RemoteCall() { // from class: com.google.android.gms.internal.appset.zzm
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                ((zzg) ((zzd) obj).getService()).zzc(new com.google.android.gms.appset.zza(null, null), new w8c((TaskCompletionSource) obj2));
            }
        }).setAutoResolveMissingFeatures(false).setMethodKey(27601).build()) : Tasks.forException(new ApiException(new Status(17)));
    }
}
