package androidx.paging;

import defpackage.aa4;
import defpackage.cm3;
import defpackage.mm3;
import defpackage.qm3;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class LegacyPagingSource$2$1 implements DataSource.InvalidatedCallback, mm3 {
    final /* synthetic */ LegacyPagingSource<Key, Value> $tmp0;

    public LegacyPagingSource$2$1(LegacyPagingSource<Key, Value> legacyPagingSource) {
        this.$tmp0 = legacyPagingSource;
    }

    public final boolean equals(Object obj) {
        if ((obj instanceof DataSource.InvalidatedCallback) && (obj instanceof mm3)) {
            return aa4.e(getFunctionDelegate(), ((mm3) obj).getFunctionDelegate());
        }
        return false;
    }

    @Override // defpackage.mm3
    public final cm3<?> getFunctionDelegate() {
        return new qm3(0, this.$tmp0, LegacyPagingSource.class, "invalidate", "invalidate()V", 0);
    }

    public final int hashCode() {
        return getFunctionDelegate().hashCode();
    }

    @Override // androidx.paging.DataSource.InvalidatedCallback
    public final void onInvalidated() {
        this.$tmp0.invalidate();
    }
}
