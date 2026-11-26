package yads;

import android.database.DataSetObserver;

/* JADX INFO: loaded from: classes6.dex */
public final class jr extends DataSetObserver {
    public final /* synthetic */ nr a;

    public jr(nr nrVar) {
        this.a = nrVar;
    }

    @Override // android.database.DataSetObserver
    public final void onChanged() {
        this.a.d();
    }

    @Override // android.database.DataSetObserver
    public final void onInvalidated() {
        this.a.d();
    }
}
