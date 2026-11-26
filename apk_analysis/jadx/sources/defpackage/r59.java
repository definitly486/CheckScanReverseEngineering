package defpackage;

import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class r59 implements l69 {
    public final jf6 a;

    public static final /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[i69.values().length];
            try {
                iArr[i69.SHOWN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[i69.CLOSED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            a = iArr;
        }
    }

    public r59(jf6 jf6Var) {
        this.a = jf6Var;
    }

    @Override // defpackage.l69
    public final void a(i69 i69Var) {
        i69Var.getClass();
        int i = a.a[i69Var.ordinal()];
        jf6 jf6Var = this.a;
        if (i == 1) {
            jf6Var.G(true);
            Map mapSingletonMap = Collections.singletonMap("SDK", "Shown");
            mapSingletonMap.getClass();
            new kd.t0.d("Unity Offerwall", mapSingletonMap).c();
            return;
        }
        if (i != 2) {
            return;
        }
        jf6Var.G(false);
        Map mapSingletonMap2 = Collections.singletonMap("SDK", "Closed");
        mapSingletonMap2.getClass();
        new kd.t0.a("Unity Offerwall", mapSingletonMap2).c();
    }
}
