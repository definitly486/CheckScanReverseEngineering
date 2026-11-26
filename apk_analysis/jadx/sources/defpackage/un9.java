package defpackage;

import android.graphics.Outline;
import android.view.View;
import android.view.ViewOutlineProvider;

/* JADX INFO: loaded from: classes4.dex */
public final class un9 extends ViewOutlineProvider {
    public final /* synthetic */ int a;

    public un9(int i) {
        this.a = i;
    }

    @Override // android.view.ViewOutlineProvider
    public final void getOutline(View view, Outline outline) {
        int width = view.getWidth();
        int height = view.getHeight();
        int i = this.a;
        outline.setRoundRect(0, 0, width, height + i, i);
        view.setClipToOutline(true);
    }
}
