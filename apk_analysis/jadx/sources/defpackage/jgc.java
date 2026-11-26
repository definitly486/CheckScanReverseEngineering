package defpackage;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.internal.p001authapiphone.zzab;
import com.google.android.gms.internal.p001authapiphone.zzd;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes4.dex */
public final class jgc extends zzd {
    public final /* synthetic */ TaskCompletionSource a;

    public jgc(zzab zzabVar, TaskCompletionSource taskCompletionSource) {
        this.a = taskCompletionSource;
    }

    @Override // com.google.android.gms.internal.p001authapiphone.zze
    public final void zzb(Status status, int i) {
        TaskUtil.setResultOrApiException(status, Integer.valueOf(i), (TaskCompletionSource<Integer>) this.a);
    }
}
