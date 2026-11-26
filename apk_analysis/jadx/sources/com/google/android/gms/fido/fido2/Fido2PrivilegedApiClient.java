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
import com.google.android.gms.fido.fido2.api.common.BrowserPublicKeyCredentialCreationOptions;
import com.google.android.gms.fido.fido2.api.common.BrowserPublicKeyCredentialRequestOptions;
import com.google.android.gms.fido.fido2.api.common.FidoCredentialDetails;
import com.google.android.gms.internal.fido.zzj;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import defpackage.fec;
import defpackage.mdc;
import defpackage.oec;
import defpackage.rfc;
import defpackage.vcc;
import defpackage.zbc;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class Fido2PrivilegedApiClient extends GoogleApi<Api.ApiOptions.NoOptions> {
    public static final Api a = new Api("Fido.FIDO2_PRIVILEGED_API", new zzj(), new Api.ClientKey());

    @Deprecated
    public Fido2PrivilegedApiClient(Activity activity) {
        super(activity, (Api<Api.ApiOptions.NoOptions>) a, Api.ApiOptions.NO_OPTIONS, (StatusExceptionMapper) new ApiExceptionMapper());
    }

    public Task<List<FidoCredentialDetails>> getCredentialList(final String str) {
        return doRead(TaskApiCall.builder().run(new RemoteCall() { // from class: com.google.android.gms.fido.fido2.zzk
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                String str2 = str;
                ((com.google.android.gms.internal.fido.zzn) ((com.google.android.gms.internal.fido.zzk) obj).getService()).zzc(new rfc((TaskCompletionSource) obj2), str2);
            }
        }).setMethodKey(5430).build());
    }

    @Deprecated
    public Task<Fido2PendingIntent> getRegisterIntent(final BrowserPublicKeyCredentialCreationOptions browserPublicKeyCredentialCreationOptions) {
        return doRead(TaskApiCall.builder().setMethodKey(5414).run(new RemoteCall() { // from class: com.google.android.gms.fido.fido2.zzo
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                BrowserPublicKeyCredentialCreationOptions browserPublicKeyCredentialCreationOptions2 = browserPublicKeyCredentialCreationOptions;
                ((com.google.android.gms.internal.fido.zzn) ((com.google.android.gms.internal.fido.zzk) obj).getService()).zzd(new mdc((TaskCompletionSource) obj2), browserPublicKeyCredentialCreationOptions2);
            }
        }).build());
    }

    public Task<PendingIntent> getRegisterPendingIntent(final BrowserPublicKeyCredentialCreationOptions browserPublicKeyCredentialCreationOptions) {
        return doRead(TaskApiCall.builder().run(new RemoteCall() { // from class: com.google.android.gms.fido.fido2.zzl
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                BrowserPublicKeyCredentialCreationOptions browserPublicKeyCredentialCreationOptions2 = browserPublicKeyCredentialCreationOptions;
                ((com.google.android.gms.internal.fido.zzn) ((com.google.android.gms.internal.fido.zzk) obj).getService()).zzd(new zbc((TaskCompletionSource) obj2), browserPublicKeyCredentialCreationOptions2);
            }
        }).setMethodKey(5412).build());
    }

    @Deprecated
    public Task<Fido2PendingIntent> getSignIntent(final BrowserPublicKeyCredentialRequestOptions browserPublicKeyCredentialRequestOptions) {
        return doRead(TaskApiCall.builder().setMethodKey(5415).run(new RemoteCall() { // from class: com.google.android.gms.fido.fido2.zzn
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                BrowserPublicKeyCredentialRequestOptions browserPublicKeyCredentialRequestOptions2 = browserPublicKeyCredentialRequestOptions;
                ((com.google.android.gms.internal.fido.zzn) ((com.google.android.gms.internal.fido.zzk) obj).getService()).zze(new fec((TaskCompletionSource) obj2), browserPublicKeyCredentialRequestOptions2);
            }
        }).build());
    }

    public Task<PendingIntent> getSignPendingIntent(final BrowserPublicKeyCredentialRequestOptions browserPublicKeyCredentialRequestOptions) {
        return doRead(TaskApiCall.builder().run(new RemoteCall() { // from class: com.google.android.gms.fido.fido2.zzm
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                BrowserPublicKeyCredentialRequestOptions browserPublicKeyCredentialRequestOptions2 = browserPublicKeyCredentialRequestOptions;
                ((com.google.android.gms.internal.fido.zzn) ((com.google.android.gms.internal.fido.zzk) obj).getService()).zze(new vcc((TaskCompletionSource) obj2), browserPublicKeyCredentialRequestOptions2);
            }
        }).setMethodKey(5413).build());
    }

    public Task<Boolean> isUserVerifyingPlatformAuthenticatorAvailable() {
        return doRead(TaskApiCall.builder().run(new RemoteCall() { // from class: com.google.android.gms.fido.fido2.zzp
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                ((com.google.android.gms.internal.fido.zzn) ((com.google.android.gms.internal.fido.zzk) obj).getService()).zzf(new oec((TaskCompletionSource) obj2));
            }
        }).setFeatures(com.google.android.gms.fido.zza.zzh).setMethodKey(5416).build());
    }

    @Deprecated
    public Fido2PrivilegedApiClient(Context context) {
        super(context, (Api<Api.ApiOptions.NoOptions>) a, Api.ApiOptions.NO_OPTIONS, new ApiExceptionMapper());
    }
}
