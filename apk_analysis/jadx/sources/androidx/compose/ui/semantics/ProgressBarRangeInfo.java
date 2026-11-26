package androidx.compose.ui.semantics;

import defpackage.aa4;
import defpackage.fg;
import defpackage.jh2;
import defpackage.mm1;
import defpackage.nm1;
import defpackage.rg;

/* JADX INFO: loaded from: classes2.dex */
public final class ProgressBarRangeInfo {
    public static final int $stable = 0;
    public static final Companion Companion = new Companion(null);
    private static final ProgressBarRangeInfo Indeterminate = new ProgressBarRangeInfo(0.0f, new mm1(0.0f, 0.0f), 0, 4, null);
    private final float current;
    private final nm1<Float> range;
    private final int steps;

    public ProgressBarRangeInfo(float f, nm1<Float> nm1Var, int i) {
        this.current = f;
        this.range = nm1Var;
        this.steps = i;
        if (Float.isNaN(f)) {
            fg.c("current must not be NaN");
            throw null;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ProgressBarRangeInfo)) {
            return false;
        }
        ProgressBarRangeInfo progressBarRangeInfo = (ProgressBarRangeInfo) obj;
        return this.current == progressBarRangeInfo.current && aa4.e(this.range, progressBarRangeInfo.range) && this.steps == progressBarRangeInfo.steps;
    }

    public final float getCurrent() {
        return this.current;
    }

    public final nm1<Float> getRange() {
        return this.range;
    }

    public final int getSteps() {
        return this.steps;
    }

    public int hashCode() {
        return ((this.range.hashCode() + (Float.hashCode(this.current) * 31)) * 31) + this.steps;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ProgressBarRangeInfo(current=");
        sb.append(this.current);
        sb.append(", range=");
        sb.append(this.range);
        sb.append(", steps=");
        return rg.h(sb, this.steps, ')');
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final ProgressBarRangeInfo getIndeterminate() {
            return ProgressBarRangeInfo.Indeterminate;
        }

        private Companion() {
        }
    }

    public /* synthetic */ ProgressBarRangeInfo(float f, nm1 nm1Var, int i, int i2, jh2 jh2Var) {
        this(f, nm1Var, (i2 & 4) != 0 ? 0 : i);
    }
}
