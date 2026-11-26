package defpackage;

import android.view.View;
import androidx.appcompat.widget.Toolbar;
import androidx.core.widget.ContentLoadingProgressBar;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class zx1 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ View c;

    public /* synthetic */ zx1(View view, int i) {
        this.b = i;
        this.c = view;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        View view = this.c;
        switch (i) {
            case 0:
                ((ContentLoadingProgressBar) view).lambda$new$0();
                break;
            default:
                ((Toolbar) view).invalidateMenu();
                break;
        }
    }
}
