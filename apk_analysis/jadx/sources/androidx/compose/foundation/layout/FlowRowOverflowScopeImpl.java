package androidx.compose.foundation.layout;

import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.HorizontalAlignmentLine;
import androidx.compose.ui.layout.Measured;
import defpackage.ag3;
import defpackage.bg3;
import defpackage.cl4;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public final class FlowRowOverflowScopeImpl implements FlowRowScope, FlowRowOverflowScope {
    public static final int $stable = 0;
    private final cl4 shownItemCount$delegate;
    private final FlowLayoutOverflowState state;
    private final /* synthetic */ FlowRowScopeInstance $$delegate_0 = FlowRowScopeInstance.INSTANCE;
    private final cl4 totalItemCount$delegate = FlowLayoutOverflowKt.lazyInt$default(null, new ag3(this, 0), 1, null);

    public FlowRowOverflowScopeImpl(FlowLayoutOverflowState flowLayoutOverflowState) {
        this.state = flowLayoutOverflowState;
        this.shownItemCount$delegate = FlowLayoutOverflowKt.lazyInt(flowLayoutOverflowState.getShownItemLazyErrorMessage$foundation_layout(), new bg3(this, 0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int shownItemCount_delegate$lambda$0(FlowRowOverflowScopeImpl flowRowOverflowScopeImpl) {
        return flowRowOverflowScopeImpl.state.getItemShown$foundation_layout();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int totalItemCount_delegate$lambda$0(FlowRowOverflowScopeImpl flowRowOverflowScopeImpl) {
        return flowRowOverflowScopeImpl.state.getItemCount$foundation_layout();
    }

    @Override // androidx.compose.foundation.layout.RowScope
    public Modifier align(Modifier modifier, Alignment.Vertical vertical) {
        return this.$$delegate_0.align(modifier, vertical);
    }

    @Override // androidx.compose.foundation.layout.RowScope
    public Modifier alignBy(Modifier modifier, nl3<? super Measured, Integer> nl3Var) {
        return this.$$delegate_0.alignBy(modifier, nl3Var);
    }

    @Override // androidx.compose.foundation.layout.RowScope
    public Modifier alignByBaseline(Modifier modifier) {
        return this.$$delegate_0.alignByBaseline(modifier);
    }

    @Override // androidx.compose.foundation.layout.FlowRowScope
    public Modifier fillMaxRowHeight(Modifier modifier, float f) {
        return this.$$delegate_0.fillMaxRowHeight(modifier, f);
    }

    @Override // androidx.compose.foundation.layout.FlowRowOverflowScope
    public int getShownItemCount() {
        return ((Number) this.shownItemCount$delegate.getValue()).intValue();
    }

    @Override // androidx.compose.foundation.layout.FlowRowOverflowScope
    public int getTotalItemCount() {
        return ((Number) this.totalItemCount$delegate.getValue()).intValue();
    }

    @Override // androidx.compose.foundation.layout.RowScope
    public Modifier weight(Modifier modifier, float f, boolean z) {
        return this.$$delegate_0.weight(modifier, f, z);
    }

    @Override // androidx.compose.foundation.layout.RowScope
    public Modifier alignBy(Modifier modifier, HorizontalAlignmentLine horizontalAlignmentLine) {
        return this.$$delegate_0.alignBy(modifier, horizontalAlignmentLine);
    }
}
