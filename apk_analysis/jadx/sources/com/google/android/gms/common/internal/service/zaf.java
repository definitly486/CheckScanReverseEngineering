package com.google.android.gms.common.internal.service;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import defpackage.ska;

/* JADX INFO: loaded from: classes4.dex */
public final class zaf {
    public final PendingResult zaa(GoogleApiClient googleApiClient) {
        return googleApiClient.execute(new ska(Common.API, googleApiClient));
    }
}
