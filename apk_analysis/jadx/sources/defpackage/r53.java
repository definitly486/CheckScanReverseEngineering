package defpackage;

import android.view.View;
import com.warefly.checkscan.core.ui.base.dialogs.TextDialog;
import com.warefly.checkscan.presentation.favorite.view.FavoriteFragment;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class r53 implements View.OnClickListener {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ r53(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                ze4<Object>[] ze4VarArr = FavoriteFragment.l;
                ((FavoriteFragment) obj).o().onBackPressed();
                break;
            default:
                ze4<Object>[] ze4VarArr2 = TextDialog.f;
                ((TextDialog) obj).dismiss();
                break;
        }
    }
}
