package yads;

import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;
import android.view.View;

/* JADX INFO: loaded from: classes6.dex */
public final class on implements af {
    @Override // yads.af
    public final void a(View view) {
        Drawable background = view.getBackground();
        if (background instanceof TransitionDrawable) {
            ((TransitionDrawable) background).startTransition(500);
        }
    }

    @Override // yads.af
    public final void cancel() {
    }
}
