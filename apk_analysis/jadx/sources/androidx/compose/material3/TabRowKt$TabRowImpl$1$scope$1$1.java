package androidx.compose.material3;

import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.material3.TabRowKt$TabRowImpl$1$scope$1$1;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.LayoutModifierKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Dp;
import defpackage.dm3;
import defpackage.fm3;
import defpackage.kx2;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class TabRowKt$TabRowImpl$1$scope$1$1 implements TabIndicatorScope, TabPositionsHolder {
    final /* synthetic */ FiniteAnimationSpec<Dp> $tabIndicatorAnimationSpec;
    private final MutableState<List<TabPosition>> tabPositions = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(kx2.b, null, 2, null);

    public TabRowKt$TabRowImpl$1$scope$1$1(FiniteAnimationSpec<Dp> finiteAnimationSpec) {
        this.$tabIndicatorAnimationSpec = finiteAnimationSpec;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MeasureResult tabIndicatorLayout$lambda$0(fm3 fm3Var, TabRowKt$TabRowImpl$1$scope$1$1 tabRowKt$TabRowImpl$1$scope$1$1, MeasureScope measureScope, Measurable measurable, Constraints constraints) {
        return (MeasureResult) fm3Var.invoke(measureScope, measurable, constraints, tabRowKt$TabRowImpl$1$scope$1$1.tabPositions.getValue());
    }

    public final MutableState<List<TabPosition>> getTabPositions() {
        return this.tabPositions;
    }

    @Override // androidx.compose.material3.TabPositionsHolder
    public void setTabPositions(List<TabPosition> list) {
        this.tabPositions.setValue(list);
    }

    @Override // androidx.compose.material3.TabIndicatorScope
    public Modifier tabIndicatorLayout(Modifier modifier, final fm3<? super MeasureScope, ? super Measurable, ? super Constraints, ? super List<TabPosition>, ? extends MeasureResult> fm3Var) {
        return LayoutModifierKt.layout(modifier, new dm3() { // from class: ij8
            @Override // defpackage.dm3
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                return TabRowKt$TabRowImpl$1$scope$1$1.tabIndicatorLayout$lambda$0(fm3Var, this, (MeasureScope) obj, (Measurable) obj2, (Constraints) obj3);
            }
        });
    }

    @Override // androidx.compose.material3.TabIndicatorScope
    public Modifier tabIndicatorOffset(Modifier modifier, int i, boolean z) {
        return modifier.then(new TabIndicatorModifier(this.tabPositions, i, z, this.$tabIndicatorAnimationSpec));
    }
}
