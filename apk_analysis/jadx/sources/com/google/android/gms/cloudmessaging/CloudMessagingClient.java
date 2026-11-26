package com.google.android.gms.cloudmessaging;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.HasApiKey;
import com.google.android.gms.tasks.Task;

/* JADX INFO: loaded from: classes4.dex */
public interface CloudMessagingClient extends HasApiKey<Api.ApiOptions.NoOptions> {
    Task<String> register(RegisterRequest registerRequest);

    Task<Void> unregister(UnregisterRequest unregisterRequest);
}
