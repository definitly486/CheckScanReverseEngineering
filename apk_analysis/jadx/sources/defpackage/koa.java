package defpackage;

import android.os.Process;
import java.util.concurrent.ExecutionException;

/* JADX INFO: loaded from: classes4.dex */
public final class koa implements Runnable {
    public final /* synthetic */ int b;
    public final Object c;

    public /* synthetic */ koa(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                Process.setThreadPriority(0);
                ((Runnable) obj).run();
                return;
            default:
                throw new RuntimeException(((ExecutionException) obj).getCause());
        }
    }
}
