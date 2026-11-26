package androidx.navigation.internal;

import androidx.collection.SparseArrayCompat;
import androidx.navigation.NavDestination;
import defpackage.ah;
import defpackage.qz0;
import defpackage.re4;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
public final class NavGraphImpl$iterator$1 implements Iterator<NavDestination>, re4 {
    private int index = -1;
    final /* synthetic */ NavGraphImpl this$0;
    private boolean wentToNext;

    public NavGraphImpl$iterator$1(NavGraphImpl navGraphImpl) {
        this.this$0 = navGraphImpl;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.index + 1 < this.this$0.getNodes$navigation_common_release().size();
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.util.Iterator
    public NavDestination next() {
        if (!hasNext()) {
            qz0.e();
            return null;
        }
        this.wentToNext = true;
        SparseArrayCompat<NavDestination> nodes$navigation_common_release = this.this$0.getNodes$navigation_common_release();
        int i = this.index + 1;
        this.index = i;
        return nodes$navigation_common_release.valueAt(i);
    }

    @Override // java.util.Iterator
    public void remove() {
        if (!this.wentToNext) {
            ah.f("You must call next() before you can remove an element");
            return;
        }
        SparseArrayCompat<NavDestination> nodes$navigation_common_release = this.this$0.getNodes$navigation_common_release();
        nodes$navigation_common_release.valueAt(this.index).setParent(null);
        nodes$navigation_common_release.removeAt(this.index);
        this.index--;
        this.wentToNext = false;
    }
}
