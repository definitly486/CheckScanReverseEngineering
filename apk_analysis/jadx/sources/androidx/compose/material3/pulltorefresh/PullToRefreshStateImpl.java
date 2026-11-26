package androidx.compose.material3.pulltorefresh;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.runtime.saveable.SaverKt;
import androidx.compose.runtime.saveable.SaverScope;
import defpackage.a32;
import defpackage.e02;
import defpackage.j59;
import defpackage.jh2;
import defpackage.kt2;
import defpackage.o44;
import defpackage.sc3;

/* JADX INFO: loaded from: classes2.dex */
public final class PullToRefreshStateImpl implements PullToRefreshState {
    public static final int $stable = 0;
    public static final Companion Companion = new Companion(null);
    private static final Saver<PullToRefreshStateImpl, Float> Saver = SaverKt.Saver(new kt2(1), new o44(2));
    private final Animatable<Float, AnimationVector1D> anim;

    public PullToRefreshStateImpl() {
        this(new Animatable(Float.valueOf(0.0f), VectorConvertersKt.getVectorConverter(sc3.a), null, null, 12, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Float Saver$lambda$0(SaverScope saverScope, PullToRefreshStateImpl pullToRefreshStateImpl) {
        return pullToRefreshStateImpl.anim.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final PullToRefreshStateImpl Saver$lambda$1(float f) {
        return new PullToRefreshStateImpl(new Animatable(Float.valueOf(f), VectorConvertersKt.getVectorConverter(sc3.a), null, null, 12, null));
    }

    @Override // androidx.compose.material3.pulltorefresh.PullToRefreshState
    public Object animateToHidden(e02<? super j59> e02Var) {
        Object objAnimateTo$default = Animatable.animateTo$default(this.anim, new Float(0.0f), null, null, null, e02Var, 14, null);
        return objAnimateTo$default == a32.COROUTINE_SUSPENDED ? objAnimateTo$default : j59.a;
    }

    @Override // androidx.compose.material3.pulltorefresh.PullToRefreshState
    public Object animateToThreshold(e02<? super j59> e02Var) {
        Object objAnimateTo$default = Animatable.animateTo$default(this.anim, new Float(1.0f), null, null, null, e02Var, 14, null);
        return objAnimateTo$default == a32.COROUTINE_SUSPENDED ? objAnimateTo$default : j59.a;
    }

    @Override // androidx.compose.material3.pulltorefresh.PullToRefreshState
    public float getDistanceFraction() {
        return this.anim.getValue().floatValue();
    }

    @Override // androidx.compose.material3.pulltorefresh.PullToRefreshState
    public boolean isAnimating() {
        return this.anim.isRunning();
    }

    @Override // androidx.compose.material3.pulltorefresh.PullToRefreshState
    public Object snapTo(float f, e02<? super j59> e02Var) {
        Object objSnapTo = this.anim.snapTo(new Float(f), e02Var);
        return objSnapTo == a32.COROUTINE_SUSPENDED ? objSnapTo : j59.a;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final Saver<PullToRefreshStateImpl, Float> getSaver() {
            return PullToRefreshStateImpl.Saver;
        }

        private Companion() {
        }
    }

    private PullToRefreshStateImpl(Animatable<Float, AnimationVector1D> animatable) {
        this.anim = animatable;
    }
}
