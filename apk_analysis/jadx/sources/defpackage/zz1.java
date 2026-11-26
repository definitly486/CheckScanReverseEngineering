package defpackage;

import androidx.compose.foundation.layout.ContextualFlowRowOverflow;
import androidx.compose.foundation.layout.FlowColumnOverflow;
import androidx.compose.foundation.layout.FlowLayoutOverflowState;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class zz1 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ dm3 c;

    public /* synthetic */ zz1(dm3 dm3Var, int i) {
        this.b = i;
        this.c = dm3Var;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        dm3 dm3Var = this.c;
        FlowLayoutOverflowState flowLayoutOverflowState = (FlowLayoutOverflowState) obj;
        switch (i) {
            case 0:
                return ContextualFlowRowOverflow.Companion.expandOrCollapseIndicator__jt2gSs$lambda$1$0(dm3Var, flowLayoutOverflowState);
            default:
                return FlowColumnOverflow.Companion.expandIndicator$lambda$0(dm3Var, flowLayoutOverflowState);
        }
    }
}
