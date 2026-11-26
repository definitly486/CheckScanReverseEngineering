package defpackage;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.ListenerHolders;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.common.moduleinstall.InstallStatusListener;
import com.google.android.gms.common.moduleinstall.ModuleInstallResponse;
import com.google.android.gms.common.moduleinstall.internal.zaa;
import com.google.android.gms.common.moduleinstall.internal.zay;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
public final class pla extends zaa {
    public final /* synthetic */ AtomicReference a;
    public final /* synthetic */ TaskCompletionSource b;
    public final /* synthetic */ InstallStatusListener l;
    public final /* synthetic */ zay m;

    public pla(zay zayVar, AtomicReference atomicReference, TaskCompletionSource taskCompletionSource, InstallStatusListener installStatusListener) {
        this.a = atomicReference;
        this.b = taskCompletionSource;
        this.l = installStatusListener;
        this.m = zayVar;
    }

    @Override // com.google.android.gms.common.moduleinstall.internal.zaa, com.google.android.gms.common.moduleinstall.internal.zae
    public final void zac(Status status, ModuleInstallResponse moduleInstallResponse) {
        if (moduleInstallResponse != null) {
            this.a.set(moduleInstallResponse);
        }
        TaskUtil.trySetResultOrApiException(status, null, this.b);
        if (!status.isSuccess() || (moduleInstallResponse != null && moduleInstallResponse.zaa())) {
            this.m.doUnregisterEventListener(ListenerHolders.createListenerKey(this.l, "InstallStatusListener"), 27306);
        }
    }
}
