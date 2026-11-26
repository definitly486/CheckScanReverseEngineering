package defpackage;

import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes3.dex */
public final class xk4 {
    public final List<dy1> a;
    public final nw4 b;
    public final String c;
    public final long d;
    public final a e;
    public final long f;
    public final String g;
    public final List<i15> h;
    public final ql i;
    public final int j;
    public final int k;
    public final int l;
    public final float m;
    public final float n;
    public final float o;
    public final float p;
    public final ll q;
    public final ml r;
    public final dl s;
    public final List<vf4<Float>> t;
    public final b u;
    public final boolean v;
    public final ik0 w;
    public final ft2 x;
    public final bh4 y;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class a {
        private static final /* synthetic */ a[] $VALUES;
        public static final a IMAGE;
        public static final a NULL;
        public static final a PRE_COMP;
        public static final a SHAPE;
        public static final a SOLID;
        public static final a TEXT;
        public static final a UNKNOWN;

        static {
            a aVar = new a("PRE_COMP", 0);
            PRE_COMP = aVar;
            a aVar2 = new a("SOLID", 1);
            SOLID = aVar2;
            a aVar3 = new a("IMAGE", 2);
            IMAGE = aVar3;
            a aVar4 = new a("NULL", 3);
            NULL = aVar4;
            a aVar5 = new a("SHAPE", 4);
            SHAPE = aVar5;
            a aVar6 = new a("TEXT", 5);
            TEXT = aVar6;
            a aVar7 = new a("UNKNOWN", 6);
            UNKNOWN = aVar7;
            $VALUES = new a[]{aVar, aVar2, aVar3, aVar4, aVar5, aVar6, aVar7};
        }

        public a() {
            throw null;
        }

        public static a valueOf(String str) {
            return (a) Enum.valueOf(a.class, str);
        }

        public static a[] values() {
            return (a[]) $VALUES.clone();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class b {
        private static final /* synthetic */ b[] $VALUES;
        public static final b ADD;
        public static final b INVERT;
        public static final b LUMA;
        public static final b LUMA_INVERTED;
        public static final b NONE;
        public static final b UNKNOWN;

        static {
            b bVar = new b("NONE", 0);
            NONE = bVar;
            b bVar2 = new b("ADD", 1);
            ADD = bVar2;
            b bVar3 = new b("INVERT", 2);
            INVERT = bVar3;
            b bVar4 = new b("LUMA", 3);
            LUMA = bVar4;
            b bVar5 = new b("LUMA_INVERTED", 4);
            LUMA_INVERTED = bVar5;
            b bVar6 = new b("UNKNOWN", 5);
            UNKNOWN = bVar6;
            $VALUES = new b[]{bVar, bVar2, bVar3, bVar4, bVar5, bVar6};
        }

        public b() {
            throw null;
        }

        public static b valueOf(String str) {
            return (b) Enum.valueOf(b.class, str);
        }

        public static b[] values() {
            return (b[]) $VALUES.clone();
        }
    }

    public xk4(List<dy1> list, nw4 nw4Var, String str, long j, a aVar, long j2, String str2, List<i15> list2, ql qlVar, int i, int i2, int i3, float f, float f2, float f3, float f4, ll llVar, ml mlVar, List<vf4<Float>> list3, b bVar, dl dlVar, boolean z, ik0 ik0Var, ft2 ft2Var, bh4 bh4Var) {
        this.a = list;
        this.b = nw4Var;
        this.c = str;
        this.d = j;
        this.e = aVar;
        this.f = j2;
        this.g = str2;
        this.h = list2;
        this.i = qlVar;
        this.j = i;
        this.k = i2;
        this.l = i3;
        this.m = f;
        this.n = f2;
        this.o = f3;
        this.p = f4;
        this.q = llVar;
        this.r = mlVar;
        this.t = list3;
        this.u = bVar;
        this.s = dlVar;
        this.v = z;
        this.w = ik0Var;
        this.x = ft2Var;
        this.y = bh4Var;
    }

    public final String a(String str) {
        int i;
        StringBuilder sb = new StringBuilder(str);
        sb.append(this.c);
        sb.append("\n");
        long j = this.f;
        nw4 nw4Var = this.b;
        xk4 xk4Var = nw4Var.i.get(j);
        if (xk4Var != null) {
            sb.append("\t\tParents: ");
            sb.append(xk4Var.c);
            for (xk4 xk4Var2 = nw4Var.i.get(xk4Var.f); xk4Var2 != null; xk4Var2 = nw4Var.i.get(xk4Var2.f)) {
                sb.append("->");
                sb.append(xk4Var2.c);
            }
            sb.append(str);
            sb.append("\n");
        }
        List<i15> list = this.h;
        if (!list.isEmpty()) {
            sb.append(str);
            sb.append("\tMasks: ");
            sb.append(list.size());
            sb.append("\n");
        }
        int i2 = this.j;
        if (i2 != 0 && (i = this.k) != 0) {
            sb.append(str);
            sb.append("\tBackground: ");
            sb.append(String.format(Locale.US, "%dx%d %X\n", Integer.valueOf(i2), Integer.valueOf(i), Integer.valueOf(this.l)));
        }
        List<dy1> list2 = this.a;
        if (!list2.isEmpty()) {
            sb.append(str);
            sb.append("\tShapes:\n");
            for (dy1 dy1Var : list2) {
                sb.append(str);
                sb.append("\t\t");
                sb.append(dy1Var);
                sb.append("\n");
            }
        }
        return sb.toString();
    }

    public final String toString() {
        return a("");
    }
}
