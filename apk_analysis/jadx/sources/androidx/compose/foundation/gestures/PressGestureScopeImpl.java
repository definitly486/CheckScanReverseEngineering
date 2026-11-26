package androidx.compose.foundation.gestures;

import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DpRect;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.ch5;
import defpackage.e02;
import defpackage.f02;
import defpackage.j59;
import defpackage.r57;
import defpackage.yg5;

/* JADX INFO: loaded from: classes.dex */
public final class PressGestureScopeImpl implements PressGestureScope, Density {
    public static final int $stable = 0;
    private final /* synthetic */ Density $$delegate_0;
    private boolean isCanceled;
    private boolean isReleased;
    private final yg5 mutex = new ch5();

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.PressGestureScopeImpl$awaitRelease$1, reason: invalid class name */
    @bd2(c = "androidx.compose.foundation.gestures.PressGestureScopeImpl", f = "TapGestureDetector.kt", l = {TypedValues.PositionType.TYPE_CURVE_FIT}, m = "awaitRelease", v = 1)
    public static final class AnonymousClass1 extends f02 {
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(e02<? super AnonymousClass1> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return PressGestureScopeImpl.this.awaitRelease(this);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.PressGestureScopeImpl$reset$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.compose.foundation.gestures.PressGestureScopeImpl", f = "TapGestureDetector.kt", l = {TypedValues.PositionType.TYPE_DRAWPATH}, m = "reset", v = 1)
    public static final class C04911 extends f02 {
        int label;
        /* synthetic */ Object result;

        public C04911(e02<? super C04911> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return PressGestureScopeImpl.this.reset(this);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.PressGestureScopeImpl$tryAwaitRelease$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.compose.foundation.gestures.PressGestureScopeImpl", f = "TapGestureDetector.kt", l = {515}, m = "tryAwaitRelease", v = 1)
    public static final class C04921 extends f02 {
        int label;
        /* synthetic */ Object result;

        public C04921(e02<? super C04921> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return PressGestureScopeImpl.this.tryAwaitRelease(this);
        }
    }

    public PressGestureScopeImpl(Density density) {
        this.$$delegate_0 = density;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // androidx.compose.foundation.gestures.PressGestureScope
    public Object awaitRelease(e02<? super j59> e02Var) {
        AnonymousClass1 anonymousClass1;
        if (e02Var instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) e02Var;
            int i = anonymousClass1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label = i - Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(e02Var);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(e02Var);
        }
        Object objTryAwaitRelease = anonymousClass1.result;
        Object obj = a32.COROUTINE_SUSPENDED;
        int i2 = anonymousClass1.label;
        if (i2 == 0) {
            r57.b(objTryAwaitRelease);
            anonymousClass1.label = 1;
            objTryAwaitRelease = tryAwaitRelease(anonymousClass1);
            if (objTryAwaitRelease == obj) {
                return obj;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(objTryAwaitRelease);
        }
        if (((Boolean) objTryAwaitRelease).booleanValue()) {
            return j59.a;
        }
        throw new GestureCancellationException("The press gesture was canceled.");
    }

    public final void cancel() {
        this.isCanceled = true;
        if (this.mutex.isLocked()) {
            this.mutex.unlock(null);
        }
    }

    @Override // androidx.compose.ui.unit.Density
    public float getDensity() {
        return this.$$delegate_0.getDensity();
    }

    @Override // androidx.compose.ui.unit.FontScaling
    public float getFontScale() {
        return this.$$delegate_0.getFontScale();
    }

    public final void release() {
        this.isReleased = true;
        if (this.mutex.isLocked()) {
            this.mutex.unlock(null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object reset(e02<? super j59> e02Var) {
        C04911 c04911;
        if (e02Var instanceof C04911) {
            c04911 = (C04911) e02Var;
            int i = c04911.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c04911.label = i - Integer.MIN_VALUE;
            } else {
                c04911 = new C04911(e02Var);
            }
        } else {
            c04911 = new C04911(e02Var);
        }
        Object obj = c04911.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = c04911.label;
        if (i2 == 0) {
            r57.b(obj);
            yg5 yg5Var = this.mutex;
            c04911.label = 1;
            if (yg5Var.lock(null, c04911) == a32Var) {
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
        }
        this.isReleased = false;
        this.isCanceled = false;
        return j59.a;
    }

    @Override // androidx.compose.ui.unit.Density
    /* JADX INFO: renamed from: roundToPx--R2X_6o */
    public int mo1427roundToPxR2X_6o(long j) {
        return this.$$delegate_0.mo1427roundToPxR2X_6o(j);
    }

    @Override // androidx.compose.ui.unit.Density
    /* JADX INFO: renamed from: roundToPx-0680j_4 */
    public int mo1428roundToPx0680j_4(float f) {
        return this.$$delegate_0.mo1428roundToPx0680j_4(f);
    }

    @Override // androidx.compose.ui.unit.FontScaling
    /* JADX INFO: renamed from: toDp-GaN1DYA */
    public float mo1429toDpGaN1DYA(long j) {
        return this.$$delegate_0.mo1429toDpGaN1DYA(j);
    }

    @Override // androidx.compose.ui.unit.Density
    /* JADX INFO: renamed from: toDp-u2uoSUM */
    public float mo1430toDpu2uoSUM(float f) {
        return this.$$delegate_0.mo1430toDpu2uoSUM(f);
    }

    @Override // androidx.compose.ui.unit.Density
    /* JADX INFO: renamed from: toDpSize-k-rfVVM */
    public long mo1432toDpSizekrfVVM(long j) {
        return this.$$delegate_0.mo1432toDpSizekrfVVM(j);
    }

    @Override // androidx.compose.ui.unit.Density
    /* JADX INFO: renamed from: toPx--R2X_6o */
    public float mo1433toPxR2X_6o(long j) {
        return this.$$delegate_0.mo1433toPxR2X_6o(j);
    }

    @Override // androidx.compose.ui.unit.Density
    /* JADX INFO: renamed from: toPx-0680j_4 */
    public float mo1434toPx0680j_4(float f) {
        return this.$$delegate_0.mo1434toPx0680j_4(f);
    }

    @Override // androidx.compose.ui.unit.Density
    public Rect toRect(DpRect dpRect) {
        return this.$$delegate_0.toRect(dpRect);
    }

    @Override // androidx.compose.ui.unit.Density
    /* JADX INFO: renamed from: toSize-XkaWNTQ */
    public long mo1435toSizeXkaWNTQ(long j) {
        return this.$$delegate_0.mo1435toSizeXkaWNTQ(j);
    }

    @Override // androidx.compose.ui.unit.FontScaling
    /* JADX INFO: renamed from: toSp-0xMU5do */
    public long mo1436toSp0xMU5do(float f) {
        return this.$$delegate_0.mo1436toSp0xMU5do(f);
    }

    @Override // androidx.compose.ui.unit.Density
    /* JADX INFO: renamed from: toSp-kPz2Gy4 */
    public long mo1437toSpkPz2Gy4(float f) {
        return this.$$delegate_0.mo1437toSpkPz2Gy4(f);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // androidx.compose.foundation.gestures.PressGestureScope
    public Object tryAwaitRelease(e02<? super Boolean> e02Var) {
        C04921 c04921;
        if (e02Var instanceof C04921) {
            c04921 = (C04921) e02Var;
            int i = c04921.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c04921.label = i - Integer.MIN_VALUE;
            } else {
                c04921 = new C04921(e02Var);
            }
        } else {
            c04921 = new C04921(e02Var);
        }
        Object obj = c04921.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = c04921.label;
        if (i2 == 0) {
            r57.b(obj);
            if (!this.isReleased && !this.isCanceled) {
                yg5 yg5Var = this.mutex;
                c04921.label = 1;
                if (yg5Var.lock(null, c04921) == a32Var) {
                    return a32Var;
                }
            }
            return Boolean.valueOf(this.isReleased);
        }
        if (i2 != 1) {
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        r57.b(obj);
        this.mutex.unlock(null);
        return Boolean.valueOf(this.isReleased);
    }

    @Override // androidx.compose.ui.unit.Density
    /* JADX INFO: renamed from: toDp-u2uoSUM */
    public float mo1431toDpu2uoSUM(int i) {
        return this.$$delegate_0.mo1431toDpu2uoSUM(i);
    }

    @Override // androidx.compose.ui.unit.Density
    /* JADX INFO: renamed from: toSp-kPz2Gy4 */
    public long mo1438toSpkPz2Gy4(int i) {
        return this.$$delegate_0.mo1438toSpkPz2Gy4(i);
    }
}
