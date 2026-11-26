package androidx.compose.material3;

import androidx.compose.animation.core.Animatable;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.GraphicsLayerScope;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class v implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ v(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return ClockDialNode$pointerInputTapNode$1.invoke$lambda$0((ClockDialNode) obj2, (Offset) obj);
            default:
                return SearchBarKt$SearchBarImpl$wrappedContent$1.invoke$lambda$1$lambda$0((Animatable) obj2, (GraphicsLayerScope) obj);
        }
    }
}
