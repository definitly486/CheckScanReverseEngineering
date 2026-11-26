package androidx.compose.material3;

import androidx.compose.runtime.MutableFloatState;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.PrimitiveSnapshotStateKt;
import androidx.compose.runtime.SnapshotIntStateKt;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.saveable.ListSaverKt;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.runtime.saveable.SaverScope;
import defpackage.ix6;
import defpackage.j59;
import defpackage.jh2;
import defpackage.jx6;
import defpackage.kx6;
import defpackage.ll3;
import defpackage.mm1;
import defpackage.nl3;
import defpackage.nm1;
import defpackage.u96;
import defpackage.zh;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class RangeSliderState {
    private final MutableFloatState activeRangeEndState$delegate;
    private final MutableFloatState activeRangeStartState$delegate;
    private final MutableFloatState endThumbHeight$delegate;
    private final MutableFloatState endThumbWidth$delegate;
    private final nl3<Boolean, j59> gestureEndAction;
    private final MutableState isDragging$delegate;
    private final MutableState isRtl$delegate;
    private final MutableFloatState maxPx$delegate;
    private final MutableFloatState minPx$delegate;
    private nl3<? super SliderRange, j59> onValueChange;
    private ll3<j59> onValueChangeFinished;
    private final MutableFloatState rawOffsetEnd$delegate;
    private final MutableFloatState rawOffsetStart$delegate;
    private final MutableFloatState startThumbHeight$delegate;
    private final MutableFloatState startThumbWidth$delegate;
    private final int steps;
    private final float[] tickFractions;
    private final MutableIntState totalWidth$delegate;
    private final nm1<Float> valueRange;
    public static final Companion Companion = new Companion(null);
    public static final int $stable = 8;

    public RangeSliderState(float f, float f2, int i, ll3<j59> ll3Var, nm1<Float> nm1Var) {
        this.steps = i;
        this.onValueChangeFinished = ll3Var;
        this.valueRange = nm1Var;
        this.activeRangeStartState$delegate = PrimitiveSnapshotStateKt.mutableFloatStateOf(f);
        this.activeRangeEndState$delegate = PrimitiveSnapshotStateKt.mutableFloatStateOf(f2);
        this.tickFractions = SliderKt.stepsToTickFractions(i);
        this.startThumbWidth$delegate = PrimitiveSnapshotStateKt.mutableFloatStateOf(0.0f);
        this.startThumbHeight$delegate = PrimitiveSnapshotStateKt.mutableFloatStateOf(0.0f);
        this.endThumbWidth$delegate = PrimitiveSnapshotStateKt.mutableFloatStateOf(0.0f);
        this.endThumbHeight$delegate = PrimitiveSnapshotStateKt.mutableFloatStateOf(0.0f);
        this.totalWidth$delegate = SnapshotIntStateKt.mutableIntStateOf(0);
        this.rawOffsetStart$delegate = PrimitiveSnapshotStateKt.mutableFloatStateOf(0.0f);
        this.rawOffsetEnd$delegate = PrimitiveSnapshotStateKt.mutableFloatStateOf(0.0f);
        Boolean bool = Boolean.FALSE;
        this.isDragging$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(bool, null, 2, null);
        this.isRtl$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(bool, null, 2, null);
        this.gestureEndAction = new zh(this, 4);
        this.maxPx$delegate = PrimitiveSnapshotStateKt.mutableFloatStateOf(0.0f);
        this.minPx$delegate = PrimitiveSnapshotStateKt.mutableFloatStateOf(0.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 gestureEndAction$lambda$0(RangeSliderState rangeSliderState, boolean z) {
        ll3<j59> ll3Var = rangeSliderState.onValueChangeFinished;
        if (ll3Var != null) {
            ll3Var.invoke();
        }
        return j59.a;
    }

    private final float getActiveRangeEndState() {
        return this.activeRangeEndState$delegate.getFloatValue();
    }

    private final float getActiveRangeStartState() {
        return this.activeRangeStartState$delegate.getFloatValue();
    }

    private final float getMaxPx() {
        return this.maxPx$delegate.getFloatValue();
    }

    private final float getMinPx() {
        return this.minPx$delegate.getFloatValue();
    }

    private final float scaleToOffset(float f, float f2, float f3) {
        return SliderKt.scale(this.valueRange.getStart().floatValue(), this.valueRange.getEndInclusive().floatValue(), f3, f, f2);
    }

    /* JADX INFO: renamed from: scaleToUserValue-8bqG3aw, reason: not valid java name */
    private final long m3766scaleToUserValue8bqG3aw(boolean z, float f, float f2, long j) {
        return SliderKt.m3910scale2geJ7wY(z, f, f2, j, this.valueRange.getStart().floatValue(), this.valueRange.getEndInclusive().floatValue());
    }

    private final void setActiveRangeEndState(float f) {
        this.activeRangeEndState$delegate.setFloatValue(f);
    }

    private final void setActiveRangeStartState(float f) {
        this.activeRangeStartState$delegate.setFloatValue(f);
    }

    private final void setMaxPx(float f) {
        this.maxPx$delegate.setFloatValue(f);
    }

    private final void setMinPx(float f) {
        this.minPx$delegate.setFloatValue(f);
    }

    public final float getActiveRangeEnd() {
        return getActiveRangeEndState();
    }

    public final float getActiveRangeStart() {
        return getActiveRangeStartState();
    }

    public final float getCoercedActiveRangeEndAsFraction$material3() {
        return SliderKt.calcFraction(this.valueRange.getStart().floatValue(), this.valueRange.getEndInclusive().floatValue(), getActiveRangeEnd());
    }

    public final float getCoercedActiveRangeStartAsFraction$material3() {
        return SliderKt.calcFraction(this.valueRange.getStart().floatValue(), this.valueRange.getEndInclusive().floatValue(), getActiveRangeStart());
    }

    public final int getEndSteps$material3() {
        return (int) Math.floor((1.0f - getCoercedActiveRangeStartAsFraction$material3()) * this.steps);
    }

    public final float getEndThumbHeight$material3() {
        return this.endThumbHeight$delegate.getFloatValue();
    }

    public final float getEndThumbWidth$material3() {
        return this.endThumbWidth$delegate.getFloatValue();
    }

    public final nl3<Boolean, j59> getGestureEndAction$material3() {
        return this.gestureEndAction;
    }

    public final nl3<SliderRange, j59> getOnValueChange$material3() {
        return this.onValueChange;
    }

    public final ll3<j59> getOnValueChangeFinished() {
        return this.onValueChangeFinished;
    }

    public final float getRawOffsetEnd$material3() {
        return this.rawOffsetEnd$delegate.getFloatValue();
    }

    public final float getRawOffsetStart$material3() {
        return this.rawOffsetStart$delegate.getFloatValue();
    }

    public final int getStartSteps$material3() {
        return (int) Math.floor(getCoercedActiveRangeEndAsFraction$material3() * this.steps);
    }

    public final float getStartThumbHeight$material3() {
        return this.startThumbHeight$delegate.getFloatValue();
    }

    public final float getStartThumbWidth$material3() {
        return this.startThumbWidth$delegate.getFloatValue();
    }

    public final int getSteps() {
        return this.steps;
    }

    public final float[] getTickFractions$material3() {
        return this.tickFractions;
    }

    public final int getTotalWidth$material3() {
        return this.totalWidth$delegate.getIntValue();
    }

    public final nm1<Float> getValueRange() {
        return this.valueRange;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean isDragging$material3() {
        return ((Boolean) this.isDragging$delegate.getValue()).booleanValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean isRtl$material3() {
        return ((Boolean) this.isRtl$delegate.getValue()).booleanValue();
    }

    public final void onDrag$material3(boolean z, float f) {
        long jSliderRange;
        if (z) {
            setRawOffsetStart$material3(getRawOffsetStart$material3() + f);
            setRawOffsetEnd$material3(scaleToOffset(getMinPx(), getMaxPx(), getActiveRangeEnd()));
            float rawOffsetEnd$material3 = getRawOffsetEnd$material3();
            float fSnapValueToTick = SliderKt.snapValueToTick(kx6.d(getRawOffsetStart$material3(), getMinPx(), rawOffsetEnd$material3), this.tickFractions, getMinPx(), getMaxPx());
            if (fSnapValueToTick > rawOffsetEnd$material3) {
                fSnapValueToTick = rawOffsetEnd$material3;
            }
            jSliderRange = SliderKt.SliderRange(fSnapValueToTick, rawOffsetEnd$material3);
        } else {
            setRawOffsetEnd$material3(getRawOffsetEnd$material3() + f);
            setRawOffsetStart$material3(scaleToOffset(getMinPx(), getMaxPx(), getActiveRangeStart()));
            float rawOffsetStart$material3 = getRawOffsetStart$material3();
            float fSnapValueToTick2 = SliderKt.snapValueToTick(kx6.d(getRawOffsetEnd$material3(), rawOffsetStart$material3, getMaxPx()), this.tickFractions, getMinPx(), getMaxPx());
            if (fSnapValueToTick2 < rawOffsetStart$material3) {
                fSnapValueToTick2 = rawOffsetStart$material3;
            }
            jSliderRange = SliderKt.SliderRange(rawOffsetStart$material3, fSnapValueToTick2);
        }
        long jM3766scaleToUserValue8bqG3aw = m3766scaleToUserValue8bqG3aw(z, getMinPx(), getMaxPx(), jSliderRange);
        if (SliderRange.m3916equalsimpl0(jM3766scaleToUserValue8bqG3aw, SliderKt.SliderRange(getActiveRangeStart(), getActiveRangeEnd()))) {
            return;
        }
        nl3<? super SliderRange, j59> nl3Var = this.onValueChange;
        if (nl3Var == null) {
            setActiveRangeStart(SliderRange.m3918getStartimpl(jM3766scaleToUserValue8bqG3aw));
            setActiveRangeEnd(SliderRange.m3917getEndInclusiveimpl(jM3766scaleToUserValue8bqG3aw));
        } else if (nl3Var != null) {
            nl3Var.invoke(SliderRange.m3913boximpl(jM3766scaleToUserValue8bqG3aw));
        }
    }

    public final void setActiveRangeEnd(float f) {
        setActiveRangeEndState(SliderKt.snapValueToTick(kx6.d(f, getActiveRangeStart(), this.valueRange.getEndInclusive().floatValue()), this.tickFractions, this.valueRange.getStart().floatValue(), this.valueRange.getEndInclusive().floatValue()));
    }

    public final void setActiveRangeStart(float f) {
        setActiveRangeStartState(SliderKt.snapValueToTick(kx6.d(f, this.valueRange.getStart().floatValue(), getActiveRangeEnd()), this.tickFractions, this.valueRange.getStart().floatValue(), this.valueRange.getEndInclusive().floatValue()));
    }

    public final void setDragging$material3(boolean z) {
        this.isDragging$delegate.setValue(Boolean.valueOf(z));
    }

    public final void setEndThumbHeight$material3(float f) {
        this.endThumbHeight$delegate.setFloatValue(f);
    }

    public final void setEndThumbWidth$material3(float f) {
        this.endThumbWidth$delegate.setFloatValue(f);
    }

    public final void setOnValueChange$material3(nl3<? super SliderRange, j59> nl3Var) {
        this.onValueChange = nl3Var;
    }

    public final void setOnValueChangeFinished(ll3<j59> ll3Var) {
        this.onValueChangeFinished = ll3Var;
    }

    public final void setRawOffsetEnd$material3(float f) {
        this.rawOffsetEnd$delegate.setFloatValue(f);
    }

    public final void setRawOffsetStart$material3(float f) {
        this.rawOffsetStart$delegate.setFloatValue(f);
    }

    public final void setRtl$material3(boolean z) {
        this.isRtl$delegate.setValue(Boolean.valueOf(z));
    }

    public final void setStartThumbHeight$material3(float f) {
        this.startThumbHeight$delegate.setFloatValue(f);
    }

    public final void setStartThumbWidth$material3(float f) {
        this.startThumbWidth$delegate.setFloatValue(f);
    }

    public final void setTotalWidth$material3(int i) {
        this.totalWidth$delegate.setIntValue(i);
    }

    public final void updateMinMaxPx$material3() {
        float fMax = Math.max(getTotalWidth$material3() - (getEndThumbWidth$material3() / 2.0f), 0.0f);
        float fMin = Math.min(getStartThumbWidth$material3() / 2.0f, fMax);
        if (isDragging$material3()) {
            return;
        }
        if (getMinPx() == fMin && getMaxPx() == fMax && getActiveRangeStart() == getActiveRangeEnd()) {
            return;
        }
        setMinPx(fMin);
        setMaxPx(fMax);
        setRawOffsetStart$material3(scaleToOffset(getMinPx(), getMaxPx(), getActiveRangeStart()));
        setRawOffsetEnd$material3(scaleToOffset(getMinPx(), getMaxPx(), getActiveRangeEnd()));
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final List Saver$lambda$0(SaverScope saverScope, RangeSliderState rangeSliderState) {
            return u96.i(Float.valueOf(rangeSliderState.getActiveRangeStart()), Float.valueOf(rangeSliderState.getActiveRangeEnd()), Integer.valueOf(rangeSliderState.getSteps()));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final RangeSliderState Saver$lambda$1(ll3 ll3Var, nm1 nm1Var, List list) {
            Object obj = list.get(0);
            obj.getClass();
            float fFloatValue = ((Float) obj).floatValue();
            Object obj2 = list.get(1);
            obj2.getClass();
            float fFloatValue2 = ((Float) obj2).floatValue();
            Object obj3 = list.get(2);
            obj3.getClass();
            return new RangeSliderState(fFloatValue, fFloatValue2, ((Integer) obj3).intValue(), ll3Var, nm1Var);
        }

        public final Saver<RangeSliderState, ?> Saver(ll3<j59> ll3Var, nm1<Float> nm1Var) {
            return ListSaverKt.listSaver(new ix6(0), new jx6(0, ll3Var, nm1Var));
        }

        private Companion() {
        }
    }

    public RangeSliderState(float f, float f2, int i, ll3 ll3Var, nm1 nm1Var, int i2, jh2 jh2Var) {
        this((i2 & 1) != 0 ? 0.0f : f, (i2 & 2) != 0 ? 1.0f : f2, (i2 & 4) != 0 ? 0 : i, (i2 & 8) != 0 ? null : ll3Var, (i2 & 16) != 0 ? new mm1(0.0f, 1.0f) : nm1Var);
    }

    public RangeSliderState() {
        this(0.0f, 0.0f, 0, null, null, 31, null);
    }
}
