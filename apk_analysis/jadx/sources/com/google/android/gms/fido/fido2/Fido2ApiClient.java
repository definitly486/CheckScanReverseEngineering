package com.google.android.gms.fido.fido2;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.internal.ApiExceptionMapper;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.api.internal.StatusExceptionMapper;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.fido.fido2.api.common.PublicKeyCredentialCreationOptions;
import com.google.android.gms.fido.fido2.api.common.PublicKeyCredentialRequestOptions;
import com.google.android.gms.internal.fido.zzs;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import defpackage.cmb;
import defpackage.kdb;
import defpackage.nhb;
import defpackage.nub;
import defpackage.zpb;

/* JADX INFO: loaded from: classes4.dex */
public class Fido2ApiClient extends GoogleApi<Api.ApiOptions.NoOptions> {
    public static final Api a = new Api("Fido.FIDO2_API", new com.google.android.gms.internal.fido.zzo(), new Api.ClientKey());

    @Deprecated
    public Fido2ApiClient(Activity activity) {
        super(activity, (Api<Api.ApiOptions.NoOptions>) a, Api.ApiOptions.NO_OPTIONS, (StatusExceptionMapper) new ApiExceptionMapper());
    }

    @Deprecated
    public Task<Fido2PendingIntent> getRegisterIntent(final PublicKeyCredentialCreationOptions publicKeyCredentialCreationOptions) {
        return doRead(TaskApiCall.builder().setMethodKey(5409).run(new RemoteCall() { // from class: com.google.android.gms.fido.fido2.zzd
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                PublicKeyCredentialCreationOptions publicKeyCredentialCreationOptions2 = publicKeyCredentialCreationOptions;
                ((zzs) ((com.google.android.gms.internal.fido.zzp) obj).getService()).zzc(new cmb((TaskCompletionSource) obj2), publicKeyCredentialCreationOptions2);
            }
        }).build());
    }

    public Task<PendingIntent> getRegisterPendingIntent(final PublicKeyCredentialCreationOptions publicKeyCredentialCreationOptions) {
        return doRead(TaskApiCall.builder().run(new RemoteCall() { // from class: com.google.android.gms.fido.fido2.zzc
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                PublicKeyCredentialCreationOptions publicKeyCredentialCreationOptions2 = publicKeyCredentialCreationOptions;
                ((zzs) ((com.google.android.gms.internal.fido.zzp) obj).getService()).zzc(new kdb((TaskCompletionSource) obj2), publicKeyCredentialCreationOptions2);
            }
        }).setMethodKey(5407).build());
    }

    @Deprecated
    public Task<Fido2PendingIntent> getSignIntent(final PublicKeyCredentialRequestOptions publicKeyCredentialRequestOptions) {
        return doRead(TaskApiCall.builder().setMethodKey(5410).run(new RemoteCall() { // from class: com.google.android.gms.fido.fido2.zza
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                PublicKeyCredentialRequestOptions publicKeyCredentialRequestOptions2 = publicKeyCredentialRequestOptions;
                ((zzs) ((com.google.android.gms.internal.fido.zzp) obj).getService()).zzd(new zpb((TaskCompletionSource) obj2), publicKeyCredentialRequestOptions2);
            }
        }).build());
    }

    public Task<PendingIntent> getSignPendingIntent(final PublicKeyCredentialRequestOptions publicKeyCredentialRequestOptions) {
        return doRead(TaskApiCall.builder().run(new RemoteCall() { // from class: com.google.android.gms.fido.fido2.zze
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                PublicKeyCredentialRequestOptions publicKeyCredentialRequestOptions2 = publicKeyCredentialRequestOptions;
                ((zzs) ((com.google.android.gms.internal.fido.zzp) obj).getService()).zzd(new nhb((TaskCompletionSource) obj2), publicKeyCredentialRequestOptions2);
            }
        }).setMethodKey(5408).build());
    }

    public Task<Boolean> isUserVerifyingPlatformAuthenticatorAvailable() {
        return doRead(TaskApiCall.builder().run(new RemoteCall() { // from class: com.google.android.gms.fido.fido2.zzb
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                ((zzs) ((com.google.android.gms.internal.fido.zzp) obj).getService()).zze(new nub((TaskCompletionSource) obj2));
            }
        }).setFeatures(com.google.android.gms.fido.zza.zzh).setMethodKey(5411).build());
    }

    @Deprecated
    public Fido2ApiClient(Context context) {
        super(context, (Api<Api.ApiOptions.NoOptions>) a, Api.ApiOptions.NO_OPTIONS, new ApiExceptionMapper());
    }
}
