package defpackage;

import android.graphics.Color;
import android.graphics.PointF;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public final class ie4 {
    public static final td4.a a = td4.a.a("x", "y");

    public static /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[td4.b.values().length];
            a = iArr;
            try {
                iArr[td4.b.NUMBER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[td4.b.BEGIN_ARRAY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[td4.b.BEGIN_OBJECT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public static int a(td4 td4Var) {
        td4Var.m();
        int iE = (int) (td4Var.E() * 255.0d);
        int iE2 = (int) (td4Var.E() * 255.0d);
        int iE3 = (int) (td4Var.E() * 255.0d);
        while (td4Var.v()) {
            td4Var.e0();
        }
        td4Var.o();
        return Color.argb(255, iE, iE2, iE3);
    }

    public static PointF b(td4 td4Var, float f) {
        int i = a.a[td4Var.U().ordinal()];
        if (i == 1) {
            float fE = (float) td4Var.E();
            float fE2 = (float) td4Var.E();
            while (td4Var.v()) {
                td4Var.e0();
            }
            return new PointF(fE * f, fE2 * f);
        }
        if (i == 2) {
            td4Var.m();
            float fE3 = (float) td4Var.E();
            float fE4 = (float) td4Var.E();
            while (td4Var.U() != td4.b.END_ARRAY) {
                td4Var.e0();
            }
            td4Var.o();
            return new PointF(fE3 * f, fE4 * f);
        }
        if (i != 3) {
            mz0.c(td4Var.U(), "Unknown point starts with ");
            return null;
        }
        td4Var.n();
        float fD = 0.0f;
        float fD2 = 0.0f;
        while (td4Var.v()) {
            int iX = td4Var.X(a);
            if (iX == 0) {
                fD = d(td4Var);
            } else if (iX != 1) {
                td4Var.Z();
                td4Var.e0();
            } else {
                fD2 = d(td4Var);
            }
        }
        td4Var.p();
        return new PointF(fD * f, fD2 * f);
    }

    public static ArrayList c(td4 td4Var, float f) {
        ArrayList arrayList = new ArrayList();
        td4Var.m();
        while (td4Var.U() == td4.b.BEGIN_ARRAY) {
            td4Var.m();
            arrayList.add(b(td4Var, f));
            td4Var.o();
        }
        td4Var.o();
        return arrayList;
    }

    public static float d(td4 td4Var) {
        td4.b bVarU = td4Var.U();
        int i = a.a[bVarU.ordinal()];
        if (i == 1) {
            return (float) td4Var.E();
        }
        if (i != 2) {
            r01.e(bVarU, "Unknown value for token of type ");
            return 0.0f;
        }
        td4Var.m();
        float fE = (float) td4Var.E();
        while (td4Var.v()) {
            td4Var.e0();
        }
        td4Var.o();
        return fE;
    }
}
