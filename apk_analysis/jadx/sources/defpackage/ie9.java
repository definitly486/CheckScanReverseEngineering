package defpackage;

import android.view.View;

/* JADX INFO: loaded from: classes5.dex */
public final class ie9 {
    public static final void a(int i, View view) {
        view.getClass();
        view.setPadding(i, view.getPaddingTop(), i, view.getPaddingBottom());
    }

    public static final void b(View view, int i) {
        view.getClass();
        view.getLayoutParams().width = i;
        view.requestLayout();
    }
}
