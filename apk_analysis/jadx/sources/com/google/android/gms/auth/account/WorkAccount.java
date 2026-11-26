package com.google.android.gms.auth.account;

import android.app.Activity;
import android.content.Context;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.internal.auth.zzal;
import defpackage.odb;

/* JADX INFO: loaded from: classes4.dex */
public class WorkAccount {
    public static final Api<Api.ApiOptions.NoOptions> API = new Api<>("WorkAccount.API", new odb(), new Api.ClientKey());

    @Deprecated
    public static final WorkAccountApi WorkAccountApi = new zzal();

    public static WorkAccountClient getClient(Activity activity) {
        return new WorkAccountClient(activity);
    }

    public static WorkAccountClient getClient(Context context) {
        return new WorkAccountClient(context);
    }
}
