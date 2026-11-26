package androidx.lifecycle;

import android.view.View;
import defpackage.ul2;

/* JADX INFO: loaded from: classes3.dex */
public final class ViewTreeViewModelKt {
    @ul2
    public static final /* synthetic */ ViewModelStoreOwner findViewTreeViewModelStoreOwner(View view) {
        view.getClass();
        return ViewTreeViewModelStoreOwner.get(view);
    }
}
