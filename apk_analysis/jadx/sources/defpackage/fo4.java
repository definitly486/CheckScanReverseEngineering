package defpackage;

import androidx.compose.animation.core.SeekableTransitionState;
import androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridIntervalContent;
import androidx.compose.foundation.text.input.internal.selection.TextFieldMagnifierNodeImpl28;
import androidx.compose.foundation.text.modifiers.TextStringSimpleNode;
import androidx.compose.ui.unit.DpSize;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class fo4 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ fo4(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return LazyStaggeredGridIntervalContent.item$lambda$0$0(obj2, ((Integer) obj).intValue());
            case 1:
                return SeekableTransitionState.firstFrameLambda$lambda$0((SeekableTransitionState) obj2, ((Long) obj).longValue());
            case 2:
                return TextFieldMagnifierNodeImpl28.magnifierNode$lambda$1((TextFieldMagnifierNodeImpl28) obj2, (DpSize) obj);
            default:
                return Boolean.valueOf(TextStringSimpleNode.applySemantics$lambda$0((TextStringSimpleNode) obj2, (List) obj));
        }
    }
}
