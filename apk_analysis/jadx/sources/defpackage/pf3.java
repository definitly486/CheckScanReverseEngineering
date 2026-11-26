package defpackage;

import androidx.compose.foundation.layout.FlowLayoutOverflowState;
import androidx.compose.foundation.layout.FlowLineMeasurePolicy;
import androidx.compose.material3.IndicatorLineNode;
import androidx.compose.material3.SliderState;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.layout.Placeable;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class pf3 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ pf3(int i, Object obj, Object obj2) {
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
                return FlowLayoutOverflowState.setOverflowMeasurables__hBUhpc$lambda$3$0((FlowLayoutOverflowState) obj3, (FlowLineMeasurePolicy) obj2, (Placeable) obj);
            case 1:
                return IndicatorLineNode.drawWithCacheModifierNode$lambda$3$lambda$2((Path) obj3, (IndicatorLineNode) obj2, (ContentDrawScope) obj);
            default:
                return SliderState.Companion.Saver$lambda$1((ll3) obj3, (nm1) obj2, (List) obj);
        }
    }
}
