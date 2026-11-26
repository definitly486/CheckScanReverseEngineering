package defpackage;

import androidx.dynamicanimation.animation.AnimationHandler;
import androidx.fragment.app.FragmentManager;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class jm implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ jm(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                ((AnimationHandler) obj).lambda$new$0();
                break;
            default:
                ((FragmentManager) obj).lambda$cancelBackStackTransition$4();
                break;
        }
    }
}
