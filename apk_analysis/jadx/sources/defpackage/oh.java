package defpackage;

import androidx.compose.ui.platform.AndroidComposeView;
import com.warefly.checkscan.tasks.ui.images.AnimatedImageView;
import yads.q25;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class oh implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ oh(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                ((AndroidComposeView) obj).invalidateDescendants();
                return;
            case 1:
                AnimatedImageView animatedImageView = (AnimatedImageView) obj;
                int i2 = AnimatedImageView.C;
                animatedImageView.d();
                animatedImageView.c();
                synchronized (animatedImageView) {
                    try {
                        if (!animatedImageView.b.isEmpty() && !animatedImageView.n.get()) {
                            animatedImageView.e();
                        }
                        j59 j59Var = j59.a;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return;
            case 2:
                dc6 dc6Var = (dc6) obj;
                dc6Var.d.addObserver(dc6Var);
                return;
            default:
                q25.a((q25) obj);
                return;
        }
    }
}
