package androidx.savedstate;

import android.view.View;
import defpackage.ul2;

/* JADX INFO: loaded from: classes3.dex */
public final class ViewKt {
    @ul2
    public static final /* synthetic */ SavedStateRegistryOwner findViewTreeSavedStateRegistryOwner(View view) {
        view.getClass();
        return ViewTreeSavedStateRegistryOwner.get(view);
    }
}
