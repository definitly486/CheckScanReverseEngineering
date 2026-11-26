package defpackage;

import androidx.compose.foundation.layout.AlignmentLineProviderBlock;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.ui.layout.Measured;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class v3 implements xl3, AlignmentLineProviderBlock {
    public final /* synthetic */ nl3 b;

    public /* synthetic */ v3(nl3 nl3Var) {
        this.b = nl3Var;
    }

    @Override // defpackage.xl3
    public Object apply(Object obj) {
        return (Boolean) this.b.invoke(obj);
    }

    @Override // androidx.compose.foundation.layout.AlignmentLineProviderBlock
    public int calculateAlignmentLinePosition(Measured measured) {
        return ColumnScopeInstance.alignBy$lambda$0(this.b, measured);
    }
}
