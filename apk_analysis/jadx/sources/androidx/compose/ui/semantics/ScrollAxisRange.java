package androidx.compose.ui.semantics;

import defpackage.jh2;
import defpackage.ll3;
import defpackage.sg;

/* JADX INFO: loaded from: classes2.dex */
public final class ScrollAxisRange {
    public static final int $stable = 0;
    private final ll3<Float> maxValue;
    private final boolean reverseScrolling;
    private final ll3<Float> value;

    public ScrollAxisRange(ll3<Float> ll3Var, ll3<Float> ll3Var2, boolean z) {
        this.value = ll3Var;
        this.maxValue = ll3Var2;
        this.reverseScrolling = z;
    }

    public final ll3<Float> getMaxValue() {
        return this.maxValue;
    }

    public final boolean getReverseScrolling() {
        return this.reverseScrolling;
    }

    public final ll3<Float> getValue() {
        return this.value;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ScrollAxisRange(value=");
        sb.append(this.value.invoke().floatValue());
        sb.append(", maxValue=");
        sb.append(this.maxValue.invoke().floatValue());
        sb.append(", reverseScrolling=");
        return sg.d(sb, this.reverseScrolling, ')');
    }

    public /* synthetic */ ScrollAxisRange(ll3 ll3Var, ll3 ll3Var2, boolean z, int i, jh2 jh2Var) {
        this(ll3Var, ll3Var2, (i & 4) != 0 ? false : z);
    }
}
