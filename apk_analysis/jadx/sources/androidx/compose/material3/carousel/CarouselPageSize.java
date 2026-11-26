package androidx.compose.material3.carousel;

import androidx.compose.foundation.pager.PageSize;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.ui.unit.Density;
import defpackage.bm3;
import defpackage.w65;

/* JADX INFO: loaded from: classes2.dex */
public final class CarouselPageSize implements PageSize {
    public static final int $stable = 0;
    private final float afterContentPadding;
    private final float beforeContentPadding;
    private final bm3<Float, Float, KeylineList> keylineList;
    private final MutableState strategyState$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Strategy.Companion.getEmpty(), null, 2, null);

    /* JADX WARN: Multi-variable type inference failed */
    public CarouselPageSize(bm3<? super Float, ? super Float, KeylineList> bm3Var, float f, float f2) {
        this.keylineList = bm3Var;
        this.beforeContentPadding = f;
        this.afterContentPadding = f2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final Strategy getStrategyState() {
        return (Strategy) this.strategyState$delegate.getValue();
    }

    private final void setStrategyState(Strategy strategy) {
        this.strategyState$delegate.setValue(strategy);
    }

    @Override // androidx.compose.foundation.pager.PageSize
    public int calculateMainAxisPageSize(Density density, int i, int i2) {
        float f = i;
        float f2 = i2;
        setStrategyState(new Strategy(this.keylineList.invoke(Float.valueOf(f), Float.valueOf(f2)), f, f2, this.beforeContentPadding, this.afterContentPadding));
        return getStrategy().isValid() ? w65.b(getStrategy().getItemMainAxisSize()) : i;
    }

    public final Strategy getStrategy() {
        return getStrategyState();
    }
}
