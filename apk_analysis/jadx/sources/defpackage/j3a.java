package defpackage;

import android.view.View;
import com.my.target.k1;
import yads.ni5;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class j3a implements View.OnClickListener {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ j3a(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                ni5.a((ni5) obj, view);
                break;
            default:
                ((k1) obj).c();
                break;
        }
    }
}
