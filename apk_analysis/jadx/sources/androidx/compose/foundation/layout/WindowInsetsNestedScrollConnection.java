package androidx.compose.foundation.layout;

import android.graphics.Insets;
import android.os.CancellationSignal;
import android.view.View;
import android.view.WindowInsetsAnimationControlListener;
import android.view.WindowInsetsAnimationController;
import android.view.WindowInsetsController;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.nestedscroll.NestedScrollConnection;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Velocity;
import androidx.media3.muxer.MuxerUtil;
import defpackage.a31;
import defpackage.a32;
import defpackage.aa4;
import defpackage.ah;
import defpackage.c31;
import defpackage.dm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.kx6;
import defpackage.mb4;
import defpackage.o07;
import defpackage.o22;
import defpackage.r57;
import defpackage.z22;
import defpackage.zya;

/* JADX INFO: loaded from: classes.dex */
final class WindowInsetsNestedScrollConnection implements NestedScrollConnection, WindowInsetsAnimationControlListener {
    private WindowInsetsAnimationController animationController;
    private mb4 animationJob;
    private final CancellationSignal cancellationSignal = new CancellationSignal();
    private a31<? super WindowInsetsAnimationController> continuation;
    private final Density density;
    private boolean isControllerRequested;
    private float partialConsumption;
    private final SideCalculator sideCalculator;
    private final View view;
    private final AndroidWindowInsets windowInsets;

    public WindowInsetsNestedScrollConnection(AndroidWindowInsets androidWindowInsets, View view, SideCalculator sideCalculator, Density density) {
        this.windowInsets = androidWindowInsets;
        this.view = view;
        this.sideCalculator = sideCalculator;
        this.density = density;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void adjustInsets(float f) {
        WindowInsetsAnimationController windowInsetsAnimationController = this.animationController;
        if (windowInsetsAnimationController != null) {
            windowInsetsAnimationController.setInsetsAndAlpha(this.sideCalculator.adjustInsets(windowInsetsAnimationController.getCurrentInsets(), Math.round(f)), 1.0f, 0.0f);
        }
    }

    private final void animationEnded() {
        WindowInsetsAnimationController windowInsetsAnimationController;
        WindowInsetsAnimationController windowInsetsAnimationController2 = this.animationController;
        if (windowInsetsAnimationController2 != null && windowInsetsAnimationController2.isReady() && (windowInsetsAnimationController = this.animationController) != null) {
            windowInsetsAnimationController.finish(this.windowInsets.isVisible());
        }
        this.animationController = null;
        a31<? super WindowInsetsAnimationController> a31Var = this.continuation;
        if (a31Var != null) {
            a31Var.q(null, new dm3() { // from class: androidx.compose.foundation.layout.WindowInsetsNestedScrollConnection.animationEnded.1
                @Override // defpackage.dm3
                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
                    invoke((Throwable) obj, (Void) obj2, (o22) obj3);
                    return j59.a;
                }

                public final void invoke(Throwable th, Void r2, o22 o22Var) {
                }
            });
        }
        this.continuation = null;
        mb4 mb4Var = this.animationJob;
        if (mb4Var != null) {
            mb4Var.cancel(new WindowInsetsAnimationCancelledException());
        }
        this.animationJob = null;
        this.partialConsumption = 0.0f;
        this.isControllerRequested = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:8:0x001c  */
    /* JADX INFO: renamed from: fling-huYlsQE, reason: not valid java name */
    public final Object m2128flinghuYlsQE(long j, float f, boolean z, e02<? super Velocity> e02Var) throws Throwable {
        WindowInsetsNestedScrollConnection$fling$1 windowInsetsNestedScrollConnection$fling$1;
        Object animationController;
        long j2;
        o07 o07Var;
        long j3;
        long j4;
        float f2 = f;
        if (e02Var instanceof WindowInsetsNestedScrollConnection$fling$1) {
            windowInsetsNestedScrollConnection$fling$1 = (WindowInsetsNestedScrollConnection$fling$1) e02Var;
            int i = windowInsetsNestedScrollConnection$fling$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                windowInsetsNestedScrollConnection$fling$1.label = i - Integer.MIN_VALUE;
            } else {
                windowInsetsNestedScrollConnection$fling$1 = new WindowInsetsNestedScrollConnection$fling$1(this, e02Var);
            }
        } else {
            windowInsetsNestedScrollConnection$fling$1 = new WindowInsetsNestedScrollConnection$fling$1(this, e02Var);
        }
        WindowInsetsNestedScrollConnection$fling$1 windowInsetsNestedScrollConnection$fling$2 = windowInsetsNestedScrollConnection$fling$1;
        Object obj = windowInsetsNestedScrollConnection$fling$2.result;
        Object obj2 = a32.COROUTINE_SUSPENDED;
        int i2 = windowInsetsNestedScrollConnection$fling$2.label;
        if (i2 == 0) {
            r57.b(obj);
            mb4 mb4Var = this.animationJob;
            if (mb4Var != null) {
                mb4Var.cancel(new WindowInsetsAnimationCancelledException());
            }
            this.animationJob = null;
            this.partialConsumption = 0.0f;
            if ((f2 == 0.0f && !z) || (this.animationController == null && this.windowInsets.isVisible() == z)) {
                return Velocity.m9271boximpl(Velocity.Companion.m9291getZero9UxMQ8M());
            }
            windowInsetsNestedScrollConnection$fling$2.J$0 = j;
            windowInsetsNestedScrollConnection$fling$2.F$0 = f2;
            windowInsetsNestedScrollConnection$fling$2.label = 1;
            animationController = getAnimationController(windowInsetsNestedScrollConnection$fling$2);
            if (animationController != obj2) {
                j2 = j;
            }
            return obj2;
        }
        if (i2 != 1) {
            if (i2 == 2) {
                j3 = windowInsetsNestedScrollConnection$fling$2.J$0;
                o07Var = (o07) windowInsetsNestedScrollConnection$fling$2.L$0;
                r57.b(obj);
                return Velocity.m9271boximpl(this.sideCalculator.mo2081consumedVelocityQWom1Mo(j3, o07Var.b));
            }
            if (i2 != 3) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            j4 = windowInsetsNestedScrollConnection$fling$2.J$0;
            r57.b(obj);
            return Velocity.m9271boximpl(this.sideCalculator.mo2081consumedVelocityQWom1Mo(j4, 0.0f));
        }
        f2 = windowInsetsNestedScrollConnection$fling$2.F$0;
        j2 = windowInsetsNestedScrollConnection$fling$2.J$0;
        r57.b(obj);
        animationController = obj;
        float f3 = f2;
        WindowInsetsAnimationController windowInsetsAnimationController = (WindowInsetsAnimationController) animationController;
        if (windowInsetsAnimationController == null) {
            return Velocity.m9271boximpl(Velocity.Companion.m9291getZero9UxMQ8M());
        }
        int iValueOf = this.sideCalculator.valueOf(windowInsetsAnimationController.getHiddenStateInsets());
        int iValueOf2 = this.sideCalculator.valueOf(windowInsetsAnimationController.getShownStateInsets());
        int iValueOf3 = this.sideCalculator.valueOf(windowInsetsAnimationController.getCurrentInsets());
        if ((f3 <= 0.0f && iValueOf3 == iValueOf) || (f3 >= 0.0f && iValueOf3 == iValueOf2)) {
            windowInsetsAnimationController.finish(iValueOf3 == iValueOf2);
            this.animationController = null;
            return Velocity.m9271boximpl(Velocity.Companion.m9291getZero9UxMQ8M());
        }
        SplineBasedFloatDecayAnimationSpec splineBasedFloatDecayAnimationSpec = new SplineBasedFloatDecayAnimationSpec(this.density);
        float fFlingDistance = iValueOf3 + splineBasedFloatDecayAnimationSpec.flingDistance(f3);
        float f4 = iValueOf;
        boolean z2 = (fFlingDistance - f4) / ((float) (iValueOf2 - iValueOf)) > 0.5f;
        int i3 = z2 ? iValueOf2 : iValueOf;
        if (fFlingDistance > iValueOf2 || fFlingDistance < f4) {
            boolean z3 = z2;
            o07 o07Var2 = new o07();
            WindowInsetsNestedScrollConnection$fling$2 windowInsetsNestedScrollConnection$fling$3 = new WindowInsetsNestedScrollConnection$fling$2(this, iValueOf3, f3, splineBasedFloatDecayAnimationSpec, iValueOf, iValueOf2, o07Var2, windowInsetsAnimationController, z3, null);
            windowInsetsNestedScrollConnection$fling$2.L$0 = o07Var2;
            windowInsetsNestedScrollConnection$fling$2.J$0 = j2;
            windowInsetsNestedScrollConnection$fling$2.label = 2;
            if (z22.c(windowInsetsNestedScrollConnection$fling$3, windowInsetsNestedScrollConnection$fling$2) != obj2) {
                o07Var = o07Var2;
                j3 = j2;
                return Velocity.m9271boximpl(this.sideCalculator.mo2081consumedVelocityQWom1Mo(j3, o07Var.b));
            }
        } else {
            WindowInsetsNestedScrollConnection$fling$3 windowInsetsNestedScrollConnection$fling$4 = new WindowInsetsNestedScrollConnection$fling$3(this, iValueOf3, i3, f3, windowInsetsAnimationController, z2, null);
            windowInsetsNestedScrollConnection$fling$2.J$0 = j2;
            windowInsetsNestedScrollConnection$fling$2.label = 3;
            if (z22.c(windowInsetsNestedScrollConnection$fling$4, windowInsetsNestedScrollConnection$fling$2) != obj2) {
                j4 = j2;
                return Velocity.m9271boximpl(this.sideCalculator.mo2081consumedVelocityQWom1Mo(j4, 0.0f));
            }
        }
        return obj2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object getAnimationController(e02<? super WindowInsetsAnimationController> e02Var) throws Throwable {
        WindowInsetsAnimationController windowInsetsAnimationController = this.animationController;
        if (windowInsetsAnimationController != null) {
            return windowInsetsAnimationController;
        }
        c31 c31Var = new c31(1, zya.b(e02Var));
        c31Var.u();
        this.continuation = c31Var;
        requestAnimationController();
        Object objS = c31Var.s();
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        return objS;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 onReady$lambda$0(Throwable th, WindowInsetsAnimationController windowInsetsAnimationController, o22 o22Var) {
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void requestAnimationController() {
        if (this.isControllerRequested) {
            return;
        }
        this.isControllerRequested = true;
        WindowInsetsController windowInsetsController = this.view.getWindowInsetsController();
        if (windowInsetsController != null) {
            windowInsetsController.controlWindowInsetsAnimation(this.windowInsets.getType$foundation_layout(), -1L, null, this.cancellationSignal, this);
        }
    }

    /* JADX INFO: renamed from: scroll-8S9VItk, reason: not valid java name */
    private final long m2129scroll8S9VItk(long j, float f) {
        mb4 mb4Var = this.animationJob;
        if (mb4Var != null) {
            mb4Var.cancel(new WindowInsetsAnimationCancelledException());
            this.animationJob = null;
        }
        WindowInsetsAnimationController windowInsetsAnimationController = this.animationController;
        if (f != 0.0f) {
            if (this.windowInsets.isVisible() != (f > 0.0f) || windowInsetsAnimationController != null) {
                if (windowInsetsAnimationController == null) {
                    this.partialConsumption = 0.0f;
                    requestAnimationController();
                    return this.sideCalculator.mo2080consumedOffsetsMKHz9U(j);
                }
                int iValueOf = this.sideCalculator.valueOf(windowInsetsAnimationController.getHiddenStateInsets());
                int iValueOf2 = this.sideCalculator.valueOf(windowInsetsAnimationController.getShownStateInsets());
                Insets currentInsets = windowInsetsAnimationController.getCurrentInsets();
                int iValueOf3 = this.sideCalculator.valueOf(currentInsets);
                if (iValueOf3 == (f > 0.0f ? iValueOf2 : iValueOf)) {
                    this.partialConsumption = 0.0f;
                    return Offset.Companion.m6003getZeroF1C5BW0();
                }
                float f2 = iValueOf3 + f + this.partialConsumption;
                int iF = kx6.f(Math.round(f2), iValueOf, iValueOf2);
                this.partialConsumption = f2 - Math.round(f2);
                if (iF != iValueOf3) {
                    windowInsetsAnimationController.setInsetsAndAlpha(this.sideCalculator.adjustInsets(currentInsets, iF), 1.0f, 0.0f);
                }
                return this.sideCalculator.mo2080consumedOffsetsMKHz9U(j);
            }
        }
        return Offset.Companion.m6003getZeroF1C5BW0();
    }

    public final void dispose() {
        a31<? super WindowInsetsAnimationController> a31Var = this.continuation;
        if (a31Var != null) {
            a31Var.q(null, new dm3() { // from class: androidx.compose.foundation.layout.WindowInsetsNestedScrollConnection.dispose.1
                @Override // defpackage.dm3
                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
                    invoke((Throwable) obj, (Void) obj2, (o22) obj3);
                    return j59.a;
                }

                public final void invoke(Throwable th, Void r2, o22 o22Var) {
                }
            });
        }
        mb4 mb4Var = this.animationJob;
        if (mb4Var != null) {
            mb4Var.cancel(null);
        }
        WindowInsetsAnimationController windowInsetsAnimationController = this.animationController;
        if (windowInsetsAnimationController != null) {
            windowInsetsAnimationController.finish(!aa4.e(windowInsetsAnimationController.getCurrentInsets(), windowInsetsAnimationController.getHiddenStateInsets()));
        }
    }

    public final Density getDensity() {
        return this.density;
    }

    public final SideCalculator getSideCalculator() {
        return this.sideCalculator;
    }

    public final View getView() {
        return this.view;
    }

    public final AndroidWindowInsets getWindowInsets() {
        return this.windowInsets;
    }

    public void onCancelled(WindowInsetsAnimationController windowInsetsAnimationController) {
        animationEnded();
    }

    public void onFinished(WindowInsetsAnimationController windowInsetsAnimationController) {
        animationEnded();
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /* JADX INFO: renamed from: onPostFling-RZ2iAVY */
    public Object mo1601onPostFlingRZ2iAVY(long j, long j2, e02<? super Velocity> e02Var) {
        return m2128flinghuYlsQE(j2, this.sideCalculator.showMotion(Velocity.m9280getXimpl(j2), Velocity.m9281getYimpl(j2)), true, e02Var);
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /* JADX INFO: renamed from: onPostScroll-DzOQY0M */
    public long mo1602onPostScrollDzOQY0M(long j, long j2, int i) {
        return m2129scroll8S9VItk(j2, this.sideCalculator.showMotion(Float.intBitsToFloat((int) (j2 >> 32)), Float.intBitsToFloat((int) (MuxerUtil.UNSIGNED_INT_MAX_VALUE & j2))));
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /* JADX INFO: renamed from: onPreFling-QWom1Mo, reason: not valid java name */
    public Object mo2130onPreFlingQWom1Mo(long j, e02<? super Velocity> e02Var) {
        return m2128flinghuYlsQE(j, this.sideCalculator.hideMotion(Velocity.m9280getXimpl(j), Velocity.m9281getYimpl(j)), false, e02Var);
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /* JADX INFO: renamed from: onPreScroll-OzD1aCk, reason: not valid java name */
    public long mo2131onPreScrollOzD1aCk(long j, int i) {
        return m2129scroll8S9VItk(j, this.sideCalculator.hideMotion(Float.intBitsToFloat((int) (j >> 32)), Float.intBitsToFloat((int) (MuxerUtil.UNSIGNED_INT_MAX_VALUE & j))));
    }

    public void onReady(WindowInsetsAnimationController windowInsetsAnimationController, int i) {
        this.animationController = windowInsetsAnimationController;
        this.isControllerRequested = false;
        a31<? super WindowInsetsAnimationController> a31Var = this.continuation;
        if (a31Var != null) {
            a31Var.q(windowInsetsAnimationController, new i0());
        }
        this.continuation = null;
    }
}
