package yads;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import androidx.core.view.ViewCompat;

/* JADX INFO: loaded from: classes2.dex */
public final class ht2 extends AnimatorListenerAdapter {
    public final View a;
    public final float b;
    public boolean c;

    public ht2(View view, float f) {
        this.a = view;
        this.b = f;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.a.setAlpha(this.b);
        if (this.c) {
            this.a.setLayerType(0, null);
        }
        animator.removeListener(this);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        this.a.setVisibility(0);
        if (ViewCompat.hasOverlappingRendering(this.a) && this.a.getLayerType() == 0) {
            this.c = true;
            this.a.setLayerType(2, null);
        }
    }
}
