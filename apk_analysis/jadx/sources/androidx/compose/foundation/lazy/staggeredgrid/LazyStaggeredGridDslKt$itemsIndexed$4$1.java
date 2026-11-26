package androidx.compose.foundation.lazy.staggeredgrid;

import defpackage.bm3;
import defpackage.nl3;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class LazyStaggeredGridDslKt$itemsIndexed$4$1 implements nl3<Integer, StaggeredGridItemSpan> {
    final /* synthetic */ List<T> $items;
    final /* synthetic */ bm3<Integer, T, StaggeredGridItemSpan> $span;

    /* JADX WARN: Multi-variable type inference failed */
    public LazyStaggeredGridDslKt$itemsIndexed$4$1(bm3<? super Integer, ? super T, StaggeredGridItemSpan> bm3Var, List<? extends T> list) {
        this.$span = bm3Var;
        this.$items = list;
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    public final StaggeredGridItemSpan invoke(int i) {
        return this.$span.invoke(Integer.valueOf(i), (T) this.$items.get(i));
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ StaggeredGridItemSpan invoke(Integer num) {
        return invoke(num.intValue());
    }
}
