package com.google.android.gms.auth.api.phone;

import android.app.PendingIntent;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.HasApiKey;
import com.google.android.gms.tasks.Task;

/* JADX INFO: loaded from: classes4.dex */
public interface IncomingCallRetrieverClient extends HasApiKey<Api.ApiOptions.NoOptions> {
    Task<PendingIntent> startIncomingCallRetriever(IncomingCallRetrieverRequest incomingCallRetrieverRequest);

    Task<PendingIntent> startUserConsent();
}
