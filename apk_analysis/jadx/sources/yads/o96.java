package yads;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import androidx.core.view.ViewCompat;

/* JADX INFO: loaded from: classes6.dex */
public final class o96 extends AnimatorListenerAdapter {
    public final View a;

    public o96(View view) {
        this.a = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.a.setTranslationY(0.0f);
        ViewCompat.setClipBounds(this.a, null);
    }
}
