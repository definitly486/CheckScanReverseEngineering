package defpackage;

import androidx.vectordrawable.graphics.drawable.AnimatedVectorDrawableCompat;
import com.my.target.j0;
import yads.cj0;
import yads.is5;
import yads.m94;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class om implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ om(Object obj, int i) {
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
            case 1:
                ((d86) obj).c();
                break;
            case 2:
                ((cj0) obj).d();
                break;
            case 3:
                ((is5) obj).c();
                break;
            case 4:
                j0 j0Var = (j0) obj;
                long j = j0Var.h - 200;
                j0Var.h = j;
                if (j > 0) {
                    j0Var.b();
                } else {
                    j0Var.a();
                }
                break;
            default:
                m94.a((m94) obj);
                break;
        }
    }
}
