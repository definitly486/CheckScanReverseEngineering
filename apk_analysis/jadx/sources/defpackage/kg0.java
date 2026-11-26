package defpackage;

import androidx.compose.foundation.text.BasicTextFieldKt;
import androidx.compose.foundation.text.input.internal.CoreTextFieldSemanticsModifierNode;
import androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState;
import yads.bo1;
import yads.gf0;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class kg0 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ kg0(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                return BasicTextFieldKt.TextFieldSelectionHandles$lambda$4$0((TextFieldSelectionState) obj);
            case 1:
                return Boolean.valueOf(CoreTextFieldSemanticsModifierNode.applySemantics$lambda$11((CoreTextFieldSemanticsModifierNode) obj));
            case 2:
                ((nl3) obj).invoke(un3.a.a);
                return j59.a;
            case 3:
                da6 da6Var = (da6) obj;
                op7 op7VarE = rp7.e("kotlinx.serialization.Polymorphic", ba6.a.a, new mp7[0], new nk(da6Var, 4));
                ne4<T> ne4Var = da6Var.a;
                ne4Var.getClass();
                return new my1(op7VarE, ne4Var);
            case 4:
                return bo1.d((bo1) obj);
            default:
                return gf0.q((gf0) obj);
        }
    }
}
