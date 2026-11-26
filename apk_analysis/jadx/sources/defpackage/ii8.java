package defpackage;

import android.view.View;
import com.androidadvance.topsnackbar.TSnackbar;

/* JADX INFO: loaded from: classes3.dex */
public final class ii8 implements View.OnClickListener {
    public final /* synthetic */ View.OnClickListener b;
    public final /* synthetic */ TSnackbar c;

    public ii8(TSnackbar tSnackbar, View.OnClickListener onClickListener) {
        this.c = tSnackbar;
        this.b = onClickListener;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.b.onClick(view);
        this.c.b(1);
    }
}
