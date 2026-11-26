package defpackage;

import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.text.modifiers.TextAnnotatedStringNode;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.transition.TransitionValues;
import yads.bt0;
import yads.fo2;
import yads.go2;
import yads.it2;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class av5 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ av5(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return OffsetKt.absoluteOffset$lambda$0((nl3) obj2, (InspectorInfo) obj);
            case 1:
                return TextAnnotatedStringNode.measure_3p2s80s$lambda$0$0((Placeable) obj2, (Placeable.PlacementScope) obj);
            case 2:
                return bt0.b((xo9) obj2, obj);
            case 3:
                return fo2.a((fo2) obj2, (go2) obj);
            default:
                return it2.a((TransitionValues) obj2, (int[]) obj);
        }
    }
}
