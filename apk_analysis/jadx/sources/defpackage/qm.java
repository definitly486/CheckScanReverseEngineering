package defpackage;

import androidx.vectordrawable.graphics.drawable.AnimatedVectorDrawableCompat;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class qm implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ qm(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                ((AnimatedVectorDrawableCompat) obj).start();
                break;
            default:
                ((e86) obj).c();
                break;
        }
    }
}
