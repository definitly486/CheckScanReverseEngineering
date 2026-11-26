package defpackage;

import androidx.concurrent.futures.CallbackToFutureAdapter;
import yads.ld2;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class an3 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ an3(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                ((CallbackToFutureAdapter.Completer) obj).set(null);
                break;
            default:
                ld2.a((ld2) obj);
                break;
        }
    }
}
