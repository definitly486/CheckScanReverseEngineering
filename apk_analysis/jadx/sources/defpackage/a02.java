package defpackage;

import android.view.View;
import androidx.compose.foundation.layout.ContextualFlowRowOverflow;
import androidx.compose.foundation.layout.FlowLayoutOverflowState;
import androidx.compose.material3.DatePickerDefaults;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.Dp;
import yads.tq;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class a02 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ a02(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return ContextualFlowRowOverflow.Companion.expandOrCollapseIndicator__jt2gSs$lambda$1$1((dm3) obj2, (FlowLayoutOverflowState) obj);
            case 1:
                return DatePickerDefaults.DatePickerHeadline_ISIPfiY$lambda$3$lambda$2((String) obj2, (SemanticsPropertyReceiver) obj);
            case 2:
                DrawScope drawScope = (DrawScope) obj;
                drawScope.getClass();
                DrawScope.m6787drawCircleVaOC9Bg$default(drawScope, ((Color) obj2).m6242unboximpl(), drawScope.mo1434toPx0680j_4(Dp.m9042constructorimpl(tk6.c + tk6.d)) / 2.0f, 0L, 0.0f, null, null, 0, 124, null);
                return j59.a;
            default:
                return tq.a((View) obj2, ((Double) obj).doubleValue());
        }
    }
}
