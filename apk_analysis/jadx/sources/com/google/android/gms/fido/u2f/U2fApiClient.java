package com.google.android.gms.fido.u2f;

import android.app.Activity;
import android.content.Context;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.internal.ApiExceptionMapper;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.api.internal.StatusExceptionMapper;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.fido.u2f.api.common.RegisterRequestParams;
import com.google.android.gms.fido.u2f.api.common.SignRequestParams;
import com.google.android.gms.internal.fido.zzw;
import com.google.android.gms.internal.fido.zzx;
import com.google.android.gms.internal.fido.zzy;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import defpackage.gza;
import defpackage.z2b;

/* JADX INFO: loaded from: classes4.dex */
@Deprecated
public class U2fApiClient extends GoogleApi<Api.ApiOptions.NoOptions> {
    public static final Api a = new Api("Fido.U2F_API", new zzx(), new Api.ClientKey());

    public U2fApiClient(Activity activity) {
        super(activity, (Api<Api.ApiOptions.NoOptions>) a, Api.ApiOptions.NO_OPTIONS, (StatusExceptionMapper) new ApiExceptionMapper());
    }

    public Task<U2fPendingIntent> getRegisterIntent(final RegisterRequestParams registerRequestParams) {
        return doRead(TaskApiCall.builder().setMethodKey(5424).run(new RemoteCall() { // from class: com.google.android.gms.fido.u2f.zzb
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                RegisterRequestParams registerRequestParams2 = registerRequestParams;
                ((zzw) ((zzy) obj).getService()).zzc(new gza((TaskCompletionSource) obj2), registerRequestParams2);
            }
        }).build());
    }

    public Task<U2fPendingIntent> getSignIntent(final SignRequestParams signRequestParams) {
        return doRead(TaskApiCall.builder().setMethodKey(5425).run(new RemoteCall() { // from class: com.google.android.gms.fido.u2f.zza
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                SignRequestParams signRequestParams2 = signRequestParams;
                ((zzw) ((zzy) obj).getService()).zzd(new z2b((TaskCompletionSource) obj2), signRequestParams2);
            }
        }).build());
    }

    public U2fApiClient(Context context) {
        super(context, (Api<Api.ApiOptions.NoOptions>) a, Api.ApiOptions.NO_OPTIONS, new ApiExceptionMapper());
    }
}
