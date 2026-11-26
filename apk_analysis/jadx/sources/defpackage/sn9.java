package defpackage;

import android.view.View;
import com.my.target.e;
import com.my.target.k1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class sn9 implements View.OnClickListener {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ sn9(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                ((e) obj).b.dismiss();
                break;
            default:
                ((k1) obj).c();
                break;
        }
    }
}
