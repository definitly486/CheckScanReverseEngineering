package androidx.paging;

import defpackage.bj;
import defpackage.n7;
import defpackage.u0;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class ItemSnapshotList<T> extends u0<T> {
    private final List<T> items;
    private final int placeholdersAfter;
    private final int placeholdersBefore;

    /* JADX WARN: Multi-variable type inference failed */
    public ItemSnapshotList(int i, int i2, List<? extends T> list) {
        list.getClass();
        this.placeholdersBefore = i;
        this.placeholdersAfter = i2;
        this.items = list;
    }

    @Override // defpackage.u0, java.util.List
    public T get(int i) {
        if (i >= 0 && i < this.placeholdersBefore) {
            return null;
        }
        int i2 = this.placeholdersBefore;
        if (i < this.items.size() + i2 && i2 <= i) {
            return this.items.get(i - this.placeholdersBefore);
        }
        int size = this.items.size() + this.placeholdersBefore;
        if (i < size() && size <= i) {
            return null;
        }
        bj.d(size(), n7.c(i, "Illegal attempt to access index ", " in ItemSnapshotList of size "));
        return null;
    }

    public final List<T> getItems() {
        return this.items;
    }

    public final int getPlaceholdersAfter() {
        return this.placeholdersAfter;
    }

    public final int getPlaceholdersBefore() {
        return this.placeholdersBefore;
    }

    @Override // defpackage.u0, defpackage.v
    public int getSize() {
        return this.items.size() + this.placeholdersBefore + this.placeholdersAfter;
    }
}
