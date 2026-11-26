package defpackage;

import androidx.compose.foundation.layout.RulerAlignmentKt;
import androidx.compose.foundation.text.selection.SelectionContainerKt;
import androidx.compose.foundation.text.selection.SelectionManager;
import androidx.compose.material3.DateInputKt;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.MutableState;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.transition.TransitionValues;
import yads.q96;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class q92 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ q92(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return DateInputKt.DateInputTextField_xJ3Ic0Y$lambda$14$lambda$13((MutableState) obj2, (SemanticsPropertyReceiver) obj);
            case 1:
                return ((s15.b) obj2).b(((Integer) obj).intValue());
            case 2:
                return RulerAlignmentKt.fitOutside$lambda$0$1((Measurable) obj2, (Placeable.PlacementScope) obj);
            case 3:
                return SelectionContainerKt.SelectionContainer$lambda$10$0((SelectionManager) obj2, (DisposableEffectScope) obj);
            default:
                return q96.b((TransitionValues) obj2, (int[]) obj);
        }
    }
}
