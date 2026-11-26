package defpackage;

import androidx.compose.material3.IconKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import yads.e14;
import yads.sd4;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class qn3 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ qn3(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                ps.b bVar = (ps.b) obj;
                bVar.getClass();
                ((MutableState) obj2).setValue(Boolean.valueOf(bVar instanceof ps.b.c));
                return j59.a;
            case 1:
                return IconKt.Icon$lambda$12$lambda$11$lambda$10((GraphicsLayer) obj2, (ContentDrawScope) obj);
            default:
                return e14.a((e14) obj2, (sd4) obj);
        }
    }
}
