package defpackage;

import android.os.Bundle;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.auth.zzn;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes4.dex */
public final class igc extends zzn {
    public final /* synthetic */ TaskCompletionSource a;

    public igc(TaskCompletionSource taskCompletionSource) {
        this.a = taskCompletionSource;
    }

    @Override // com.google.android.gms.internal.auth.zzo
    public final void zzb(Status status, Bundle bundle) {
        ipa.a(status, bundle, this.a);
    }
}
