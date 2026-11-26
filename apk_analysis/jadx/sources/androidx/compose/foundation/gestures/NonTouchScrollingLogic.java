package androidx.compose.foundation.gestures;

import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Velocity;
import defpackage.a32;
import defpackage.ah;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.r57;
import defpackage.rm9;
import defpackage.y22;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class NonTouchScrollingLogic {
    public static final int $stable = 8;
    private Density density;
    private boolean isScrolling;
    private final bm3<Velocity, e02<? super j59>, Object> onScrollStopped;
    private final ScrollingLogic scrollingLogic;
    private final DifferentialVelocityTracker velocityTracker = new DifferentialVelocityTracker();

    /* JADX WARN: Multi-variable type inference failed */
    public NonTouchScrollingLogic(ScrollingLogic scrollingLogic, bm3<? super Velocity, ? super e02<? super j59>, ? extends Object> bm3Var, Density density) {
        this.scrollingLogic = scrollingLogic;
        this.onScrollStopped = bm3Var;
        this.density = density;
    }

    public final void consume$foundation(PointerEvent pointerEvent) {
        List<PointerInputChange> changes = pointerEvent.getChanges();
        int size = changes.size();
        for (int i = 0; i < size; i++) {
            changes.get(i).consume();
        }
    }

    public final Density getDensity() {
        return this.density;
    }

    public final bm3<Velocity, e02<? super j59>, Object> getOnScrollStopped() {
        return this.onScrollStopped;
    }

    public final ScrollingLogic getScrollingLogic() {
        return this.scrollingLogic;
    }

    public final DifferentialVelocityTracker getVelocityTracker$foundation() {
        return this.velocityTracker;
    }

    public final boolean isConsumed$foundation(PointerEvent pointerEvent) {
        List<PointerInputChange> changes = pointerEvent.getChanges();
        int size = changes.size();
        for (int i = 0; i < size; i++) {
            if (changes.get(i).isConsumed()) {
                return true;
            }
        }
        return false;
    }

    public final boolean isScrolling$foundation() {
        return this.isScrolling;
    }

    /* JADX INFO: renamed from: onPointerEvent-H0pRuoY */
    public abstract void mo1554onPointerEventH0pRuoY(PointerEvent pointerEvent, PointerEventPass pointerEventPass, long j);

    public final void setDensity(Density density) {
        this.density = density;
    }

    public final void setScrolling$foundation(boolean z) {
        this.isScrolling = z;
    }

    public abstract void startReceivingEvents(y22 y22Var);

    public final void updateDensity(Density density) {
        this.density = density;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object userScroll$foundation(bm3<? super NestedScrollScope, ? super e02<? super j59>, ? extends Object> bm3Var, e02<? super j59> e02Var) {
        NonTouchScrollingLogic$userScroll$1 nonTouchScrollingLogic$userScroll$1;
        if (e02Var instanceof NonTouchScrollingLogic$userScroll$1) {
            nonTouchScrollingLogic$userScroll$1 = (NonTouchScrollingLogic$userScroll$1) e02Var;
            int i = nonTouchScrollingLogic$userScroll$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                nonTouchScrollingLogic$userScroll$1.label = i - Integer.MIN_VALUE;
            } else {
                nonTouchScrollingLogic$userScroll$1 = new NonTouchScrollingLogic$userScroll$1(this, e02Var);
            }
        } else {
            nonTouchScrollingLogic$userScroll$1 = new NonTouchScrollingLogic$userScroll$1(this, e02Var);
        }
        Object obj = nonTouchScrollingLogic$userScroll$1.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = nonTouchScrollingLogic$userScroll$1.label;
        if (i2 == 0) {
            r57.b(obj);
            this.isScrolling = true;
            NonTouchScrollingLogic$userScroll$2 nonTouchScrollingLogic$userScroll$2 = new NonTouchScrollingLogic$userScroll$2(this, bm3Var, null);
            nonTouchScrollingLogic$userScroll$1.label = 1;
            if (rm9.c(nonTouchScrollingLogic$userScroll$2, nonTouchScrollingLogic$userScroll$1) == a32Var) {
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
        }
        this.isScrolling = false;
        return j59.a;
    }
}
