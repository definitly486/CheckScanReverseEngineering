package defpackage;

import android.animation.Animator;
import android.view.View;
import android.view.ViewAnimationUtils;
import androidx.compose.ui.text.input.TextInputServiceAndroid;
import com.google.android.material.carousel.CarouselLayoutManager;
import com.my.tracker.obfuscated.a;
import java.util.zip.ZipInputStream;
import yads.gd6;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class h51 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ h51(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                ((CarouselLayoutManager) obj).refreshKeylineState();
                break;
            case 1:
                ib9.b((ZipInputStream) obj);
                break;
            case 2:
                TextInputServiceAndroid.sendInputCommand$lambda$0((TextInputServiceAndroid) obj);
                break;
            case 3:
                View view = (View) obj;
                if (view.isAttachedToWindow()) {
                    view.setVisibility(0);
                    Animator animatorCreateCircularReveal = ViewAnimationUtils.createCircularReveal(view, (view.getRight() + view.getLeft()) / 2, (view.getBottom() + view.getTop()) / 2, 0.0f, Math.max(view.getWidth(), view.getHeight()));
                    animatorCreateCircularReveal.setDuration(500L);
                    animatorCreateCircularReveal.start();
                }
                break;
            case 4:
                ((a) obj).d();
                break;
            default:
                gd6.a((gd6) obj);
                break;
        }
    }
}
