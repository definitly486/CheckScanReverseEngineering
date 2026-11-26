package defpackage;

import androidx.camera.core.impl.utils.Threads;
import io.appmetrica.analytics.impl.C1152od;
import java.util.List;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class vt8 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ vt8(int i, Object obj, Object obj2) {
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
                Threads.lambda$runOnMainSync$0((Runnable) obj2, (CountDownLatch) obj);
                break;
            default:
                C1152od.a((C1152od) obj2, (List) obj);
                break;
        }
    }
}
