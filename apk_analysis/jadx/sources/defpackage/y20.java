package defpackage;

import android.view.View;
import com.my.target.oa;
import yads.fo2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class y20 implements View.OnClickListener {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ y20(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                ((a87) obj).a();
                break;
            case 1:
                fo2.a((fo2) obj, view);
                break;
            default:
                oa oaVar = (oa) obj;
                int i2 = oa.e;
                oaVar.removeView(oaVar.c);
                break;
        }
    }
}
