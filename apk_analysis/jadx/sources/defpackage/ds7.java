package defpackage;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public final class ds7 implements dy1 {
    public final String a;
    public final dl b;
    public final ArrayList c;
    public final cl d;
    public final fl e;
    public final dl f;
    public final b g;
    public final c h;
    public final float i;
    public final boolean j;

    public static /* synthetic */ class a {
        public static final /* synthetic */ int[] a;
        public static final /* synthetic */ int[] b;

        static {
            int[] iArr = new int[c.values().length];
            b = iArr;
            try {
                iArr[c.BEVEL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                b[c.MITER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                b[c.ROUND.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[b.values().length];
            a = iArr2;
            try {
                iArr2[b.BUTT.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                a[b.ROUND.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                a[b.UNKNOWN.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class b {
        private static final /* synthetic */ b[] $VALUES;
        public static final b BUTT;
        public static final b ROUND;
        public static final b UNKNOWN;

        static {
            b bVar = new b("BUTT", 0);
            BUTT = bVar;
            b bVar2 = new b("ROUND", 1);
            ROUND = bVar2;
            b bVar3 = new b("UNKNOWN", 2);
            UNKNOWN = bVar3;
            $VALUES = new b[]{bVar, bVar2, bVar3};
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

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class c {
        private static final /* synthetic */ c[] $VALUES;
        public static final c BEVEL;
        public static final c MITER;
        public static final c ROUND;

        static {
            c cVar = new c("MITER", 0);
            MITER = cVar;
            c cVar2 = new c("ROUND", 1);
            ROUND = cVar2;
            c cVar3 = new c("BEVEL", 2);
            BEVEL = cVar3;
            $VALUES = new c[]{cVar, cVar2, cVar3};
        }

        public c() {
            throw null;
        }

        public static c valueOf(String str) {
            return (c) Enum.valueOf(c.class, str);
        }

        public static c[] values() {
            return (c[]) $VALUES.clone();
        }
    }

    public ds7(String str, dl dlVar, ArrayList arrayList, cl clVar, fl flVar, dl dlVar2, b bVar, c cVar, float f, boolean z) {
        this.a = str;
        this.b = dlVar;
        this.c = arrayList;
        this.d = clVar;
        this.e = flVar;
        this.f = dlVar2;
        this.g = bVar;
        this.h = cVar;
        this.i = f;
        this.j = z;
    }

    @Override // defpackage.dy1
    public final sx1 a(ox4 ox4Var, nw4 nw4Var, nd0 nd0Var) {
        return new va8(ox4Var, nd0Var, this);
    }
}
