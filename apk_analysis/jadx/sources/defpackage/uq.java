package defpackage;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.unit.LayoutDirection;
import com.my.target.c1;
import com.my.target.eb;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class uq implements Arrangement.SpacingAlignmentCalculator, xl3, c1.a {
    public final /* synthetic */ Object b;

    public /* synthetic */ uq(Object obj) {
        this.b = obj;
    }

    @Override // androidx.compose.foundation.layout.Arrangement.SpacingAlignmentCalculator
    public int align(int i, LayoutDirection layoutDirection) {
        return Arrangement.spacedBy_D5KLDUw$lambda$0((Alignment.Horizontal) this.b, i, layoutDirection);
    }

    @Override // defpackage.xl3
    public Object apply(Object obj) {
        return (c18) ((xv) this.b).invoke(obj);
    }

    @Override // com.my.target.c1.a
    public void d(e6a e6aVar) {
        eb ebVar = (eb) this.b;
        int i = eb.i;
        ebVar.f = e6aVar;
    }
}
