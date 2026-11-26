package defpackage;

import androidx.compose.foundation.layout.AlignmentLineProviderBlock;
import androidx.compose.foundation.layout.ResolvedFlexItemInfo;
import androidx.compose.ui.layout.Measured;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class sp0 implements xl3, AlignmentLineProviderBlock {
    public final /* synthetic */ int b;
    public final /* synthetic */ nl3 c;

    public /* synthetic */ sp0(nl3 nl3Var, int i) {
        this.b = i;
        this.c = nl3Var;
    }

    @Override // defpackage.xl3
    public Object apply(Object obj) {
        int i = this.b;
        nl3 nl3Var = this.c;
        switch (i) {
            case 0:
                break;
        }
        return (List) nl3Var.invoke(obj);
    }

    @Override // androidx.compose.foundation.layout.AlignmentLineProviderBlock
    public int calculateAlignmentLinePosition(Measured measured) {
        return ResolvedFlexItemInfo.alignSelf$lambda$0(this.c, measured);
    }
}
