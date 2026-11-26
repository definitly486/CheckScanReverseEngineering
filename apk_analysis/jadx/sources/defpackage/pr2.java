package defpackage;

import android.view.View;
import androidx.compose.material3.DragHandleKt;
import androidx.compose.material3.DragHandleShapes;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.State;
import androidx.compose.ui.graphics.GraphicsLayerScope;
import yads.or0;
import yads.p41;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class pr2 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;
    public final /* synthetic */ Object e;

    public /* synthetic */ pr2(Object obj, Object obj2, Object obj3, int i) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
        this.e = obj3;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.e;
        Object obj3 = this.d;
        Object obj4 = this.c;
        switch (i) {
            case 0:
                return DragHandleKt.VerticalDragHandle$lambda$10$lambda$9((DragHandleShapes) obj4, (State) obj3, (MutableState) obj2, (GraphicsLayerScope) obj);
            default:
                return or0.a((or0) obj4, (View) obj3, (p41) obj2, ((Boolean) obj).booleanValue());
        }
    }
}
