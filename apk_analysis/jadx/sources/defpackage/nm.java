package defpackage;

import android.animation.ObjectAnimator;
import android.graphics.drawable.Drawable;
import com.google.firebase.perf.transport.TransportManager;
import yads.m94;
import yads.t70;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class nm implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ nm(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                ObjectAnimator objectAnimatorOfInt = ObjectAnimator.ofInt((Drawable) obj, "alpha", 255, 0);
                objectAnimatorOfInt.setDuration(300L);
                objectAnimatorOfInt.start();
                break;
            case 1:
                ((TransportManager) obj).lambda$onUpdateAppState$1();
                break;
            default:
                m94.a((t70) obj);
                break;
        }
    }
}
