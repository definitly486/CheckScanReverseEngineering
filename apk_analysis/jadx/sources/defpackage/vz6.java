package defpackage;

import androidx.media3.common.SimpleBasePlayer;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class vz6 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ vz6(int i, Object obj, Object obj2) {
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
                ((Executor) obj2).execute((Runnable) obj);
                break;
            default:
                ((SimpleBasePlayer) obj2).lambda$updateStateForPendingOperation$64((ListenableFuture) obj);
                break;
        }
    }
}
