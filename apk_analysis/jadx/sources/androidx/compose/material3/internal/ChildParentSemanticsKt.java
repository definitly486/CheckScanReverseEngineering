package androidx.compose.material3.internal;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import defpackage.is0;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class ChildParentSemanticsKt {
    public static final Modifier childSemantics(Modifier modifier, nl3<? super SemanticsPropertyReceiver, j59> nl3Var) {
        return modifier.then(new ChildSemanticsNodeElement(nl3Var));
    }

    public static /* synthetic */ Modifier childSemantics$default(Modifier modifier, nl3 nl3Var, int i, Object obj) {
        if ((i & 1) != 0) {
            nl3Var = new is0(1);
        }
        return childSemantics(modifier, nl3Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 childSemantics$lambda$0(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        return j59.a;
    }

    public static final Modifier parentSemantics(Modifier modifier, nl3<? super SemanticsPropertyReceiver, j59> nl3Var) {
        return modifier.then(new ParentSemanticsNodeElement(nl3Var));
    }
}
