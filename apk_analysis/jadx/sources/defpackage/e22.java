package defpackage;

import androidx.compose.foundation.text.input.internal.CoreTextFieldSemanticsModifierNode;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.AnnotatedString;
import androidx.sqlite.SQLiteConnection;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class e22 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ e22(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.d;
        Object obj3 = this.c;
        switch (i) {
            case 0:
                return Boolean.valueOf(CoreTextFieldSemanticsModifierNode.applySemantics$lambda$4((CoreTextFieldSemanticsModifierNode) obj3, (SemanticsPropertyReceiver) obj2, (AnnotatedString) obj));
            default:
                fu6 fu6Var = ((ku6) obj3).b;
                fu6Var.insert((SQLiteConnection) obj, (rt6) obj2);
                return j59.a;
        }
    }
}
