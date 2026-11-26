package androidx.compose.material3;

import androidx.collection.IntList;
import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimatableKt;
import androidx.compose.animation.core.AnimationResult;
import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.MutatorMutex;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.ui.node.Ref;
import androidx.compose.ui.unit.Dp;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.e02;
import defpackage.j59;
import defpackage.jh2;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.r57;

/* JADX INFO: loaded from: classes2.dex */
public final class AnalogTimePickerState implements TimePickerState {
    public static final int $stable = 8;
    private Animatable<Float, AnimationVector1D> anim;
    private final MutableState currentDiameter$delegate;
    private float hourAngle;
    private float minuteAngle;
    private final MutatorMutex mutex;
    private final TimePickerState state;
    private final Ref<Boolean> userOverride;

    /* JADX INFO: renamed from: androidx.compose.material3.AnalogTimePickerState$animateToCurrent$2, reason: invalid class name */
    @bd2(c = "androidx.compose.material3.AnalogTimePickerState$animateToCurrent$2", f = "TimePicker.kt", l = {754}, m = "invokeSuspend")
    public static final class AnonymousClass2 extends pg8 implements nl3<e02<? super AnimationResult<Float, AnimationVector1D>>, Object> {
        final /* synthetic */ AnimationSpec<Float> $animationSpec;
        final /* synthetic */ float $end;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(float f, AnimationSpec<Float> animationSpec, e02<? super AnonymousClass2> e02Var) {
            super(1, e02Var);
            this.$end = f;
            this.$animationSpec = animationSpec;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(e02<?> e02Var) {
            return AnalogTimePickerState.this.new AnonymousClass2(this.$end, this.$animationSpec, e02Var);
        }

        @Override // defpackage.nl3
        public final Object invoke(e02<? super AnimationResult<Float, AnimationVector1D>> e02Var) {
            return ((AnonymousClass2) create(e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i != 0) {
                if (i == 1) {
                    r57.b(obj);
                    return obj;
                }
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
            Animatable animatable = AnalogTimePickerState.this.anim;
            Float f = new Float(this.$end);
            AnimationSpec<Float> animationSpec = this.$animationSpec;
            this.label = 1;
            Object objAnimateTo$default = Animatable.animateTo$default(animatable, f, animationSpec, null, null, this, 12, null);
            return objAnimateTo$default == a32Var ? a32Var : objAnimateTo$default;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.material3.AnalogTimePickerState$onGestureEnd$2, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.compose.material3.AnalogTimePickerState$onGestureEnd$2", f = "TimePicker.kt", l = {804}, m = "invokeSuspend")
    public static final class C05782 extends pg8 implements nl3<e02<? super AnimationResult<Float, AnimationVector1D>>, Object> {
        final /* synthetic */ AnimationSpec<Float> $animationSpec;
        final /* synthetic */ float $end;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C05782(float f, AnimationSpec<Float> animationSpec, e02<? super C05782> e02Var) {
            super(1, e02Var);
            this.$end = f;
            this.$animationSpec = animationSpec;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(e02<?> e02Var) {
            return AnalogTimePickerState.this.new C05782(this.$end, this.$animationSpec, e02Var);
        }

        @Override // defpackage.nl3
        public final Object invoke(e02<? super AnimationResult<Float, AnimationVector1D>> e02Var) {
            return ((C05782) create(e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i != 0) {
                if (i == 1) {
                    r57.b(obj);
                    return obj;
                }
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
            Animatable animatable = AnalogTimePickerState.this.anim;
            Float f = new Float(this.$end);
            AnimationSpec<Float> animationSpec = this.$animationSpec;
            this.label = 1;
            Object objAnimateTo$default = Animatable.animateTo$default(animatable, f, animationSpec, null, null, this, 12, null);
            return objAnimateTo$default == a32Var ? a32Var : objAnimateTo$default;
        }
    }

    public AnalogTimePickerState(TimePickerState timePickerState, Ref<Boolean> ref) {
        this.state = timePickerState;
        this.userOverride = ref;
        this.currentDiameter$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Dp.m9040boximpl(Dp.m9042constructorimpl(0.0f)), null, 2, null);
        this.hourAngle = ((timePickerState.getHour() % 12) * 0.5235988f) - 1.5707964f;
        this.minuteAngle = (timePickerState.getMinute() * 0.10471976f) - 1.5707964f;
        this.anim = AnimatableKt.Animatable$default(this.hourAngle, 0.0f, 2, null);
        this.mutex = new MutatorMutex();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final float endValueForAnimation(float f) {
        float fFloatValue = this.anim.getValue().floatValue() - f;
        while (fFloatValue > 3.1415927f) {
            fFloatValue -= 6.2831855f;
        }
        while (fFloatValue <= -3.1415927f) {
            fFloatValue += 6.2831855f;
        }
        return this.anim.getValue().floatValue() - fFloatValue;
    }

    private final boolean isUpdated() {
        int iMo3075getSelectionyecRtBI = mo3075getSelectionyecRtBI();
        TimePickerSelectionMode.Companion companion = TimePickerSelectionMode.Companion;
        if (TimePickerSelectionMode.m4151equalsimpl0(iMo3075getSelectionyecRtBI, companion.m4155getHouryecRtBI()) && normalize(this.anim.getTargetValue().floatValue()) == normalize(this.hourAngle)) {
            return false;
        }
        return (TimePickerSelectionMode.m4151equalsimpl0(mo3075getSelectionyecRtBI(), companion.m4156getMinuteyecRtBI()) && normalize(this.anim.getTargetValue().floatValue()) == normalize(this.minuteAngle)) ? false : true;
    }

    private final float normalize(float f) {
        double d = ((double) f) % 6.283185307179586d;
        if (d < 0.0d) {
            d += 6.283185307179586d;
        }
        return (float) d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final float offsetAngle(float f) {
        float f2 = f + 1.5707964f;
        return f2 < 0.0f ? f2 + 6.2831855f : f2;
    }

    public static /* synthetic */ Object rotateTo$default(AnalogTimePickerState analogTimePickerState, float f, AnimationSpec animationSpec, boolean z, e02 e02Var, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        return analogTimePickerState.rotateTo(f, animationSpec, z, e02Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int toHour(float f) {
        return ((int) ((((double) f) + 1.8325957218792777d) / 0.5235987901687622d)) % 12;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int toMinute(float f) {
        return ((int) ((((double) f) + 1.6231562058117728d) / 0.10471975803375244d)) % 60;
    }

    private final void updateBaseStateMinute() {
        Snapshot.Companion companion = Snapshot.Companion;
        Snapshot currentThreadSnapshot = companion.getCurrentThreadSnapshot();
        nl3<Object, j59> readObserver = currentThreadSnapshot != null ? currentThreadSnapshot.getReadObserver() : null;
        Snapshot snapshotMakeCurrentNonObservable = companion.makeCurrentNonObservable(currentThreadSnapshot);
        try {
            this.state.setMinute(getMinute());
            j59 j59Var = j59.a;
        } finally {
            companion.restoreNonObservable(currentThreadSnapshot, snapshotMakeCurrentNonObservable, readObserver);
        }
    }

    public final Object animateToCurrent(AnimationSpec<Float> animationSpec, e02<? super j59> e02Var) {
        if (!isUpdated()) {
            return j59.a;
        }
        Object objMutate = this.mutex.mutate(MutatePriority.PreventUserInput, new AnonymousClass2(TimePickerSelectionMode.m4151equalsimpl0(mo3075getSelectionyecRtBI(), TimePickerSelectionMode.Companion.m4155getHouryecRtBI()) ? endValueForAnimation(this.hourAngle) : endValueForAnimation(this.minuteAngle), animationSpec, null), e02Var);
        return objMutate == a32.COROUTINE_SUSPENDED ? objMutate : j59.a;
    }

    public final IntList getClockFaceValues() {
        return TimePickerSelectionMode.m4151equalsimpl0(mo3075getSelectionyecRtBI(), TimePickerSelectionMode.Companion.m4156getMinuteyecRtBI()) ? TimePickerKt.Minutes : TimePickerKt.Hours;
    }

    public final float getCurrentAngle() {
        return this.anim.getValue().floatValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: getCurrentDiameter-D9Ej5fM, reason: not valid java name */
    public final float m3074getCurrentDiameterD9Ej5fM() {
        return ((Dp) this.currentDiameter$delegate.getValue()).m9056unboximpl();
    }

    @Override // androidx.compose.material3.TimePickerState
    public int getHour() {
        return this.state.getHour();
    }

    @Override // androidx.compose.material3.TimePickerState
    public int getMinute() {
        return this.state.getMinute();
    }

    @Override // androidx.compose.material3.TimePickerState
    /* JADX INFO: renamed from: getSelection-yecRtBI, reason: not valid java name */
    public int mo3075getSelectionyecRtBI() {
        return this.state.mo3075getSelectionyecRtBI();
    }

    public final TimePickerState getState() {
        return this.state;
    }

    public final Ref<Boolean> getUserOverride() {
        return this.userOverride;
    }

    @Override // androidx.compose.material3.TimePickerState
    public boolean is24hour() {
        return this.state.is24hour();
    }

    public final Object onGestureEnd(AnimationSpec<Float> animationSpec, e02<? super j59> e02Var) {
        Object objMutate = this.mutex.mutate(MutatePriority.PreventUserInput, new C05782(endValueForAnimation(TimePickerSelectionMode.m4151equalsimpl0(mo3075getSelectionyecRtBI(), TimePickerSelectionMode.Companion.m4155getHouryecRtBI()) ? this.hourAngle : this.minuteAngle), animationSpec, null), e02Var);
        return objMutate == a32.COROUTINE_SUSPENDED ? objMutate : j59.a;
    }

    public final Object rotateTo(float f, AnimationSpec<Float> animationSpec, boolean z, e02<? super j59> e02Var) {
        this.userOverride.setValue(Boolean.FALSE);
        Object objMutate = this.mutex.mutate(MutatePriority.UserInput, new C05792(f, z, animationSpec, null), e02Var);
        return objMutate == a32.COROUTINE_SUSPENDED ? objMutate : j59.a;
    }

    @Override // androidx.compose.material3.TimePickerState
    public void set24hour(boolean z) {
        this.state.set24hour(z);
    }

    /* JADX INFO: renamed from: setCurrentDiameter-0680j_4, reason: not valid java name */
    public final void m3076setCurrentDiameter0680j_4(float f) {
        this.currentDiameter$delegate.setValue(Dp.m9040boximpl(f));
    }

    @Override // androidx.compose.material3.TimePickerState
    public void setHour(int i) {
        this.hourAngle = ((i % 12) * 0.5235988f) - 1.5707964f;
        this.state.setHour(i);
        if (TimePickerSelectionMode.m4151equalsimpl0(mo3075getSelectionyecRtBI(), TimePickerSelectionMode.Companion.m4155getHouryecRtBI())) {
            this.anim = AnimatableKt.Animatable$default(this.hourAngle, 0.0f, 2, null);
        }
    }

    @Override // androidx.compose.material3.TimePickerState
    public void setMinute(int i) {
        this.minuteAngle = (i * 0.10471976f) - 1.5707964f;
        this.state.setMinute(i);
        if (TimePickerSelectionMode.m4151equalsimpl0(mo3075getSelectionyecRtBI(), TimePickerSelectionMode.Companion.m4156getMinuteyecRtBI())) {
            this.anim = AnimatableKt.Animatable$default(this.minuteAngle, 0.0f, 2, null);
        }
        updateBaseStateMinute();
    }

    @Override // androidx.compose.material3.TimePickerState
    /* JADX INFO: renamed from: setSelection-6_8s6DQ, reason: not valid java name */
    public void mo3077setSelection6_8s6DQ(int i) {
        this.state.mo3077setSelection6_8s6DQ(i);
    }

    /* JADX INFO: renamed from: androidx.compose.material3.AnalogTimePickerState$rotateTo$2, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.compose.material3.AnalogTimePickerState$rotateTo$2", f = "TimePicker.kt", l = {823, 826}, m = "invokeSuspend")
    public static final class C05792 extends pg8 implements nl3<e02<? super Object>, Object> {
        final /* synthetic */ float $angle;
        final /* synthetic */ boolean $animate;
        final /* synthetic */ AnimationSpec<Float> $animationSpec;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C05792(float f, boolean z, AnimationSpec<Float> animationSpec, e02<? super C05792> e02Var) {
            super(1, e02Var);
            this.$angle = f;
            this.$animate = z;
            this.$animationSpec = animationSpec;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(e02<?> e02Var) {
            return AnalogTimePickerState.this.new C05792(this.$angle, this.$animate, this.$animationSpec, e02Var);
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(e02<Object> e02Var) {
            return ((C05792) create(e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Code restructure failed: missing block: B:22:0x00a2, code lost:
        
            if (r12.snapTo(r2, r11) == r0) goto L28;
         */
        @Override // defpackage.cd0
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r12) {
            /*
                Method dump skipped, instruction units count: 207
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.AnalogTimePickerState.C05792.invokeSuspend(java.lang.Object):java.lang.Object");
        }

        @Override // defpackage.nl3
        public /* bridge */ /* synthetic */ Object invoke(e02<? super Object> e02Var) {
            return invoke2((e02<Object>) e02Var);
        }
    }

    public /* synthetic */ AnalogTimePickerState(TimePickerState timePickerState, Ref ref, int i, jh2 jh2Var) {
        this(timePickerState, (i & 2) != 0 ? new Ref() : ref);
    }
}
