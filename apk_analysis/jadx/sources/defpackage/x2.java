package defpackage;

import androidx.compose.material3.internal.AccessibilityUtilKt;
import androidx.compose.ui.layout.Placeable;
import java.util.List;
import yads.sy0;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class x2 implements nl3 {
    public final /* synthetic */ int b = 0;
    public final /* synthetic */ int c;
    public final /* synthetic */ Object d;

    public /* synthetic */ x2(int i, Placeable placeable) {
        this.d = placeable;
        this.c = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.d;
        int i2 = this.c;
        switch (i) {
            case 0:
                return AccessibilityUtilKt.IncreaseVerticalSemanticsBounds$lambda$4$lambda$3((Placeable) obj2, i2, (Placeable.PlacementScope) obj);
            default:
                return sy0.a(i2, obj2, (List) obj);
        }
    }

    public /* synthetic */ x2(int i, Object obj) {
        this.c = i;
        this.d = obj;
    }
}
