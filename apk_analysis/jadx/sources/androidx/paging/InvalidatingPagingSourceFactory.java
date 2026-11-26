package androidx.paging;

import androidx.paging.internal.SynchronizedLock;
import defpackage.j59;
import defpackage.kx2;
import defpackage.ll3;
import defpackage.qn1;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class InvalidatingPagingSourceFactory<Key, Value> implements PagingSourceFactory<Key, Value> {
    private final SynchronizedLock lock;
    private final ll3<PagingSource<Key, Value>> pagingSourceFactory;
    private List<? extends PagingSource<Key, Value>> pagingSources;

    /* JADX WARN: Multi-variable type inference failed */
    public InvalidatingPagingSourceFactory(ll3<? extends PagingSource<Key, Value>> ll3Var) {
        ll3Var.getClass();
        this.pagingSourceFactory = ll3Var;
        this.lock = new SynchronizedLock();
        this.pagingSources = kx2.b;
    }

    public final void invalidate() {
        List<? extends PagingSource<Key, Value>> list;
        synchronized (this.lock) {
            list = this.pagingSources;
            this.pagingSources = kx2.b;
        }
        for (PagingSource<Key, Value> pagingSource : list) {
            if (!pagingSource.getInvalid()) {
                pagingSource.invalidate();
            }
        }
    }

    @Override // androidx.paging.PagingSourceFactory, defpackage.ll3
    public PagingSource<Key, Value> invoke() {
        PagingSource<Key, Value> pagingSourceInvoke = this.pagingSourceFactory.invoke();
        synchronized (this.lock) {
            this.pagingSources = qn1.i0(pagingSourceInvoke, this.pagingSources);
            j59 j59Var = j59.a;
        }
        return pagingSourceInvoke;
    }

    public final List<PagingSource<Key, Value>> pagingSources$paging_common() {
        return this.pagingSources;
    }
}
