package defpackage;

import androidx.compose.foundation.gestures.AnchoredDragScope;
import androidx.compose.foundation.gestures.AnchoredDraggableKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutScrollScope;
import androidx.compose.foundation.pager.PagerStateKt;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ve implements bm3 {
    public final /* synthetic */ int b = 0;
    public final /* synthetic */ o07 c;
    public final /* synthetic */ Object d;

    public /* synthetic */ ve(o07 o07Var, LazyLayoutScrollScope lazyLayoutScrollScope) {
        this.c = o07Var;
        this.d = lazyLayoutScrollScope;
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        int i = this.b;
        Object obj3 = this.d;
        o07 o07Var = this.c;
        switch (i) {
            case 0:
                return AnchoredDraggableKt.animateTo$lambda$0$1((AnchoredDragScope) obj3, o07Var, ((Float) obj).floatValue(), ((Float) obj2).floatValue());
            default:
                return PagerStateKt.animateScrollToPage$lambda$2(o07Var, (LazyLayoutScrollScope) obj3, ((Float) obj).floatValue(), ((Float) obj2).floatValue());
        }
    }

    public /* synthetic */ ve(AnchoredDragScope anchoredDragScope, o07 o07Var) {
        this.d = anchoredDragScope;
        this.c = o07Var;
    }
}
