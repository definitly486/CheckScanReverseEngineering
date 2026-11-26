package defpackage;

import androidx.compose.foundation.layout.FlowColumnOverflow;
import androidx.compose.foundation.layout.FlowLayoutOverflowState;
import androidx.compose.material3.DefaultSingleRowTopAppBarOverride;
import androidx.compose.runtime.State;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import yads.gs2;
import yads.gz1;
import yads.u66;
import yads.wy1;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class si2 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ si2(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return DefaultSingleRowTopAppBarOverride.SingleRowTopAppBar$lambda$7$lambda$6((State) obj2, (DrawScope) obj);
            case 1:
                return FlowColumnOverflow.Companion.expandOrCollapseIndicator__jt2gSs$lambda$1$1((dm3) obj2, (FlowLayoutOverflowState) obj);
            case 2:
                return gs2.a((gs2) obj2, (u66) obj);
            default:
                return wy1.a((gz1) obj2, (String) obj);
        }
    }
}
