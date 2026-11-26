package defpackage;

import androidx.compose.foundation.layout.AlignmentLineProviderBlock;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.ui.layout.Measured;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class uo0 implements em3, xl3, AlignmentLineProviderBlock {
    public final /* synthetic */ cm3 b;

    public /* synthetic */ uo0(cm3 cm3Var) {
        this.b = cm3Var;
    }

    @Override // defpackage.em3
    public Object a(Object obj, Object obj2, Object obj3) {
        return (List) ((dm3) this.b).invoke(obj, obj2, obj3);
    }

    @Override // defpackage.xl3
    public Object apply(Object obj) {
        return (du4) ((lu4) this.b).invoke(obj);
    }

    @Override // androidx.compose.foundation.layout.AlignmentLineProviderBlock
    public int calculateAlignmentLinePosition(Measured measured) {
        return RowScopeInstance.alignBy$lambda$0((nl3) this.b, measured);
    }
}
