package yads;

import android.graphics.Bitmap;
import defpackage.lq9;
import defpackage.n07;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class ec3 implements yc3 {
    public final /* synthetic */ n07 a;
    public final /* synthetic */ hc3 b;
    public final /* synthetic */ String c;
    public final /* synthetic */ cc3 d;

    public ec3(n07 n07Var, hc3 hc3Var, String str, cc3 cc3Var) {
        this.a = n07Var;
        this.b = hc3Var;
        this.c = str;
        this.d = cc3Var;
    }

    @Override // yads.yc3
    public final void a(xc3 xc3Var, boolean z) {
        Bitmap bitmap;
        if (this.a.b || (bitmap = xc3Var.a) == null) {
            return;
        }
        hc3 hc3Var = this.b;
        String str = this.c;
        cc3 cc3Var = this.d;
        b05 b05Var = hc3Var.b;
        Map mapSingletonMap = Collections.singletonMap(str, bitmap);
        mapSingletonMap.getClass();
        b05Var.b.putAll(mapSingletonMap);
        ((lq9) cc3Var).a(bitmap);
    }

    @Override // yads.x85
    public final void a(hi6 hi6Var) {
    }
}
