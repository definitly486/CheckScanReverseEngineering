package androidx.compose.foundation.lazy.staggeredgrid;

import defpackage.nl3;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class LazyStaggeredGridDslKt$items$4$1 implements nl3<Integer, StaggeredGridItemSpan> {
    final /* synthetic */ List<T> $items;
    final /* synthetic */ nl3<T, StaggeredGridItemSpan> $span;

    /* JADX WARN: Multi-variable type inference failed */
    public LazyStaggeredGridDslKt$items$4$1(nl3<? super T, StaggeredGridItemSpan> nl3Var, List<? extends T> list) {
        this.$span = nl3Var;
        this.$items = list;
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    public final StaggeredGridItemSpan invoke(int i) {
        return this.$span.invoke((T) this.$items.get(i));
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ StaggeredGridItemSpan invoke(Integer num) {
        return invoke(num.intValue());
    }
}
