package defpackage;

import androidx.compose.foundation.text.TextLinkScope;
import androidx.compose.foundation.text.input.internal.CoreTextFieldSemanticsModifierNode;
import androidx.compose.material3.DefaultTwoRowsTopAppBarOverride;
import androidx.compose.ui.unit.IntRect;
import yads.bo6;
import yads.nq0;
import yads.um6;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class g22 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ g22(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                return Boolean.valueOf(CoreTextFieldSemanticsModifierNode.applySemantics$lambda$7((CoreTextFieldSemanticsModifierNode) obj));
            case 1:
                return Float.valueOf(DefaultTwoRowsTopAppBarOverride.TwoRowsTopAppBar$lambda$8$lambda$7((ll3) obj));
            case 2:
                return TextLinkScope.textRange$lambda$0$2((IntRect) obj);
            case 3:
                return bo6.b((bo6) obj);
            case 4:
                return nq0.d((nq0) obj);
            default:
                return um6.a((um6) obj);
        }
    }
}
