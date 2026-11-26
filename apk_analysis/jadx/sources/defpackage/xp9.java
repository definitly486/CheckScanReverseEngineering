package defpackage;

import android.view.View;
import yads.c62;
import yads.gg6;
import yads.qh2;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class xp9 implements gg6 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ xp9(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // yads.gg6
    public final View a() {
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                return c62.a((c62) obj);
            default:
                return qh2.b((qh2) obj);
        }
    }
}
