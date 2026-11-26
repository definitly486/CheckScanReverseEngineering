package defpackage;

import androidx.compose.material3.ModalBottomSheetKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import java.lang.annotation.Annotation;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class vb5 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ vb5(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return ModalBottomSheetKt.ModalBottomSheetContent_7___e2Q$lambda$21$lambda$20((String) obj2, (SemanticsPropertyReceiver) obj);
            default:
                aj7 aj7Var = (aj7) obj2;
                al1 al1Var = (al1) obj;
                al1Var.getClass();
                al1Var.a(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, ca8.b);
                al1Var.a("value", rp7.e("kotlinx.serialization.Sealed<" + aj7Var.a.f() + '>', sp7.a.a, new mp7[0], new sl2(aj7Var, 1)));
                List<? extends Annotation> list = aj7Var.b;
                list.getClass();
                al1Var.b = list;
                return j59.a;
        }
    }
}
