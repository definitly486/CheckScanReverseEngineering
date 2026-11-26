package com.google.android.gms.internal.p001authapiphone;

import android.app.Activity;
import android.content.Context;
import com.google.android.gms.auth.api.phone.SmsRetrieverClient;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.internal.p001authapiphone.zzah;
import com.google.android.gms.internal.p001authapiphone.zzk;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import defpackage.wta;

/* JADX INFO: loaded from: classes4.dex */
public final class zzam extends SmsRetrieverClient {
    public zzam(Activity activity) {
        super(activity);
    }

    @Override // com.google.android.gms.auth.api.phone.SmsRetrieverClient, com.google.android.gms.auth.api.phone.SmsRetrieverApi
    public final Task<Void> startSmsRetriever() {
        return doWrite(TaskApiCall.builder().run(new RemoteCall() { // from class: cua
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final /* synthetic */ void accept(Object obj, Object obj2) {
                ((zzk) ((zzah) obj).getService()).zzc(new nta(this.b, (TaskCompletionSource) obj2));
            }
        }).setFeatures(zzan.zzc).setMethodKey(1567).build());
    }

    @Override // com.google.android.gms.auth.api.phone.SmsRetrieverClient, com.google.android.gms.auth.api.phone.SmsRetrieverApi
    public final Task<Void> startSmsUserConsent(String str) {
        return doWrite(TaskApiCall.builder().run(new wta(this, str)).setFeatures(zzan.zzd).setMethodKey(1568).build());
    }

    public zzam(Context context) {
        super(context);
    }
}
