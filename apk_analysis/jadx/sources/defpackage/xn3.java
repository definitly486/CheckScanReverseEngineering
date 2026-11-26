package defpackage;

import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.foundation.text.TextLinkScope;
import androidx.compose.material3.SheetState;
import androidx.compose.material3.SheetValue;
import androidx.compose.ui.semantics.SemanticsProperties_androidKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.SaversKt;
import androidx.compose.ui.unit.DpOffset;
import yads.ni1;
import yads.uu0;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class xn3 implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ xn3(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver.getClass();
                SemanticsProperties_androidKt.setTestTagsAsResourceId(semanticsPropertyReceiver, true);
                return j59.a;
            case 1:
                return SaversKt.FontStyleSaver$lambda$1(obj);
            case 2:
                return Boolean.valueOf(SheetState._init_$lambda$7((SheetValue) obj));
            case 3:
                return TextLinkScope.LinksComposables$lambda$0$1$0((SemanticsPropertyReceiver) obj);
            case 4:
                return VectorConvertersKt.DpOffsetToVector$lambda$0((DpOffset) obj);
            case 5:
                return Boolean.valueOf(ni1.a(obj));
            default:
                return Boolean.valueOf(uu0.a(obj));
        }
    }
}
