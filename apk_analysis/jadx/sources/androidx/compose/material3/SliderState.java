package androidx.compose.material3;

import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.MutatorMutex;
import androidx.compose.foundation.gestures.DragScope;
import androidx.compose.foundation.gestures.DraggableState;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.runtime.MutableFloatState;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.PrimitiveSnapshotStateKt;
import androidx.compose.runtime.SnapshotIntStateKt;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.saveable.ListSaverKt;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.runtime.saveable.SaverScope;
import androidx.media3.muxer.MuxerUtil;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.dk;
import defpackage.e02;
import defpackage.j59;
import defpackage.jh2;
import defpackage.kc7;
import defpackage.kx6;
import defpackage.ll3;
import defpackage.mm1;
import defpackage.nl3;
import defpackage.nm1;
import defpackage.pf3;
import defpackage.pg8;
import defpackage.r57;
import defpackage.u96;
import defpackage.y22;
import defpackage.z22;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class SliderState implements DraggableState {
    private final DragScope dragScope;
    private final ll3<j59> gestureEndAction;
    private final MutableState isDragging$delegate;
    private boolean isRtl;
    private nl3<? super Float, j59> onValueChange;
    private ll3<j59> onValueChangeFinished;
    private Orientation orientation;
    private final MutableFloatState pressOffset$delegate;
    private final MutableFloatState rawOffset$delegate;
    private boolean reverseVerticalDirection;
    private final MutatorMutex scrollMutex;
    private boolean shouldAutoSnap;
    private final int steps;
    private final MutableIntState thumbHeight$delegate;
    private final MutableIntState thumbWidth$delegate;
    private final float[] tickFractions;
    private final MutableIntState totalHeight$delegate;
    private final MutableIntState totalWidth$delegate;
    private final nm1<Float> valueRange;
    private final MutableFloatState valueState$delegate;
    public static final Companion Companion = new Companion(null);
    public static final int $stable = 8;

    /* JADX INFO: renamed from: androidx.compose.material3.SliderState$drag$2, reason: invalid class name */
    @bd2(c = "androidx.compose.material3.SliderState$drag$2", f = "Slider.kt", l = {2766}, m = "invokeSuspend")
    public static final class AnonymousClass2 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        final /* synthetic */ bm3<DragScope, e02<? super j59>, Object> $block;
        final /* synthetic */ MutatePriority $dragPriority;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass2(MutatePriority mutatePriority, bm3<? super DragScope, ? super e02<? super j59>, ? extends Object> bm3Var, e02<? super AnonymousClass2> e02Var) {
            super(2, e02Var);
            this.$dragPriority = mutatePriority;
            this.$block = bm3Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return SliderState.this.new AnonymousClass2(this.$dragPriority, this.$block, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((AnonymousClass2) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                SliderState.this.setDragging(true);
                MutatorMutex mutatorMutex = SliderState.this.scrollMutex;
                DragScope dragScope = SliderState.this.dragScope;
                MutatePriority mutatePriority = this.$dragPriority;
                bm3<DragScope, e02<? super j59>, Object> bm3Var = this.$block;
                this.label = 1;
                if (mutatorMutex.mutateWith(dragScope, mutatePriority, bm3Var, this) == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            SliderState.this.setDragging(false);
            return j59.a;
        }
    }

    public SliderState(float f, int i, ll3<j59> ll3Var, nm1<Float> nm1Var) {
        this.steps = i;
        this.onValueChangeFinished = ll3Var;
        this.valueRange = nm1Var;
        this.valueState$delegate = PrimitiveSnapshotStateKt.mutableFloatStateOf(f);
        this.shouldAutoSnap = true;
        this.tickFractions = SliderKt.stepsToTickFractions(i);
        this.totalWidth$delegate = SnapshotIntStateKt.mutableIntStateOf(0);
        this.totalHeight$delegate = SnapshotIntStateKt.mutableIntStateOf(0);
        this.thumbWidth$delegate = SnapshotIntStateKt.mutableIntStateOf(0);
        this.thumbHeight$delegate = SnapshotIntStateKt.mutableIntStateOf(0);
        this.orientation = Orientation.Horizontal;
        this.isDragging$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.FALSE, null, 2, null);
        this.gestureEndAction = new dk(this, 2);
        this.rawOffset$delegate = PrimitiveSnapshotStateKt.mutableFloatStateOf(scaleToOffset(0.0f, 0.0f, f));
        this.pressOffset$delegate = PrimitiveSnapshotStateKt.mutableFloatStateOf(0.0f);
        this.dragScope = new DragScope() { // from class: androidx.compose.material3.SliderState$dragScope$1
            @Override // androidx.compose.foundation.gestures.DragScope
            public void dragBy(float f2) {
                this.this$0.dispatchRawDelta(f2);
            }
        };
        this.scrollMutex = new MutatorMutex();
    }

    private final float calculateSnappedValue(float f) {
        return SliderKt.snapValueToTick(kx6.d(f, this.valueRange.getStart().floatValue(), this.valueRange.getEndInclusive().floatValue()), this.tickFractions, this.valueRange.getStart().floatValue(), this.valueRange.getEndInclusive().floatValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 gestureEndAction$lambda$1(SliderState sliderState) {
        ll3<j59> ll3Var;
        if (!sliderState.isDragging() && (ll3Var = sliderState.onValueChangeFinished) != null) {
            ll3Var.invoke();
        }
        return j59.a;
    }

    private final float getPressOffset() {
        return this.pressOffset$delegate.getFloatValue();
    }

    private final float getRawOffset() {
        return this.rawOffset$delegate.getFloatValue();
    }

    private final int getTotalHeight() {
        return this.totalHeight$delegate.getIntValue();
    }

    private final int getTotalWidth() {
        return this.totalWidth$delegate.getIntValue();
    }

    private final float getValueState() {
        return this.valueState$delegate.getFloatValue();
    }

    private final float scaleToOffset(float f, float f2, float f3) {
        return SliderKt.scale(this.valueRange.getStart().floatValue(), this.valueRange.getEndInclusive().floatValue(), f3, f, f2);
    }

    private final float scaleToUserValue(float f, float f2, float f3) {
        return SliderKt.scale(f, f2, f3, this.valueRange.getStart().floatValue(), this.valueRange.getEndInclusive().floatValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setDragging(boolean z) {
        this.isDragging$delegate.setValue(Boolean.valueOf(z));
    }

    private final void setPressOffset(float f) {
        this.pressOffset$delegate.setFloatValue(f);
    }

    private final void setRawOffset(float f) {
        this.rawOffset$delegate.setFloatValue(f);
    }

    private final void setTotalHeight(int i) {
        this.totalHeight$delegate.setIntValue(i);
    }

    private final void setTotalWidth(int i) {
        this.totalWidth$delegate.setIntValue(i);
    }

    private final void setValueState(float f) {
        this.valueState$delegate.setFloatValue(f);
    }

    @Override // androidx.compose.foundation.gestures.DraggableState
    public void dispatchRawDelta(float f) {
        float fMax;
        float fMin;
        if (this.orientation == Orientation.Vertical) {
            fMax = Math.max(getTotalHeight() - (getThumbHeight$material3() / 2.0f), 0.0f);
            fMin = Math.min(getThumbHeight$material3() / 2.0f, fMax);
        } else {
            fMax = Math.max(getTotalWidth() - (getThumbWidth$material3() / 2.0f), 0.0f);
            fMin = Math.min(getThumbWidth$material3() / 2.0f, fMax);
        }
        setRawOffset(getRawOffset() + f + getPressOffset());
        setPressOffset(0.0f);
        float fScaleToUserValue = scaleToUserValue(fMin, fMax, SliderKt.snapValueToTick(getRawOffset(), this.tickFractions, fMin, fMax));
        if (fScaleToUserValue == getValue()) {
            return;
        }
        nl3<? super Float, j59> nl3Var = this.onValueChange;
        if (nl3Var == null) {
            setValue(fScaleToUserValue);
        } else if (nl3Var != null) {
            nl3Var.invoke(Float.valueOf(fScaleToUserValue));
        }
    }

    @Override // androidx.compose.foundation.gestures.DraggableState
    public Object drag(MutatePriority mutatePriority, bm3<? super DragScope, ? super e02<? super j59>, ? extends Object> bm3Var, e02<? super j59> e02Var) {
        Object objC = z22.c(new AnonymousClass2(mutatePriority, bm3Var, null), e02Var);
        return objC == a32.COROUTINE_SUSPENDED ? objC : j59.a;
    }

    public final float getCoercedValueAsFraction() {
        return SliderKt.calcFraction(this.valueRange.getStart().floatValue(), this.valueRange.getEndInclusive().floatValue(), kx6.d(getValue(), this.valueRange.getStart().floatValue(), this.valueRange.getEndInclusive().floatValue()));
    }

    public final ll3<j59> getGestureEndAction$material3() {
        return this.gestureEndAction;
    }

    public final nl3<Float, j59> getOnValueChange() {
        return this.onValueChange;
    }

    public final ll3<j59> getOnValueChangeFinished() {
        return this.onValueChangeFinished;
    }

    public final Orientation getOrientation$material3() {
        return this.orientation;
    }

    public final boolean getReverseVerticalDirection$material3() {
        return this.reverseVerticalDirection;
    }

    public final int getSteps() {
        return this.steps;
    }

    public final int getThumbHeight$material3() {
        return this.thumbHeight$delegate.getIntValue();
    }

    public final int getThumbWidth$material3() {
        return this.thumbWidth$delegate.getIntValue();
    }

    public final float[] getTickFractions$material3() {
        return this.tickFractions;
    }

    public final float getValue() {
        return getValueState();
    }

    public final nm1<Float> getValueRange() {
        return this.valueRange;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean isDragging() {
        return ((Boolean) this.isDragging$delegate.getValue()).booleanValue();
    }

    public final boolean isRtl$material3() {
        return this.isRtl;
    }

    /* JADX INFO: renamed from: onPress-k-4lQ0M$material3, reason: not valid java name */
    public final void m3924onPressk4lQ0M$material3(long j) {
        float fIntBitsToFloat;
        float totalWidth;
        float fIntBitsToFloat2;
        if (this.orientation == Orientation.Vertical) {
            if (this.reverseVerticalDirection) {
                totalWidth = getTotalHeight();
                fIntBitsToFloat2 = Float.intBitsToFloat((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
                fIntBitsToFloat = totalWidth - fIntBitsToFloat2;
            } else {
                fIntBitsToFloat = Float.intBitsToFloat((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
            }
        } else if (this.isRtl) {
            totalWidth = getTotalWidth();
            fIntBitsToFloat2 = Float.intBitsToFloat((int) (j >> 32));
            fIntBitsToFloat = totalWidth - fIntBitsToFloat2;
        } else {
            fIntBitsToFloat = Float.intBitsToFloat((int) (j >> 32));
        }
        setPressOffset(fIntBitsToFloat - getRawOffset());
    }

    public final void setOnValueChange(nl3<? super Float, j59> nl3Var) {
        this.onValueChange = nl3Var;
    }

    public final void setOnValueChangeFinished(ll3<j59> ll3Var) {
        this.onValueChangeFinished = ll3Var;
    }

    public final void setOrientation$material3(Orientation orientation) {
        this.orientation = orientation;
    }

    public final void setReverseVerticalDirection$material3(boolean z) {
        this.reverseVerticalDirection = z;
    }

    public final void setRtl$material3(boolean z) {
        this.isRtl = z;
    }

    public final void setShouldAutoSnap(boolean z) {
        this.shouldAutoSnap = z;
    }

    public final void setThumbHeight$material3(int i) {
        this.thumbHeight$delegate.setIntValue(i);
    }

    public final void setThumbWidth$material3(int i) {
        this.thumbWidth$delegate.setIntValue(i);
    }

    public final void setValue(float f) {
        if (this.shouldAutoSnap) {
            f = calculateSnappedValue(f);
        }
        setValueState(f);
    }

    public final boolean shouldAutoSnap() {
        return this.shouldAutoSnap;
    }

    public final void updateDimensions$material3(int i, int i2) {
        setTotalWidth(i);
        setTotalHeight(i2);
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final List Saver$lambda$0(SaverScope saverScope, SliderState sliderState) {
            return u96.i(Float.valueOf(sliderState.getValue()), Integer.valueOf(sliderState.getSteps()));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final SliderState Saver$lambda$1(ll3 ll3Var, nm1 nm1Var, List list) {
            Object obj = list.get(0);
            obj.getClass();
            float fFloatValue = ((Float) obj).floatValue();
            Object obj2 = list.get(1);
            obj2.getClass();
            return new SliderState(fFloatValue, ((Integer) obj2).intValue(), ll3Var, nm1Var);
        }

        public final Saver<SliderState, ?> Saver(ll3<j59> ll3Var, nm1<Float> nm1Var) {
            return ListSaverKt.listSaver(new kc7(1), new pf3(2, ll3Var, nm1Var));
        }

        private Companion() {
        }
    }

    public SliderState(float f, int i, ll3 ll3Var, nm1 nm1Var, int i2, jh2 jh2Var) {
        this((i2 & 1) != 0 ? 0.0f : f, (i2 & 2) != 0 ? 0 : i, (i2 & 4) != 0 ? null : ll3Var, (i2 & 8) != 0 ? new mm1(0.0f, 1.0f) : nm1Var);
    }

    public SliderState() {
        this(0.0f, 0, null, null, 15, null);
    }
}
