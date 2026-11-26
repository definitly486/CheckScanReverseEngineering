package defpackage;

import android.widget.TextView;
import java.util.ArrayList;
import yads.b82;
import yads.bn1;
import yads.fs2;
import yads.g82;
import yads.jk1;
import yads.tt;
import yads.vq0;
import yads.zo1;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class sv9 implements nl3 {
    public final /* synthetic */ int b = 1;
    public final /* synthetic */ fs2 c;
    public final /* synthetic */ Object d;
    public final /* synthetic */ Object e;
    public final /* synthetic */ TextView f;
    public final /* synthetic */ Object g;

    public /* synthetic */ sv9(ArrayList arrayList, jk1 jk1Var, bn1 bn1Var, vq0 vq0Var, fs2 fs2Var) {
        this.d = jk1Var;
        this.e = arrayList;
        this.f = bn1Var;
        this.g = vq0Var;
        this.c = fs2Var;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.g;
        TextView textView = this.f;
        Object obj3 = this.e;
        Object obj4 = this.d;
        switch (i) {
            case 0:
                tt ttVar = (tt) obj2;
                return g82.a((b82) obj4, this.c, (g82) obj3, (zo1) textView, ttVar, obj);
            default:
                return jk1.a((jk1) obj4, (ArrayList) obj3, (bn1) textView, (vq0) obj2, this.c, ((Integer) obj).intValue());
        }
    }

    public /* synthetic */ sv9(b82 b82Var, fs2 fs2Var, g82 g82Var, tt ttVar, zo1 zo1Var) {
        this.d = b82Var;
        this.c = fs2Var;
        this.e = g82Var;
        this.f = zo1Var;
        this.g = ttVar;
    }
}
