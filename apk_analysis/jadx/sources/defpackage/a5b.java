package defpackage;

import android.location.Location;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.internal.location.zzx;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes4.dex */
public final class a5b extends zzx {
    public final /* synthetic */ TaskCompletionSource a;

    public a5b(TaskCompletionSource taskCompletionSource) {
        this.a = taskCompletionSource;
    }

    @Override // com.google.android.gms.internal.location.zzy
    public final void zzb(Status status, Location location) {
        TaskUtil.setResultOrApiException(status, location, (TaskCompletionSource<Location>) this.a);
    }
}
