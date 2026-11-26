package androidx.paging;

import defpackage.r22;
import defpackage.y22;

/* JADX INFO: loaded from: classes3.dex */
public final class InitialPagedList<K, V> extends ContiguousPagedList<K, V> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InitialPagedList(y22 y22Var, r22 r22Var, r22 r22Var2, PagedList.Config config, K k) {
        super(new LegacyPagingSource(r22Var, new InitialDataSource()), y22Var, r22Var, r22Var2, null, config, PagingSource.LoadResult.Page.Companion.empty$paging_common(), k);
        y22Var.getClass();
        r22Var.getClass();
        r22Var2.getClass();
        config.getClass();
    }
}
