package defpackage;

import java.io.Closeable;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
public abstract class td4 implements Closeable {
    public static final String[] f = new String[128];
    public int b;
    public int[] c;
    public String[] d;
    public int[] e;

    /* JADX INFO: loaded from: classes5.dex */
    public static final class a {
        public final String[] a;
        public final yz5 b;

        public a(String[] strArr, yz5 yz5Var) {
            this.a = strArr;
            this.b = yz5Var;
        }

        /* JADX WARN: Code duplicated, block: B:19:0x003a A[Catch: IOException -> 0x006b, TryCatch #0 {IOException -> 0x006b, blocks: (B:2:0x0000, B:3:0x000a, B:5:0x000d, B:7:0x001e, B:9:0x0026, B:21:0x0042, B:19:0x003a, B:20:0x003d, B:23:0x0047, B:24:0x004a, B:25:0x005b), top: B:30:0x0000 }] */
        public static a a(String... strArr) {
            String str;
            try {
                gx0[] gx0VarArr = new gx0[strArr.length];
                bu0 bu0Var = new bu0();
                for (int i = 0; i < strArr.length; i++) {
                    String str2 = strArr[i];
                    String[] strArr2 = td4.f;
                    bu0Var.A0(34);
                    int length = str2.length();
                    int i2 = 0;
                    for (int i3 = 0; i3 < length; i3++) {
                        char cCharAt = str2.charAt(i3);
                        if (cCharAt < 128) {
                            str = strArr2[cCharAt];
                            if (str != null) {
                                if (i2 < i3) {
                                    bu0Var.H0(i2, i3, str2);
                                }
                                bu0Var.I0(str);
                                i2 = i3 + 1;
                            }
                        } else {
                            if (cCharAt == 8232) {
                                str = "\\u2028";
                            } else if (cCharAt == 8233) {
                                str = "\\u2029";
                            }
                            if (i2 < i3) {
                                bu0Var.H0(i2, i3, str2);
                            }
                            bu0Var.I0(str);
                            i2 = i3 + 1;
                        }
                    }
                    if (i2 < length) {
                        bu0Var.H0(i2, length, str2);
                    }
                    bu0Var.A0(34);
                    bu0Var.readByte();
                    gx0VarArr[i] = bu0Var.i(bu0Var.c);
                }
                return new a((String[]) strArr.clone(), yz5.a.b(gx0VarArr));
            } catch (IOException e) {
                xg.d(e);
                return null;
            }
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class b {
        private static final /* synthetic */ b[] $VALUES;
        public static final b BEGIN_ARRAY;
        public static final b BEGIN_OBJECT;
        public static final b BOOLEAN;
        public static final b END_ARRAY;
        public static final b END_DOCUMENT;
        public static final b END_OBJECT;
        public static final b NAME;
        public static final b NULL;
        public static final b NUMBER;
        public static final b STRING;

        static {
            b bVar = new b("BEGIN_ARRAY", 0);
            BEGIN_ARRAY = bVar;
            b bVar2 = new b("END_ARRAY", 1);
            END_ARRAY = bVar2;
            b bVar3 = new b("BEGIN_OBJECT", 2);
            BEGIN_OBJECT = bVar3;
            b bVar4 = new b("END_OBJECT", 3);
            END_OBJECT = bVar4;
            b bVar5 = new b("NAME", 4);
            NAME = bVar5;
            b bVar6 = new b("STRING", 5);
            STRING = bVar6;
            b bVar7 = new b("NUMBER", 6);
            NUMBER = bVar7;
            b bVar8 = new b("BOOLEAN", 7);
            BOOLEAN = bVar8;
            b bVar9 = new b("NULL", 8);
            NULL = bVar9;
            b bVar10 = new b("END_DOCUMENT", 9);
            END_DOCUMENT = bVar10;
            $VALUES = new b[]{bVar, bVar2, bVar3, bVar4, bVar5, bVar6, bVar7, bVar8, bVar9, bVar10};
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

    static {
        for (int i = 0; i <= 31; i++) {
            f[i] = String.format("\\u%04x", Integer.valueOf(i));
        }
        String[] strArr = f;
        strArr[34] = "\\\"";
        strArr[92] = "\\\\";
        strArr[9] = "\\t";
        strArr[8] = "\\b";
        strArr[10] = "\\n";
        strArr[13] = "\\r";
        strArr[12] = "\\f";
    }

    public abstract double E();

    public abstract int P();

    public abstract String Q();

    public abstract b U();

    public final void V(int i) {
        int i2 = this.b;
        int[] iArr = this.c;
        if (i2 == iArr.length) {
            if (i2 == 256) {
                throw new jc4("Nesting too deep at ".concat(getPath()));
            }
            this.c = Arrays.copyOf(iArr, iArr.length * 2);
            String[] strArr = this.d;
            this.d = (String[]) Arrays.copyOf(strArr, strArr.length * 2);
            int[] iArr2 = this.e;
            this.e = Arrays.copyOf(iArr2, iArr2.length * 2);
        }
        int[] iArr3 = this.c;
        int i3 = this.b;
        this.b = i3 + 1;
        iArr3[i3] = i;
    }

    public abstract int X(a aVar);

    public abstract void Z();

    public abstract void e0();

    public final String getPath() {
        int i = this.b;
        int[] iArr = this.c;
        String[] strArr = this.d;
        int[] iArr2 = this.e;
        StringBuilder sb = new StringBuilder("$");
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = iArr[i2];
            if (i3 == 1 || i3 == 2) {
                sb.append('[');
                sb.append(iArr2[i2]);
                sb.append(']');
            } else if (i3 == 3 || i3 == 4 || i3 == 5) {
                sb.append('.');
                String str = strArr[i2];
                if (str != null) {
                    sb.append(str);
                }
            }
        }
        return sb.toString();
    }

    public final void k0(String str) throws xc4 {
        StringBuilder sbD = fh.d(str, " at path ");
        sbD.append(getPath());
        throw new xc4(sbD.toString());
    }

    public abstract void m();

    public abstract void n();

    public abstract void o();

    public abstract void p();

    public abstract boolean v();

    public abstract boolean y();
}
