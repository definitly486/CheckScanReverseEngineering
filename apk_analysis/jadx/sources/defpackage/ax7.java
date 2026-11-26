package defpackage;

import androidx.room.TransactionExecutor;
import androidx.window.layout.WindowLayoutInfo;
import androidx.window.layout.adapter.sidecar.SidecarWindowBackend;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class ax7 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ ax7(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.d;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                SidecarWindowBackend.WindowLayoutChangeCallbackWrapper.accept$lambda$0((SidecarWindowBackend.WindowLayoutChangeCallbackWrapper) obj2, (WindowLayoutInfo) obj);
                break;
            default:
                TransactionExecutor.execute$lambda$1$lambda$0((Runnable) obj2, (TransactionExecutor) obj);
                break;
        }
    }
}
