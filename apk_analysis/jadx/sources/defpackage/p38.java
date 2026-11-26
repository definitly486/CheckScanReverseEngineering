package defpackage;

import android.graphics.Outline;
import android.view.View;
import android.view.ViewOutlineProvider;

/* JADX INFO: loaded from: classes.dex */
public final class p38 extends ViewOutlineProvider {
    public final /* synthetic */ int a;

    @Override // android.view.ViewOutlineProvider
    public final void getOutline(View view, Outline outline) {
        switch (this.a) {
            case 0:
                view.getClass();
                outline.getClass();
                outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), pl2.e(4));
                break;
            default:
                view.getClass();
                outline.getClass();
                float fE = pl2.e(24);
                outline.setRoundRect(0, -((int) fE), view.getWidth(), view.getHeight(), fE);
                break;
        }
    }
}
