package defpackage;

import androidx.recyclerview.widget.RecyclerView;
import yads.cs1;
import yads.cy1;
import yads.et1;
import yads.og1;
import yads.rg1;
import yads.tt;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class bs9 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;
    public final /* synthetic */ Object e;
    public final /* synthetic */ Object f;

    public /* synthetic */ bs9(Object obj, Object obj2, Object obj3, Object obj4, int i) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
        this.e = obj3;
        this.f = obj4;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.f;
        Object obj3 = this.e;
        Object obj4 = this.d;
        Object obj5 = this.c;
        switch (i) {
            case 0:
                return cs1.a((et1) obj5, (r07) obj4, (cs1) obj3, (RecyclerView) obj2, ((Boolean) obj).booleanValue());
            default:
                return rg1.a((rg1) obj5, (cy1) obj4, (tt) obj3, (og1) obj2, obj);
        }
    }
}
