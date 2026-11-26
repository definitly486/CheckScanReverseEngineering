package yads;

import android.content.Context;
import java.io.File;

/* JADX INFO: loaded from: classes6.dex */
public final class yq2 {
    /* JADX WARN: Code duplicated, block: B:21:0x002f  */
    public final ok5 a(Context context) {
        long j;
        zg5 zg5Var;
        File fileA = pp0.a(context, "mobileads-video-cache");
        zg5 zg5Var2 = zg5.l;
        if (zg5Var2 == null) {
            synchronized (zg5.k) {
                zg5Var = zg5.l;
                if (zg5Var == null) {
                    zg5Var = new zg5();
                    zg5.l = zg5Var;
                }
            }
            zg5Var2 = zg5Var;
        }
        fe5 fe5VarA = zg5Var2.a(context);
        if (fe5VarA != null) {
            j = fe5VarA.c;
            if (j == 0) {
                j = 52428800;
            }
        } else {
            j = 52428800;
        }
        return new ok5(fileA, new zr3(x74.a(context, 41943040L, j)), new rp2(context));
    }
}
