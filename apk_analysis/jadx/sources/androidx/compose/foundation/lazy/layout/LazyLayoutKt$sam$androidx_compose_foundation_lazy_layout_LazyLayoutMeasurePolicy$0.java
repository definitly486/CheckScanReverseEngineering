package androidx.compose.foundation.lazy.layout;

import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.unit.Constraints;
import defpackage.aa4;
import defpackage.bm3;
import defpackage.cm3;
import defpackage.mm3;

/* JADX INFO: loaded from: classes.dex */
public final class LazyLayoutKt$sam$androidx_compose_foundation_lazy_layout_LazyLayoutMeasurePolicy$0 implements LazyLayoutMeasurePolicy, mm3 {
    private final /* synthetic */ bm3 function;

    public LazyLayoutKt$sam$androidx_compose_foundation_lazy_layout_LazyLayoutMeasurePolicy$0(bm3 bm3Var) {
        this.function = bm3Var;
    }

    public final boolean equals(Object obj) {
        if ((obj instanceof LazyLayoutMeasurePolicy) && (obj instanceof mm3)) {
            return aa4.e(getFunctionDelegate(), ((mm3) obj).getFunctionDelegate());
        }
        return false;
    }

    @Override // defpackage.mm3
    public final cm3<?> getFunctionDelegate() {
        return this.function;
    }

    public final int hashCode() {
        return getFunctionDelegate().hashCode();
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasurePolicy
    /* JADX INFO: renamed from: measure-0kLqBqw */
    public final /* synthetic */ MeasureResult mo2154measure0kLqBqw(LazyLayoutMeasureScope lazyLayoutMeasureScope, long j) {
        return (MeasureResult) this.function.invoke(lazyLayoutMeasureScope, Constraints.m8982boximpl(j));
    }
}
