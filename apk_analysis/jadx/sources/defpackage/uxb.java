package defpackage;

import android.util.Log;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayDeque;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class uxb implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ uxb(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                kb5.c.set(new ArrayDeque());
                ((Runnable) obj).run();
                break;
            default:
                try {
                    en3.V((ListenableFuture) obj);
                } catch (Exception e) {
                    Log.w("PhFlagUpdateRegistry", "Failed to register flag update listener which may lead to stale flags.", e);
                }
                break;
        }
    }
}
