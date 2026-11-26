package defpackage;

import org.json.JSONArray;
import yads.as2;
import yads.fs2;
import yads.ph1;
import yads.sy0;
import yads.uh1;
import yads.vq0;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class q5a implements nl3 {
    public final /* synthetic */ int b = 1;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;
    public final /* synthetic */ Object e;
    public final /* synthetic */ Object f;

    public /* synthetic */ q5a(Integer num, vq0 vq0Var, String str, Object obj) {
        this.c = num;
        this.d = vq0Var;
        this.e = str;
        this.f = obj;
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
                return ph1.a((uh1) obj5, (as2) obj4, (fs2) obj2, (as2) obj3, obj);
            default:
                return sy0.a((Integer) obj5, (vq0) obj4, (String) obj3, obj2, (JSONArray) obj);
        }
    }

    public /* synthetic */ q5a(uh1 uh1Var, as2 as2Var, as2 as2Var2, fs2 fs2Var) {
        this.c = uh1Var;
        this.d = as2Var;
        this.f = fs2Var;
        this.e = as2Var2;
    }
}
