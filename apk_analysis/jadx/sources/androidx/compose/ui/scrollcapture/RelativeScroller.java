package androidx.compose.ui.scrollcapture;

import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.c9;
import defpackage.d;
import defpackage.e02;
import defpackage.f02;
import defpackage.j59;
import defpackage.kx6;
import defpackage.n7;
import defpackage.r57;
import defpackage.rz0;
import defpackage.w65;

/* JADX INFO: loaded from: classes2.dex */
final class RelativeScroller {
    private float scrollAmount;
    private final bm3<Float, e02<? super Float>, Object> scrollBy;
    private final int viewportSize;

    /* JADX INFO: renamed from: androidx.compose.ui.scrollcapture.RelativeScroller$scrollBy$1, reason: invalid class name */
    @bd2(c = "androidx.compose.ui.scrollcapture.RelativeScroller", f = "ComposeScrollCaptureCallback.android.kt", l = {296}, m = "scrollBy", v = 1)
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
            return RelativeScroller.this.scrollBy(0.0f, this);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public RelativeScroller(int i, bm3<? super Float, ? super e02<? super Float>, ? extends Object> bm3Var) {
        this.viewportSize = i;
        this.scrollBy = bm3Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object scrollBy(float f, e02<? super j59> e02Var) {
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
        Object objInvoke = anonymousClass1.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = anonymousClass1.label;
        if (i2 == 0) {
            r57.b(objInvoke);
            bm3<Float, e02<? super Float>, Object> bm3Var = this.scrollBy;
            Float f2 = new Float(f);
            anonymousClass1.label = 1;
            objInvoke = bm3Var.invoke(f2, anonymousClass1);
            if (objInvoke == a32Var) {
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(objInvoke);
        }
        this.scrollAmount += ((Number) objInvoke).floatValue();
        return j59.a;
    }

    public final float getScrollAmount() {
        return this.scrollAmount;
    }

    public final int mapOffsetToViewport(int i) {
        return kx6.f(i - w65.b(this.scrollAmount), 0, this.viewportSize);
    }

    public final void reset() {
        this.scrollAmount = 0.0f;
    }

    public final Object scrollRangeToCenter(int i, int i2, e02<? super j59> e02Var) {
        Object objScrollTo;
        if (i > i2) {
            c9.f(rz0.c(i, i2, "Expected min=", " ≤ max="));
            return null;
        }
        int i3 = i2 - i;
        int i4 = this.viewportSize;
        if (i3 > i4) {
            d.d(this.viewportSize, n7.c(i3, "Expected range (", ") to be ≤ viewportSize="));
            return null;
        }
        float f = i;
        float f2 = this.scrollAmount;
        return ((f < f2 || ((float) i2) > f2 + ((float) i4)) && (objScrollTo = scrollTo((float) (((i3 / 2) + i) - (i4 / 2)), e02Var)) == a32.COROUTINE_SUSPENDED) ? objScrollTo : j59.a;
    }

    public final Object scrollTo(float f, e02<? super j59> e02Var) {
        Object objScrollBy = scrollBy(f - this.scrollAmount, e02Var);
        return objScrollBy == a32.COROUTINE_SUSPENDED ? objScrollBy : j59.a;
    }
}
