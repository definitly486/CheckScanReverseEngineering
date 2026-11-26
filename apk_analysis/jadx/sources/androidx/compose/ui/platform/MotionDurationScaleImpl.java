package androidx.compose.ui.platform;

import android.content.Context;
import androidx.compose.runtime.MutableFloatState;
import androidx.compose.runtime.PrimitiveSnapshotStateKt;
import androidx.compose.ui.MotionDurationScale;
import defpackage.a32;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.h8;
import defpackage.id3;
import defpackage.j59;
import defpackage.mb4;
import defpackage.o22;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;
import defpackage.y68;

/* JADX INFO: loaded from: classes2.dex */
final class MotionDurationScaleImpl implements MotionDurationScale {
    private final MutableFloatState _scaleFactor$delegate = PrimitiveSnapshotStateKt.mutableFloatStateOf(1.0f);
    private final Context applicationContext;
    private y22 coroutineScope;
    private mb4 job;

    /* JADX INFO: renamed from: androidx.compose.ui.platform.MotionDurationScaleImpl$startObservingSystemScaleFactor$1, reason: invalid class name */
    @bd2(c = "androidx.compose.ui.platform.MotionDurationScaleImpl$startObservingSystemScaleFactor$1", f = "WindowRecomposer.android.kt", l = {446}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        final /* synthetic */ y68<Float> $durationScaleStateFlow;
        int label;
        final /* synthetic */ MotionDurationScaleImpl this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(y68<Float> y68Var, MotionDurationScaleImpl motionDurationScaleImpl, e02<? super AnonymousClass1> e02Var) {
            super(2, e02Var);
            this.$durationScaleStateFlow = y68Var;
            this.this$0 = motionDurationScaleImpl;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new AnonymousClass1(this.$durationScaleStateFlow, this.this$0, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((AnonymousClass1) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                y68<Float> y68Var = this.$durationScaleStateFlow;
                final MotionDurationScaleImpl motionDurationScaleImpl = this.this$0;
                id3<? super Float> id3Var = new id3() { // from class: androidx.compose.ui.platform.MotionDurationScaleImpl.startObservingSystemScaleFactor.1.1
                    @Override // defpackage.id3
                    public /* bridge */ /* synthetic */ Object emit(Object obj2, e02 e02Var) {
                        return emit(((Number) obj2).floatValue(), (e02<? super j59>) e02Var);
                    }

                    public final Object emit(float f, e02<? super j59> e02Var) {
                        motionDurationScaleImpl.set_scaleFactor(f);
                        return j59.a;
                    }
                };
                this.label = 1;
                if (y68Var.collect(id3Var, this) == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            h8.d();
            return null;
        }
    }

    public MotionDurationScaleImpl(Context context) {
        this.applicationContext = context;
    }

    private final float get_scaleFactor() {
        return this._scaleFactor$delegate.getFloatValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void set_scaleFactor(float f) {
        this._scaleFactor$delegate.setFloatValue(f);
    }

    private final mb4 startObservingSystemScaleFactor() {
        y68 animationScaleFlowFor = WindowRecomposer_androidKt.getAnimationScaleFlowFor(this.applicationContext);
        set_scaleFactor(((Number) animationScaleFlowFor.getValue()).floatValue());
        y22 y22Var = this.coroutineScope;
        if (y22Var != null) {
            return av0.c(y22Var, null, null, new AnonymousClass1(animationScaleFlowFor, this, null), 3);
        }
        ah.f("MotionDurationScale scale factor requested before recomposer loop start");
        return null;
    }

    @Override // androidx.compose.ui.MotionDurationScale, defpackage.o22
    public /* bridge */ <R> R fold(R r, bm3<? super R, ? super o22.a, ? extends R> bm3Var) {
        return (R) MotionDurationScale.DefaultImpls.fold(this, r, bm3Var);
    }

    @Override // androidx.compose.ui.MotionDurationScale, defpackage.o22
    public /* bridge */ <E extends o22.a> E get(o22.b<E> bVar) {
        return (E) MotionDurationScale.DefaultImpls.get(this, bVar);
    }

    public final y22 getCoroutineScope() {
        return this.coroutineScope;
    }

    public final mb4 getJob() {
        return this.job;
    }

    @Override // androidx.compose.ui.MotionDurationScale
    public float getScaleFactor() {
        if (this.job == null) {
            this.job = startObservingSystemScaleFactor();
        }
        return get_scaleFactor();
    }

    @Override // androidx.compose.ui.MotionDurationScale, defpackage.o22
    public /* bridge */ o22 minusKey(o22.b<?> bVar) {
        return MotionDurationScale.DefaultImpls.minusKey(this, bVar);
    }

    @Override // androidx.compose.ui.MotionDurationScale, defpackage.o22
    public /* bridge */ o22 plus(o22 o22Var) {
        return MotionDurationScale.DefaultImpls.plus(this, o22Var);
    }

    public final void setCoroutineScope(y22 y22Var) {
        this.coroutineScope = y22Var;
    }

    public final void setJob(mb4 mb4Var) {
        this.job = mb4Var;
    }
}
