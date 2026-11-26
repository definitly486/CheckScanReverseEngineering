package defpackage;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.internal.auth.zzap;
import com.google.android.gms.internal.auth.zzau;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes4.dex */
public abstract class n1c extends TaskApiCall {
    public TaskCompletionSource a;

    public /* synthetic */ n1c(int i) {
        super(null, false, i);
    }

    public abstract void a(zzau zzauVar);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.common.api.internal.TaskApiCall
    public final /* bridge */ /* synthetic */ void doExecute(Api.AnyClient anyClient, TaskCompletionSource taskCompletionSource) {
        this.a = taskCompletionSource;
        a((zzau) ((zzap) anyClient).getService());
    }
}
