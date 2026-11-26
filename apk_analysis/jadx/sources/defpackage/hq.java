package defpackage;

import com.google.firebase.perf.metrics.AppStartTrace;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class hq implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ hq(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                ((AppStartTrace) obj).recordPreDrawFrontOfQueue();
                break;
            default:
                ((nw7) obj).b();
                break;
        }
    }
}
