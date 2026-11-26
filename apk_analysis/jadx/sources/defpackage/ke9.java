package defpackage;

import android.content.Context;
import android.view.View;
import yads.gf0;
import yads.nq0;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class ke9 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ ke9(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                ((View) obj).invalidate();
                return j59.a;
            case 1:
                return gf0.c((Context) obj);
            default:
                return nq0.E((nq0) obj);
        }
    }
}
