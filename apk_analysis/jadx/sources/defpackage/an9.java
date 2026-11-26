package defpackage;

import android.view.View;
import yads.a2;
import yads.wa;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class an9 implements View.OnClickListener {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ an9(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                a2.a((a2) obj, view);
                break;
            default:
                wa.a((wa) obj, view);
                break;
        }
    }
}
