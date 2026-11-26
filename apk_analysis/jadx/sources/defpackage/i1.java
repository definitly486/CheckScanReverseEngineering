package defpackage;

import androidx.compose.foundation.ClickableKt;
import androidx.compose.material3.RangeSliderState;
import androidx.compose.material3.SliderKt;
import androidx.compose.ui.node.TraversableNode;
import androidx.compose.ui.text.font.FontVariation;
import androidx.compose.ui.text.font.PlatformFontVariationSettings_androidKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntSize;
import java.util.Collection;
import yads.ms2;
import yads.my1;
import yads.vq0;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class i1 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ i1(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return Boolean.valueOf(((Collection) obj2).contains(obj));
            case 1:
                return Boolean.valueOf(ClickableKt.hasScrollableContainer$lambda$0((n07) obj2, (TraversableNode) obj));
            case 2:
                return PlatformFontVariationSettings_androidKt.toAndroidString$lambda$0((Density) obj2, (FontVariation.Setting) obj);
            case 3:
                return SliderKt.RangeSliderImpl$lambda$44$lambda$34$lambda$33((RangeSliderState) obj2, (IntSize) obj);
            default:
                return my1.a((vq0) obj2, (ms2) obj);
        }
    }
}
