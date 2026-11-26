package com.google.android.gms.internal.p000authapi;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import androidx.core.app.NotificationCompat;
import com.google.android.gms.auth.api.identity.AuthorizationClient;
import com.google.android.gms.auth.api.identity.AuthorizationRequest;
import com.google.android.gms.auth.api.identity.AuthorizationResult;
import com.google.android.gms.auth.api.identity.ClearTokenRequest;
import com.google.android.gms.auth.api.identity.RevokeAccessRequest;
import com.google.android.gms.auth.api.identity.zba;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelableSerializer;
import com.google.android.gms.internal.p000authapi.zbba;
import com.google.android.gms.internal.p000authapi.zbf;
import com.google.android.gms.internal.p000authapi.zbj;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import defpackage.ona;

/* JADX INFO: loaded from: classes4.dex */
public final class zbad extends GoogleApi implements AuthorizationClient {
    public static final Api b = new Api("Auth.Api.Identity.Authorization.API", new ona(), new Api.ClientKey());
    public final String a;

    public zbad(Activity activity, zba zbaVar) {
        super(activity, (Api<zba>) b, zbaVar, GoogleApi.Settings.DEFAULT_SETTINGS);
        this.a = zbaw.zba();
    }

    @Override // com.google.android.gms.auth.api.identity.AuthorizationClient
    public final Task<AuthorizationResult> authorize(AuthorizationRequest authorizationRequest) {
        Preconditions.checkNotNull(authorizationRequest);
        AuthorizationRequest.Builder builderZba = AuthorizationRequest.zba(authorizationRequest);
        builderZba.zbb(this.a);
        final AuthorizationRequest authorizationRequestBuild = builderZba.build();
        return doRead(TaskApiCall.builder().setFeatures(zbav.zbc).run(new RemoteCall() { // from class: qma
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final /* synthetic */ void accept(Object obj, Object obj2) {
                zbf zbfVar = (zbf) obj;
                ((zbj) zbfVar.getService()).zbc(new pna(this.b, (TaskCompletionSource) obj2), (AuthorizationRequest) Preconditions.checkNotNull(authorizationRequestBuild), zbba.zba(zbfVar.getContext()));
            }
        }).setAutoResolveMissingFeatures(false).setMethodKey(1534).build());
    }

    @Override // com.google.android.gms.auth.api.identity.AuthorizationClient
    public final Task<Void> clearToken(ClearTokenRequest clearTokenRequest) {
        Preconditions.checkNotNull(clearTokenRequest);
        ClearTokenRequest.Builder builderZba = clearTokenRequest.zba();
        builderZba.zba(this.a);
        final ClearTokenRequest clearTokenRequestBuild = builderZba.build();
        return doWrite(TaskApiCall.builder().setFeatures(zbav.zbe).run(new RemoteCall() { // from class: pma
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final /* synthetic */ void accept(Object obj, Object obj2) {
                zbf zbfVar = (zbf) obj;
                ((zbj) zbfVar.getService()).zbe(new rna(this.b, (TaskCompletionSource) obj2), (ClearTokenRequest) Preconditions.checkNotNull(clearTokenRequestBuild), zbba.zba(zbfVar.getContext()));
            }
        }).setMethodKey(1721).build());
    }

    @Override // com.google.android.gms.auth.api.identity.AuthorizationClient
    public final AuthorizationResult getAuthorizationResultFromIntent(Intent intent) throws ApiException {
        if (intent == null) {
            throw new ApiException(Status.RESULT_INTERNAL_ERROR);
        }
        Status status = (Status) SafeParcelableSerializer.deserializeFromIntentExtra(intent, NotificationCompat.CATEGORY_STATUS, Status.CREATOR);
        if (status == null) {
            throw new ApiException(Status.RESULT_CANCELED);
        }
        if (!status.isSuccess()) {
            throw new ApiException(status);
        }
        AuthorizationResult authorizationResult = (AuthorizationResult) SafeParcelableSerializer.deserializeFromIntentExtra(intent, "authorization_result", AuthorizationResult.CREATOR);
        if (authorizationResult != null) {
            return authorizationResult;
        }
        throw new ApiException(Status.RESULT_INTERNAL_ERROR);
    }

    @Override // com.google.android.gms.auth.api.identity.AuthorizationClient
    public final Task<Void> revokeAccess(RevokeAccessRequest revokeAccessRequest) {
        Preconditions.checkNotNull(revokeAccessRequest);
        RevokeAccessRequest.Builder builderZba = revokeAccessRequest.zba();
        builderZba.zba(this.a);
        final RevokeAccessRequest revokeAccessRequestBuild = builderZba.build();
        return doWrite(TaskApiCall.builder().setFeatures(zbav.zbd).run(new RemoteCall() { // from class: oma
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final /* synthetic */ void accept(Object obj, Object obj2) {
                zbf zbfVar = (zbf) obj;
                ((zbj) zbfVar.getService()).zbd(new qna(this.b, (TaskCompletionSource) obj2), (RevokeAccessRequest) Preconditions.checkNotNull(revokeAccessRequestBuild), zbba.zba(zbfVar.getContext()));
            }
        }).setMethodKey(1721).build());
    }

    public zbad(Context context, zba zbaVar) {
        super(context, (Api<zba>) b, zbaVar, GoogleApi.Settings.DEFAULT_SETTINGS);
        this.a = zbaw.zba();
    }
}
