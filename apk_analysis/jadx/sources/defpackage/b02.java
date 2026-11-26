package defpackage;

import androidx.compose.foundation.layout.ContextualFlowRowOverflow;
import androidx.compose.foundation.layout.FlowColumnOverflow;
import androidx.compose.foundation.layout.FlowLayoutOverflowState;
import androidx.compose.runtime.Composer;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class b02 implements bm3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ FlowLayoutOverflowState c;
    public final /* synthetic */ dm3 d;

    public /* synthetic */ b02(FlowLayoutOverflowState flowLayoutOverflowState, dm3 dm3Var, int i) {
        this.b = i;
        this.c = flowLayoutOverflowState;
        this.d = dm3Var;
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        int i = this.b;
        Composer composer = (Composer) obj;
        int iIntValue = ((Integer) obj2).intValue();
        switch (i) {
            case 0:
                return ContextualFlowRowOverflow.Companion.expandOrCollapseIndicator__jt2gSs$lambda$1$1$0(this.c, this.d, composer, iIntValue);
            default:
                return FlowColumnOverflow.Companion.expandOrCollapseIndicator__jt2gSs$lambda$1$0$0(this.c, this.d, composer, iIntValue);
        }
    }
}
