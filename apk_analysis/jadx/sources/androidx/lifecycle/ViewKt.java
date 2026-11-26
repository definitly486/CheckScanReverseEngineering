package androidx.lifecycle;

import android.view.View;
import defpackage.ul2;

/* JADX INFO: loaded from: classes3.dex */
public final class ViewKt {
    @ul2
    public static final /* synthetic */ LifecycleOwner findViewTreeLifecycleOwner(View view) {
        view.getClass();
        return ViewTreeLifecycleOwner.get(view);
    }
}
