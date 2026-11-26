package defpackage;

import androidx.compose.material3.DragHandleKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.layout.Placeable;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class nr2 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ nr2(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return DragHandleKt.VerticalDragHandle$lambda$13$lambda$12$lambda$11((Placeable) obj2, (Placeable.PlacementScope) obj);
            default:
                State state = (State) obj2;
                GraphicsLayerScope graphicsLayerScope = (GraphicsLayerScope) obj;
                graphicsLayerScope.getClass();
                graphicsLayerScope.setScaleX(((Number) state.getValue()).floatValue());
                graphicsLayerScope.setScaleY(((Number) state.getValue()).floatValue());
                return j59.a;
        }
    }
}
