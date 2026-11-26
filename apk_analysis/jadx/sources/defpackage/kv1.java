package defpackage;

import android.animation.Animator;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.airbnb.lottie.LottieAnimationView;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.databinding.ConfettiLayoutBinding;

/* JADX INFO: loaded from: classes5.dex */
public final class kv1 {

    public static final class a implements Animator.AnimatorListener {
        public final /* synthetic */ ConfettiLayoutBinding a;

        public a(ConfettiLayoutBinding confettiLayoutBinding) {
            this.a = confettiLayoutBinding;
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationCancel(Animator animator) {
            animator.getClass();
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            animator.getClass();
            ConstraintLayout root = this.a.getRoot();
            root.getClass();
            root.setVisibility(8);
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationRepeat(Animator animator) {
            animator.getClass();
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationStart(Animator animator) {
            animator.getClass();
        }
    }

    public static final void a(ConfettiLayoutBinding confettiLayoutBinding) {
        ConstraintLayout root = confettiLayoutBinding.getRoot();
        root.getClass();
        root.setVisibility(0);
        confettiLayoutBinding.lottieConfetti.setAnimation(R.raw.lottie_confetti);
        LottieAnimationView lottieAnimationView = confettiLayoutBinding.lottieConfetti;
        lottieAnimationView.s.c.addListener(new a(confettiLayoutBinding));
        LottieAnimationView lottieAnimationView2 = confettiLayoutBinding.lottieConfetti;
        lottieAnimationView2.y.add(LottieAnimationView.a.PLAY_OPTION);
        lottieAnimationView2.s.k();
    }
}
