package defpackage;

import androidx.compose.foundation.text.CoreTextFieldKt;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.material3.DatePickerKt;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.transition.TransitionValues;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.utils.StatusRunnable;
import java.util.UUID;
import yads.qm5;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class x12 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ x12(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return CoreTextFieldKt.CoreTextField$lambda$17$0((TextFieldSelectionManager) obj2, (DisposableEffectScope) obj);
            case 1:
                return DatePickerKt.WeekDays$lambda$48$lambda$47$lambda$45$lambda$44((b36) obj2, (SemanticsPropertyReceiver) obj);
            case 2:
                return StatusRunnable.forUUID$lambda$1((UUID) obj2, (WorkDatabase) obj);
            default:
                return qm5.b((TransitionValues) obj2, (int[]) obj);
        }
    }
}
