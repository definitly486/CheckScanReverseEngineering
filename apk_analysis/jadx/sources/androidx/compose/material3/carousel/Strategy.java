package androidx.compose.material3.carousel;

import androidx.collection.FloatList;
import defpackage.aa4;
import defpackage.jh2;
import defpackage.jn;
import defpackage.kx2;
import defpackage.qn1;
import defpackage.u96;
import defpackage.w65;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class Strategy {
    private static final Strategy Empty;
    private final float afterContentPadding;
    private final float availableSpace;
    private final float beforeContentPadding;
    private final KeylineList defaultKeylines;
    private final List<KeylineList> endKeylineSteps;
    private final float endShiftDistance;
    private final FloatList endShiftPoints;
    private final boolean isValid;
    private final float itemSpacing;
    private List<KeylineList> lastStartAndEndKeylineListSteps;
    private final List<KeylineList> startKeylineSteps;
    private final float startShiftDistance;
    private final FloatList startShiftPoints;
    public static final Companion Companion = new Companion(null);
    public static final int $stable = 8;

    static {
        KeylineList keylineListEmptyKeylineList = KeylineListKt.emptyKeylineList();
        kx2 kx2Var = kx2.b;
        Empty = new Strategy(keylineListEmptyKeylineList, kx2Var, kx2Var, 0.0f, 0.0f, 0.0f, 0.0f);
    }

    private Strategy(KeylineList keylineList, List<KeylineList> list, List<KeylineList> list2, float f, float f2, float f3, float f4) {
        this.defaultKeylines = keylineList;
        this.startKeylineSteps = list;
        this.endKeylineSteps = list2;
        this.availableSpace = f;
        this.itemSpacing = f2;
        this.beforeContentPadding = f3;
        this.afterContentPadding = f4;
        float startShiftDistance = StrategyKt.getStartShiftDistance(list, f3);
        this.startShiftDistance = startShiftDistance;
        float endShiftDistance = StrategyKt.getEndShiftDistance(list2, f4);
        this.endShiftDistance = endShiftDistance;
        this.startShiftPoints = StrategyKt.getStepInterpolationPoints(startShiftDistance, list, true);
        this.endShiftPoints = StrategyKt.getStepInterpolationPoints(endShiftDistance, list2, false);
        this.isValid = (keylineList.isEmpty() || f == 0.0f || getItemMainAxisSize() == 0.0f) ? false : true;
    }

    public static /* synthetic */ KeylineList getKeylineListForScrollOffset$material3$default(Strategy strategy, float f, float f2, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        return strategy.getKeylineListForScrollOffset$material3(f, f2, z);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Strategy)) {
            return false;
        }
        boolean z = this.isValid;
        if (!z && !((Strategy) obj).isValid) {
            return true;
        }
        Strategy strategy = (Strategy) obj;
        return z == strategy.isValid && this.availableSpace == strategy.availableSpace && this.itemSpacing == strategy.itemSpacing && this.beforeContentPadding == strategy.beforeContentPadding && this.afterContentPadding == strategy.afterContentPadding && getItemMainAxisSize() == strategy.getItemMainAxisSize() && this.startShiftDistance == strategy.startShiftDistance && this.endShiftDistance == strategy.endShiftDistance && aa4.e(this.startShiftPoints, strategy.startShiftPoints) && aa4.e(this.endShiftPoints, strategy.endShiftPoints) && aa4.e(this.defaultKeylines, strategy.defaultKeylines);
    }

    public final float getAfterContentPadding() {
        return this.afterContentPadding;
    }

    public final float getAvailableSpace() {
        return this.availableSpace;
    }

    public final float getBeforeContentPadding() {
        return this.beforeContentPadding;
    }

    public final KeylineList getDefaultKeylines() {
        return this.defaultKeylines;
    }

    public final List<KeylineList> getEndKeylineSteps() {
        return this.endKeylineSteps;
    }

    public final float getItemMainAxisSize() {
        return this.defaultKeylines.getFirstFocal().getSize();
    }

    public final float getItemSpacing() {
        return this.itemSpacing;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final KeylineList getKeylineListForScrollOffset$material3(float f, float f2, boolean z) {
        float fMax = Math.max(0.0f, f);
        float f3 = this.startShiftDistance;
        float fMax2 = Math.max(0.0f, f2 - this.endShiftDistance);
        if (f3 <= fMax && fMax <= fMax2) {
            return this.defaultKeylines;
        }
        float fLerp = StrategyKt.lerp(1.0f, 0.0f, 0.0f, f3, fMax);
        FloatList floatList = this.startShiftPoints;
        List<KeylineList> list = this.startKeylineSteps;
        if (fMax > fMax2) {
            fLerp = StrategyKt.lerp(0.0f, 1.0f, fMax2, f2, fMax);
            floatList = this.endShiftPoints;
            list = this.endKeylineSteps;
            if (fMax2 < 0.01f && this.startKeylineSteps.size() == 2 && this.endKeylineSteps.size() == 2) {
                List<KeylineList> listI = this.lastStartAndEndKeylineListSteps;
                if (listI == null) {
                    listI = u96.i(qn1.b0(this.startKeylineSteps), qn1.b0(this.endKeylineSteps));
                    this.lastStartAndEndKeylineListSteps = listI;
                }
                list = listI;
                list.getClass();
            }
        }
        ShiftPointRange shiftPointRange = StrategyKt.getShiftPointRange(list.size(), floatList, fLerp);
        if (z) {
            return list.get(w65.b(shiftPointRange.getSteppedInterpolation()) == 0 ? shiftPointRange.getFromStepIndex() : shiftPointRange.getToStepIndex());
        }
        return KeylineListKt.lerp(list.get(shiftPointRange.getFromStepIndex()), list.get(shiftPointRange.getToStepIndex()), shiftPointRange.getSteppedInterpolation());
    }

    public final List<KeylineList> getStartKeylineSteps() {
        return this.startKeylineSteps;
    }

    public int hashCode() {
        boolean z = this.isValid;
        if (!z) {
            return Boolean.hashCode(z);
        }
        return this.defaultKeylines.hashCode() + ((this.endShiftPoints.hashCode() + ((this.startShiftPoints.hashCode() + jn.b(this.endShiftDistance, jn.b(this.startShiftDistance, (Float.hashCode(getItemMainAxisSize()) + jn.b(this.afterContentPadding, jn.b(this.beforeContentPadding, jn.b(this.itemSpacing, jn.b(this.availableSpace, Boolean.hashCode(z) * 31, 31), 31), 31), 31)) * 31, 31), 31)) * 31)) * 31);
    }

    public final boolean isValid() {
        return this.isValid;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final Strategy getEmpty() {
            return Strategy.Empty;
        }

        private Companion() {
        }
    }

    public Strategy(KeylineList keylineList, float f, float f2, float f3, float f4) {
        this(keylineList, StrategyKt.getStartKeylineSteps(keylineList, f, f2, f3), StrategyKt.getEndKeylineSteps(keylineList, f, f2, f4), f, f2, f3, f4);
    }
}
