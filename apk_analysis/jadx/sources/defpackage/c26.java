package defpackage;

import androidx.compose.foundation.pager.PagerLazyLayoutItemProvider;
import androidx.compose.foundation.text.selection.SelectionContainerKt;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class c26 implements bm3 {
    public final /* synthetic */ int b = 0;
    public final /* synthetic */ int c;
    public final /* synthetic */ int d;
    public final /* synthetic */ Object e;
    public final /* synthetic */ Object f;

    public /* synthetic */ c26(PagerLazyLayoutItemProvider pagerLazyLayoutItemProvider, int i, Object obj, int i2) {
        this.e = pagerLazyLayoutItemProvider;
        this.c = i;
        this.f = obj;
        this.d = i2;
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        int i = this.b;
        Object obj3 = this.e;
        switch (i) {
            case 0:
                int iIntValue = ((Integer) obj2).intValue();
                return PagerLazyLayoutItemProvider.Item$lambda$1((PagerLazyLayoutItemProvider) obj3, this.c, this.f, this.d, (Composer) obj, iIntValue);
            default:
                int iIntValue2 = ((Integer) obj2).intValue();
                return SelectionContainerKt.SelectionContainer$lambda$4((Modifier) obj3, (bm3) this.f, this.c, this.d, (Composer) obj, iIntValue2);
        }
    }

    public /* synthetic */ c26(Modifier modifier, bm3 bm3Var, int i, int i2) {
        this.e = modifier;
        this.f = bm3Var;
        this.c = i;
        this.d = i2;
    }
}
