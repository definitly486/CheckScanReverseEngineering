package defpackage;

import androidx.compose.material3.DatePickerColors;
import androidx.compose.material3.DatePickerKt;
import androidx.compose.material3.SelectedRangeInfo;
import androidx.compose.material3.WideNavigationRailKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class ia2 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ ia2(int i, Object obj, Object obj2) {
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
                return DatePickerKt.Month$lambda$51$lambda$50((SelectedRangeInfo) obj3, (DatePickerColors) obj2, (ContentDrawScope) obj);
            default:
                return WideNavigationRailKt.Scrim_3J_VO9M$lambda$33$lambda$32((String) obj3, (MutableState) obj2, (SemanticsPropertyReceiver) obj);
        }
    }
}
