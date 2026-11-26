package defpackage;

import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.common.moduleinstall.ModuleInstallStatusUpdate;
import com.google.android.gms.common.moduleinstall.internal.zag;

/* JADX INFO: loaded from: classes4.dex */
public final class uia extends zag {
    public final ListenerHolder a;

    public uia(ListenerHolder listenerHolder) {
        this.a = listenerHolder;
    }

    @Override // com.google.android.gms.common.moduleinstall.internal.zah
    public final void zab(ModuleInstallStatusUpdate moduleInstallStatusUpdate) {
        this.a.notifyListener(new tia(this, moduleInstallStatusUpdate));
    }
}
