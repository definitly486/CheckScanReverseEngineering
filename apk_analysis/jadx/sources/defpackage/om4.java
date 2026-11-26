package defpackage;

import android.view.ViewGroup;
import androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsProviderModifierNode;
import androidx.compose.material3.SwipeToDismissBoxDefaults;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Density;
import yads.d22;
import yads.s22;
import yads.tq;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class om4 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ om4(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return LazyLayoutBeyondBoundsProviderModifierNode.measure_3p2s80s$lambda$0((Placeable) obj2, (Placeable.PlacementScope) obj);
            case 1:
                ((cp2) obj2).dispose();
                return j59.a;
            case 2:
                return Float.valueOf(SwipeToDismissBoxDefaults._get_positionalThreshold_$lambda$2$lambda$1$lambda$0((Density) obj2, ((Float) obj).floatValue()));
            case 3:
                return d22.a((s22) obj2, ((Boolean) obj).booleanValue());
            default:
                return tq.a((ViewGroup) obj2, ((Boolean) obj).booleanValue());
        }
    }
}
