package yads;

import android.view.View;

/* JADX INFO: loaded from: classes6.dex */
public final class wh6 implements wl5 {
    @Override // yads.wl5
    public final void a(View view) {
        view.setVisibility(0);
        view.setAlpha(0.4f);
        view.setEnabled(false);
    }

    @Override // yads.wl5
    public final void b(View view) {
        view.setVisibility(0);
        view.animate().alpha(1.0f).setDuration(200L);
        view.setEnabled(true);
    }
}
