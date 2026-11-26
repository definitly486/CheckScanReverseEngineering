package defpackage;

import android.view.View;
import com.warefly.checkscan.presentation.queue.view.QueueSortDialog;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class kw6 implements View.OnClickListener {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ kw6(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.b;
        Object obj = this.d;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                QueueSortDialog queueSortDialog = (QueueSortDialog) obj2;
                queueSortDialog.d.invoke((mz6) obj);
                queueSortDialog.dismiss();
                break;
            default:
                dn1 dn1Var = (dn1) obj;
                ((dw7) obj2).b.onFavouriteClick(dn1Var.a, !dn1Var.c);
                break;
        }
    }
}
