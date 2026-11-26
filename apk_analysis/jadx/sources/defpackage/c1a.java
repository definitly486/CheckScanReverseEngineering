package defpackage;

import android.widget.TextView;
import yads.as2;
import yads.fs2;
import yads.k52;
import yads.kw5;
import yads.m52;
import yads.s52;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class c1a implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ fs2 c;
    public final /* synthetic */ Object d;
    public final /* synthetic */ Object e;
    public final /* synthetic */ Object f;

    public /* synthetic */ c1a(Object obj, Object obj2, Object obj3, fs2 fs2Var, int i) {
        this.b = i;
        this.d = obj;
        this.e = obj2;
        this.f = obj3;
        this.c = fs2Var;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        fs2 fs2Var = this.c;
        Object obj2 = this.f;
        Object obj3 = this.e;
        Object obj4 = this.d;
        switch (i) {
            case 0:
                return kw5.b((TextView) obj4, (as2) obj3, (as2) obj2, fs2Var, obj);
            default:
                return m52.b((m52) obj4, (s52) obj3, (k52) obj2, fs2Var, obj);
        }
    }
}
