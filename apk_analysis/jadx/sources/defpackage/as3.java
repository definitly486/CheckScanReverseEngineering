package defpackage;

import android.view.View;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class as3 implements View.OnClickListener {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ as3(int i, Object obj, Object obj2) {
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
                fs3 fs3Var = (fs3) obj;
                ((es3) obj2).b.onGroupShopRectangleAllClick(fs3Var.a, fs3Var.b);
                break;
            default:
                dk8.a aVar = (dk8.a) obj;
                vc1 vc1Var = ((dk8) obj2).t;
                if (vc1Var != null) {
                    vc1Var.invoke(Integer.valueOf(aVar.a));
                }
                break;
        }
    }
}
