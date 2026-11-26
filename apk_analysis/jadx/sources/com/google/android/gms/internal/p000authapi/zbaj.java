package com.google.android.gms.internal.p000authapi;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import androidx.core.app.NotificationCompat;
import com.google.android.gms.auth.api.identity.CredentialSavingClient;
import com.google.android.gms.auth.api.identity.SaveAccountLinkingTokenRequest;
import com.google.android.gms.auth.api.identity.SaveAccountLinkingTokenResult;
import com.google.android.gms.auth.api.identity.SavePasswordRequest;
import com.google.android.gms.auth.api.identity.SavePasswordResult;
import com.google.android.gms.auth.api.identity.zbi;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelableSerializer;
import com.google.android.gms.internal.p000authapi.zbba;
import com.google.android.gms.internal.p000authapi.zbg;
import com.google.android.gms.internal.p000authapi.zbm;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import defpackage.rma;
import defpackage.uma;

/* JADX INFO: loaded from: classes4.dex */
public final class zbaj extends GoogleApi implements CredentialSavingClient {
    public static final Api b = new Api("Auth.Api.Identity.CredentialSaving.API", new rma(), new Api.ClientKey());
    public final String a;

    public zbaj(Activity activity, zbi zbiVar) {
        super(activity, (Api<zbi>) b, zbiVar, GoogleApi.Settings.DEFAULT_SETTINGS);
        this.a = zbaw.zba();
    }

    @Override // com.google.android.gms.auth.api.identity.CredentialSavingClient
    public final Status getStatusFromIntent(Intent intent) {
        Status status;
        return (intent == null || (status = (Status) SafeParcelableSerializer.deserializeFromIntentExtra(intent, NotificationCompat.CATEGORY_STATUS, Status.CREATOR)) == null) ? Status.RESULT_INTERNAL_ERROR : status;
    }

    @Override // com.google.android.gms.auth.api.identity.CredentialSavingClient
    public final Task<SaveAccountLinkingTokenResult> saveAccountLinkingToken(SaveAccountLinkingTokenRequest saveAccountLinkingTokenRequest) {
        Preconditions.checkNotNull(saveAccountLinkingTokenRequest);
        SaveAccountLinkingTokenRequest.Builder builderZba = SaveAccountLinkingTokenRequest.zba(saveAccountLinkingTokenRequest);
        builderZba.zba(this.a);
        final SaveAccountLinkingTokenRequest saveAccountLinkingTokenRequestBuild = builderZba.build();
        return doRead(TaskApiCall.builder().setFeatures(zbav.zbh).run(new RemoteCall() { // from class: vma
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final /* synthetic */ void accept(Object obj, Object obj2) {
                zbg zbgVar = (zbg) obj;
                ((zbm) zbgVar.getService()).zbc(new sma(this.b, (TaskCompletionSource) obj2), (SaveAccountLinkingTokenRequest) Preconditions.checkNotNull(saveAccountLinkingTokenRequestBuild), zbba.zba(zbgVar.getContext()));
            }
        }).setAutoResolveMissingFeatures(false).setMethodKey(1535).build());
    }

    @Override // com.google.android.gms.auth.api.identity.CredentialSavingClient
    public final Task<SavePasswordResult> savePassword(SavePasswordRequest savePasswordRequest) {
        Preconditions.checkNotNull(savePasswordRequest);
        SavePasswordRequest.Builder builderZba = SavePasswordRequest.zba(savePasswordRequest);
        builderZba.zbb(this.a);
        return doRead(TaskApiCall.builder().setFeatures(zbav.zbf).run(new uma(this, builderZba.build(), 0)).setAutoResolveMissingFeatures(false).setMethodKey(1536).build());
    }

    public zbaj(Context context, zbi zbiVar) {
        super(context, (Api<zbi>) b, zbiVar, GoogleApi.Settings.DEFAULT_SETTINGS);
        this.a = zbaw.zba();
    }
}
