package defpackage;

import androidx.core.net.MailTo;
import java.util.Arrays;
import java.util.BitSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes5.dex */
public final class o54 implements l54 {
    public static final Pattern i = Pattern.compile("^[!\"#\\$%&'\\(\\)\\*\\+,\\-\\./:;<=>\\?@\\[\\\\\\]\\^_`\\{\\|\\}~\\p{Pc}\\p{Pd}\\p{Pe}\\p{Pf}\\p{Pi}\\p{Po}\\p{Ps}]");
    public static final Pattern j = Pattern.compile("^(?:<[A-Za-z][A-Za-z0-9-]*(?:\\s+[a-zA-Z_:][a-zA-Z0-9:._-]*(?:\\s*=\\s*(?:[^\"'=<>`\\x00-\\x20]+|'[^']*'|\"[^\"]*\"))?)*\\s*/?>|</[A-Za-z][A-Za-z0-9-]*\\s*[>]|<!---->|<!--(?:-?[^>-])(?:-?[^-])*-->|[<][?].*?[?][>]|<![A-Z]+\\s+[^>]*>|<!\\[CDATA\\[[\\s\\S]*?\\]\\]>)", 2);
    public static final Pattern k = Pattern.compile("^[!\"#$%&'()*+,./:;<=>?@\\[\\\\\\]^_`{|}~-]");
    public static final Pattern l = Pattern.compile("^&(?:#x[a-f0-9]{1,6}|#[0-9]{1,7}|[a-z][a-z0-9]{1,31});", 2);
    public static final Pattern m = Pattern.compile("`+");
    public static final Pattern n = Pattern.compile("^`+");
    public static final Pattern o = Pattern.compile("^<([a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*)>");
    public static final Pattern p = Pattern.compile("^<[a-zA-Z][a-zA-Z0-9.+-]{1,31}:[^<>\u0000- ]*>");
    public static final Pattern q = Pattern.compile("^ *(?:\n *)?");
    public static final Pattern r = Pattern.compile("^[\\p{Zs}\t\r\n\f]");
    public static final Pattern s = Pattern.compile("\\s+");
    public static final Pattern t = Pattern.compile(" *$");
    public final BitSet a;
    public final BitSet b;
    public final HashMap c;
    public final m54 d;
    public String e;
    public int f;
    public nl2 g;
    public pt0 h;

    public static class a {
        public final int a;
        public final boolean b;
        public final boolean c;

        public a(int i, boolean z, boolean z2) {
            this.a = i;
            this.c = z;
            this.b = z2;
        }
    }

    public o54(m54 m54Var) {
        List list = (List) m54Var.b;
        HashMap map = new HashMap();
        c(Arrays.asList(new is(), new f59()), map);
        c(list, map);
        this.c = map;
        Set setKeySet = map.keySet();
        BitSet bitSet = new BitSet();
        Iterator it = setKeySet.iterator();
        while (it.hasNext()) {
            bitSet.set(((Character) it.next()).charValue());
        }
        this.b = bitSet;
        BitSet bitSet2 = new BitSet();
        bitSet2.or(bitSet);
        bitSet2.set(10);
        bitSet2.set(96);
        bitSet2.set(91);
        bitSet2.set(93);
        bitSet2.set(92);
        bitSet2.set(33);
        bitSet2.set(60);
        bitSet2.set(38);
        this.a = bitSet2;
        this.d = m54Var;
    }

    public static void b(char c, ol2 ol2Var, HashMap map) {
        if (((ol2) map.put(Character.valueOf(c), ol2Var)) == null) {
            return;
        }
        throw new IllegalArgumentException("Delimiter processor conflict with delimiter char '" + c + "'");
    }

    public static void c(Iterable iterable, HashMap map) {
        q68 q68Var;
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            ol2 ol2Var = (ol2) it.next();
            char c = ol2Var.c();
            char cA = ol2Var.a();
            if (c == cA) {
                ol2 ol2Var2 = (ol2) map.get(Character.valueOf(c));
                if (ol2Var2 == null || ol2Var2.c() != ol2Var2.a()) {
                    b(c, ol2Var, map);
                } else {
                    if (ol2Var2 instanceof q68) {
                        q68Var = (q68) ol2Var2;
                    } else {
                        q68 q68Var2 = new q68(c);
                        q68Var2.f(ol2Var2);
                        q68Var = q68Var2;
                    }
                    q68Var.f(ol2Var);
                    map.put(Character.valueOf(c), q68Var);
                }
            } else {
                b(c, ol2Var, map);
                b(cA, ol2Var, map);
            }
        }
    }

    public static void e(dq8 dq8Var, dq8 dq8Var2, int i2) {
        if (dq8Var == null || dq8Var2 == null || dq8Var == dq8Var2) {
            return;
        }
        StringBuilder sb = new StringBuilder(i2);
        sb.append(dq8Var.f);
        zn5 zn5Var = dq8Var.e;
        zn5 zn5Var2 = dq8Var2.e;
        while (zn5Var != zn5Var2) {
            sb.append(((dq8) zn5Var).f);
            zn5 zn5Var3 = zn5Var.e;
            zn5Var.f();
            zn5Var = zn5Var3;
        }
        dq8Var.f = sb.toString();
    }

    public static void f(zn5 zn5Var, zn5 zn5Var2) {
        dq8 dq8Var = null;
        dq8 dq8Var2 = null;
        int length = 0;
        while (zn5Var != null) {
            if (zn5Var instanceof dq8) {
                dq8Var2 = (dq8) zn5Var;
                if (dq8Var == null) {
                    dq8Var = dq8Var2;
                }
                length = dq8Var2.f.length() + length;
            } else {
                e(dq8Var, dq8Var2, length);
                dq8Var = null;
                dq8Var2 = null;
                length = 0;
            }
            if (zn5Var == zn5Var2) {
                break;
            } else {
                zn5Var = zn5Var.e;
            }
        }
        e(dq8Var, dq8Var2, length);
    }

    /* JADX WARN: Code duplicated, block: B:123:0x0210  */
    /* JADX WARN: Code duplicated, block: B:141:0x0257  */
    /* JADX WARN: Code duplicated, block: B:142:0x025f  */
    /* JADX WARN: Code duplicated, block: B:144:0x0263  */
    /* JADX WARN: Code duplicated, block: B:145:0x026c  */
    /* JADX WARN: Code duplicated, block: B:147:0x026f  */
    /* JADX WARN: Code duplicated, block: B:149:0x029f  */
    /* JADX WARN: Code duplicated, block: B:151:0x02a6 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:152:0x02a8  */
    /* JADX WARN: Code duplicated, block: B:153:0x02ae  */
    /* JADX WARN: Code duplicated, block: B:156:0x02b7 A[LOOP:3: B:155:0x02b5->B:156:0x02b7, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:160:0x02ca  */
    /* JADX WARN: Code duplicated, block: B:163:0x02d8 A[ADDED_TO_REGION, LOOP:4: B:163:0x02d8->B:167:0x02e1, LOOP_START, PHI: r3
      0x02d8: PHI (r3v46 pt0) = (r3v45 pt0), (r3v47 pt0) binds: [B:162:0x02d6, B:167:0x02e1] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:164:0x02da  */
    /* JADX WARN: Code duplicated, block: B:166:0x02de  */
    /* JADX WARN: Code duplicated, block: B:169:0x02e6  */
    /* JADX WARN: Code duplicated, block: B:186:0x0389  */
    /* JADX WARN: Code duplicated, block: B:213:0x042c  */
    /* JADX WARN: Code duplicated, block: B:215:0x0434  */
    /* JADX WARN: Code duplicated, block: B:242:0x04d7  */
    /* JADX WARN: Code duplicated, block: B:247:0x04f7 A[LOOP:0: B:3:0x0013->B:247:0x04f7, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:250:0x0508 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:251:0x0509  */
    /* JADX WARN: Code duplicated, block: B:253:0x04fe A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:260:0x02e1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:73:0x00f1  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.l54
    public final void a(String str, zn5 zn5Var) {
        int i2;
        zn5 o48Var;
        zn5 zn5Var2;
        zn5 zn5Var3;
        zn5 dq8Var;
        zn5 zn5Var4;
        zn5 dq8Var2;
        zn5 hq4Var;
        zn5 dq8Var3;
        int i3;
        boolean z;
        String strA;
        String strA2;
        zn5 zn5Var5;
        zn5 zn5Var6;
        zn5 zn5Var7;
        pt0 pt0Var;
        int i4;
        int i5;
        String strSubstring;
        oq4 oq4Var;
        int iU;
        zn5 dq8Var4;
        boolean z2;
        boolean z3;
        a aVar;
        zn5 zn5Var8;
        zn5 zn5Var9;
        this.e = str.trim();
        int i6 = 0;
        this.f = 0;
        dq8 dq8Var5 = null;
        this.g = null;
        this.h = null;
        zn5 zn5Var10 = null;
        while (true) {
            char cG = g();
            if (cG == 0) {
                i2 = i6;
            } else {
                if (cG == '\n') {
                    this.f++;
                    if (zn5Var10 instanceof dq8) {
                        dq8 dq8Var6 = (dq8) zn5Var10;
                        if (dq8Var6.f.endsWith(" ")) {
                            String str2 = dq8Var6.f;
                            Matcher matcher = t.matcher(str2);
                            int iEnd = matcher.find() ? matcher.end() - matcher.start() : 0;
                            i2 = 0;
                            if (iEnd > 0) {
                                dq8Var6.f = rg.f(iEnd, 0, str2);
                            }
                            o48Var = iEnd >= 2 ? new pu3() : new o48();
                        } else {
                            i2 = 0;
                            o48Var = new o48();
                        }
                    } else {
                        i2 = 0;
                        o48Var = new o48();
                    }
                    zn5Var2 = o48Var;
                } else if (cG == '!') {
                    int i7 = this.f + 1;
                    this.f = i7;
                    if (g() == '[') {
                        this.f++;
                        dq8 dq8Var7 = new dq8("![");
                        pt0 pt0Var2 = this.h;
                        pt0 pt0Var3 = new pt0(dq8Var7, i7, pt0Var2, this.g, true);
                        if (pt0Var2 != null) {
                            pt0Var2.g = true;
                        }
                        this.h = pt0Var3;
                        zn5Var4 = dq8Var7;
                    } else {
                        dq8Var = new dq8("!");
                        zn5Var4 = dq8Var;
                    }
                    i2 = 0;
                    zn5Var2 = zn5Var4;
                } else if (cG == '&') {
                    String strD = d(l);
                    if (strD != null) {
                        dq8Var2 = new dq8(kx3.a(strD));
                        zn5Var4 = dq8Var2;
                    } else {
                        zn5Var4 = null;
                    }
                    i2 = 0;
                    zn5Var2 = zn5Var4;
                } else if (cG != '<') {
                    if (cG != '`') {
                        switch (cG) {
                            case '[':
                                int i8 = this.f;
                                this.f = i8 + 1;
                                dq8 dq8Var8 = new dq8("[");
                                pt0 pt0Var4 = this.h;
                                pt0 pt0Var5 = new pt0(dq8Var8, i8, pt0Var4, this.g, false);
                                if (pt0Var4 != null) {
                                    pt0Var4.g = true;
                                }
                                this.h = pt0Var5;
                                zn5Var4 = dq8Var8;
                                i2 = 0;
                                zn5Var2 = zn5Var4;
                                break;
                            case '\\':
                                this.f++;
                                if (g() == '\n') {
                                    dq8Var = new pu3();
                                    this.f++;
                                } else {
                                    if (this.f < this.e.length()) {
                                        String str3 = this.e;
                                        int i9 = this.f;
                                        if (k.matcher(str3.substring(i9, i9 + 1)).matches()) {
                                            String str4 = this.e;
                                            int i10 = this.f;
                                            zn5 dq8Var9 = new dq8(str4.substring(i10, i10 + 1));
                                            this.f++;
                                            zn5Var4 = dq8Var9;
                                        }
                                        i2 = 0;
                                        zn5Var2 = zn5Var4;
                                    }
                                    dq8Var = new dq8("\\");
                                }
                                zn5Var4 = dq8Var;
                                i2 = 0;
                                zn5Var2 = zn5Var4;
                                break;
                            case ']':
                                int i11 = this.f + 1;
                                this.f = i11;
                                pt0 pt0Var6 = this.h;
                                if (pt0Var6 != null) {
                                    dq8 dq8Var10 = pt0Var6.a;
                                    boolean z4 = pt0Var6.c;
                                    if (!pt0Var6.f) {
                                        this.h = pt0Var6.d;
                                        dq8Var3 = new dq8("]");
                                    } else {
                                        if (g() == '(') {
                                            this.f++;
                                            Pattern pattern = q;
                                            d(pattern);
                                            i3 = 1;
                                            int iT = o8.t(this.f, this.e);
                                            if (iT == -1) {
                                                strA = null;
                                            } else {
                                                char cG2 = g();
                                                String str5 = this.e;
                                                int i12 = this.f;
                                                String strSubstring2 = cG2 == '<' ? str5.substring(i12 + 1, iT - 1) : str5.substring(i12, iT);
                                                this.f = iT;
                                                strA = w03.a(strSubstring2);
                                            }
                                            if (strA != null) {
                                                d(pattern);
                                                String str6 = this.e;
                                                int i13 = this.f;
                                                if (s.matcher(str6.substring(i13 - 1, i13)).matches()) {
                                                    int iV = o8.v(this.f, this.e);
                                                    if (iV == -1) {
                                                        strA2 = null;
                                                    } else {
                                                        String strSubstring3 = this.e.substring(this.f + 1, iV - 1);
                                                        this.f = iV;
                                                        strA2 = w03.a(strSubstring3);
                                                    }
                                                    d(pattern);
                                                } else {
                                                    strA2 = null;
                                                }
                                                if (g() == ')') {
                                                    this.f++;
                                                    z = true;
                                                } else {
                                                    this.f = i11;
                                                    z = false;
                                                }
                                            } else {
                                                z = false;
                                            }
                                            if (!z) {
                                                i4 = this.f;
                                                if (i4 < this.e.length() && this.e.charAt(this.f) == '[') {
                                                    int i14 = this.f + 1;
                                                    iU = o8.u(i14, this.e);
                                                    int i15 = iU - i14;
                                                    if (iU != -1 && i15 <= 999 && iU < this.e.length() && this.e.charAt(iU) == ']') {
                                                        this.f = iU + 1;
                                                    }
                                                }
                                                i5 = this.f - i4;
                                                if (i5 > 2) {
                                                    strSubstring = this.e.substring(i4, i5 + i4);
                                                } else if (pt0Var6.g) {
                                                    strSubstring = null;
                                                } else {
                                                    strSubstring = this.e.substring(pt0Var6.b, i11);
                                                }
                                                if (strSubstring != null) {
                                                    Pattern pattern2 = w03.a;
                                                    oq4Var = (oq4) ((Map) this.d.c).get(w03.c.matcher(strSubstring.substring(i3, strSubstring.length() - 1).trim().toLowerCase(Locale.ROOT)).replaceAll(" "));
                                                    if (oq4Var != null) {
                                                        strA = oq4Var.g;
                                                        strA2 = oq4Var.h;
                                                        z = true;
                                                    }
                                                }
                                            }
                                            if (z) {
                                                if (z4) {
                                                    dq8Var = new w04(strA, strA2);
                                                } else {
                                                    dq8Var = new hq4(strA, strA2);
                                                }
                                                zn5Var5 = dq8Var10.e;
                                                while (zn5Var5 != null) {
                                                    zn5 zn5Var11 = zn5Var5.e;
                                                    dq8Var.b(zn5Var5);
                                                    zn5Var5 = zn5Var11;
                                                }
                                                h(pt0Var6.e);
                                                zn5Var6 = dq8Var.b;
                                                zn5Var7 = dq8Var.c;
                                                if (zn5Var6 != zn5Var7) {
                                                    f(zn5Var6, zn5Var7);
                                                }
                                                dq8Var10.f();
                                                pt0Var = this.h.d;
                                                this.h = pt0Var;
                                                if (!z4) {
                                                    while (pt0Var != null) {
                                                        if (!pt0Var.c) {
                                                            pt0Var.f = false;
                                                        }
                                                        pt0Var = pt0Var.d;
                                                    }
                                                }
                                            } else {
                                                this.f = i11;
                                                this.h = this.h.d;
                                                dq8Var = new dq8("]");
                                            }
                                            zn5Var4 = dq8Var;
                                            i2 = 0;
                                            zn5Var2 = zn5Var4;
                                        } else {
                                            i3 = 1;
                                            z = false;
                                            strA = null;
                                        }
                                        strA2 = null;
                                        if (!z) {
                                            i4 = this.f;
                                            if (i4 < this.e.length()) {
                                                int i16 = this.f + 1;
                                                iU = o8.u(i16, this.e);
                                                int i17 = iU - i16;
                                                if (iU != -1) {
                                                    this.f = iU + 1;
                                                }
                                            }
                                            i5 = this.f - i4;
                                            if (i5 > 2) {
                                                strSubstring = this.e.substring(i4, i5 + i4);
                                            } else if (pt0Var6.g) {
                                                strSubstring = this.e.substring(pt0Var6.b, i11);
                                            } else {
                                                strSubstring = null;
                                            }
                                            if (strSubstring != null) {
                                                Pattern pattern3 = w03.a;
                                                oq4Var = (oq4) ((Map) this.d.c).get(w03.c.matcher(strSubstring.substring(i3, strSubstring.length() - 1).trim().toLowerCase(Locale.ROOT)).replaceAll(" "));
                                                if (oq4Var != null) {
                                                    strA = oq4Var.g;
                                                    strA2 = oq4Var.h;
                                                    z = true;
                                                }
                                            }
                                        }
                                        if (z) {
                                            if (z4) {
                                                dq8Var = new w04(strA, strA2);
                                            } else {
                                                dq8Var = new hq4(strA, strA2);
                                            }
                                            zn5Var5 = dq8Var10.e;
                                            while (zn5Var5 != null) {
                                                zn5 zn5Var12 = zn5Var5.e;
                                                dq8Var.b(zn5Var5);
                                                zn5Var5 = zn5Var12;
                                            }
                                            h(pt0Var6.e);
                                            zn5Var6 = dq8Var.b;
                                            zn5Var7 = dq8Var.c;
                                            if (zn5Var6 != zn5Var7) {
                                                f(zn5Var6, zn5Var7);
                                            }
                                            dq8Var10.f();
                                            pt0Var = this.h.d;
                                            this.h = pt0Var;
                                            if (!z4) {
                                                while (pt0Var != null) {
                                                    if (!pt0Var.c) {
                                                        pt0Var.f = false;
                                                    }
                                                    pt0Var = pt0Var.d;
                                                }
                                            }
                                        } else {
                                            this.f = i11;
                                            this.h = this.h.d;
                                            dq8Var = new dq8("]");
                                        }
                                        zn5Var4 = dq8Var;
                                        i2 = 0;
                                        zn5Var2 = zn5Var4;
                                    }
                                } else {
                                    dq8Var3 = new dq8("]");
                                }
                                break;
                            default:
                                if (this.b.get(cG)) {
                                    ol2 ol2Var = (ol2) this.c.get(Character.valueOf(cG));
                                    int i18 = this.f;
                                    int i19 = i6;
                                    while (g() == cG) {
                                        i19++;
                                        this.f++;
                                    }
                                    if (i19 < ol2Var.b()) {
                                        this.f = i18;
                                        aVar = dq8Var5;
                                    } else {
                                        String strSubstring4 = i18 == 0 ? "\n" : this.e.substring(i18 - 1, i18);
                                        char cG3 = g();
                                        String strValueOf = cG3 != 0 ? String.valueOf(cG3) : "\n";
                                        Pattern pattern4 = i;
                                        boolean zMatches = pattern4.matcher(strSubstring4).matches();
                                        Pattern pattern5 = r;
                                        boolean zMatches2 = pattern5.matcher(strSubstring4).matches();
                                        boolean zMatches3 = pattern4.matcher(strValueOf).matches();
                                        boolean zMatches4 = pattern5.matcher(strValueOf).matches();
                                        int i20 = (zMatches4 || !(!zMatches3 || zMatches2 || zMatches)) ? i6 : 1;
                                        int i21 = (zMatches2 || !(!zMatches || zMatches4 || zMatches3)) ? i6 : 1;
                                        if (cG == '_') {
                                            int i22 = (i20 == 0 || !(i21 == 0 || zMatches)) ? i6 : 1;
                                            if (i21 == 0 || !(i20 == 0 || zMatches3)) {
                                                z3 = i6;
                                                z2 = i22;
                                            } else {
                                                z3 = 1;
                                                z2 = i22;
                                            }
                                        } else {
                                            int i23 = (i20 == 0 || cG != ol2Var.c()) ? i6 : 1;
                                            int i24 = (i21 == 0 || cG != ol2Var.a()) ? i6 : 1;
                                            z2 = i23;
                                            z3 = i24;
                                        }
                                        this.f = i18;
                                        aVar = new a(i19, z2, z3);
                                    }
                                    if (aVar == 0) {
                                        dq8Var4 = dq8Var5;
                                    } else {
                                        int i25 = aVar.a;
                                        int i26 = i18 + i25;
                                        this.f = i26;
                                        dq8 dq8Var11 = new dq8(this.e.substring(i18, i26));
                                        boolean z5 = aVar.c;
                                        boolean z6 = aVar.b;
                                        nl2 nl2Var = this.g;
                                        nl2 nl2Var2 = new nl2(dq8Var11, cG, z5, z6, nl2Var);
                                        this.g = nl2Var2;
                                        nl2Var2.g = i25;
                                        nl2Var2.h = i25;
                                        if (nl2Var != null) {
                                            nl2Var.f = nl2Var2;
                                        }
                                        dq8Var4 = dq8Var11;
                                    }
                                } else {
                                    int i27 = this.f;
                                    int length = this.e.length();
                                    while (true) {
                                        int i28 = this.f;
                                        if (i28 != length) {
                                            if (!this.a.get(this.e.charAt(i28))) {
                                                this.f++;
                                            }
                                        }
                                    }
                                    int i29 = this.f;
                                    if (i27 != i29) {
                                        dq8Var4 = new dq8(this.e.substring(i27, i29));
                                    } else {
                                        dq8Var4 = dq8Var5;
                                    }
                                }
                                i2 = i6;
                                zn5Var2 = dq8Var4;
                                break;
                        }
                    } else {
                        String strD2 = d(n);
                        if (strD2 == null) {
                            zn5Var4 = null;
                        } else {
                            int i30 = this.f;
                            while (true) {
                                String strD3 = d(m);
                                if (strD3 == null) {
                                    this.f = i30;
                                    dq8Var2 = new dq8(strD2);
                                    zn5Var4 = dq8Var2;
                                } else if (strD3.equals(strD2)) {
                                    um1 um1Var = new um1();
                                    String strReplace = this.e.substring(i30, this.f - strD2.length()).replace('\n', ' ');
                                    if (strReplace.length() >= 3 && strReplace.charAt(0) == ' ' && strReplace.charAt(strReplace.length() - 1) == ' ') {
                                        int length2 = strReplace.length();
                                        if (tz.b(' ', 0, length2, strReplace) != length2) {
                                            strReplace = rg.f(1, 1, strReplace);
                                        }
                                    }
                                    um1Var.f = strReplace;
                                    dq8Var3 = um1Var;
                                }
                            }
                        }
                        i2 = 0;
                        zn5Var2 = zn5Var4;
                    }
                    zn5Var4 = dq8Var3;
                    i2 = 0;
                    zn5Var2 = zn5Var4;
                } else {
                    String strD4 = d(o);
                    if (strD4 != null) {
                        String strF = rg.f(1, 1, strD4);
                        hq4Var = new hq4(MailTo.MAILTO_SCHEME.concat(strF), null);
                        hq4Var.b(new dq8(strF));
                    } else {
                        String strD5 = d(p);
                        if (strD5 != null) {
                            String strF2 = rg.f(1, 1, strD5);
                            hq4Var = new hq4(strF2, null);
                            hq4Var.b(new dq8(strF2));
                        } else {
                            zn5Var4 = null;
                        }
                        if (zn5Var4 == null) {
                            if (d(j) != null) {
                                dq8Var = new ux3();
                                zn5Var4 = dq8Var;
                            } else {
                                zn5Var4 = null;
                            }
                        }
                        i2 = 0;
                        zn5Var2 = zn5Var4;
                    }
                    zn5Var4 = hq4Var;
                    if (zn5Var4 == null) {
                        if (d(j) != null) {
                            dq8Var = new ux3();
                            zn5Var4 = dq8Var;
                        } else {
                            zn5Var4 = null;
                        }
                    }
                    i2 = 0;
                    zn5Var2 = zn5Var4;
                }
                if (zn5Var2 != null) {
                    zn5Var3 = zn5Var2;
                } else {
                    this.f++;
                    dq8Var5 = new dq8(String.valueOf(cG));
                }
                if (zn5Var3 != null) {
                    h(null);
                    zn5Var8 = zn5Var.b;
                    zn5Var9 = zn5Var.c;
                    if (zn5Var8 == zn5Var9) {
                        return;
                    }
                    f(zn5Var8, zn5Var9);
                    return;
                }
                zn5Var.b(zn5Var3);
                i6 = i2;
                dq8Var5 = null;
                zn5Var10 = zn5Var3;
            }
            zn5Var3 = dq8Var5;
            if (zn5Var3 != null) {
                h(null);
                zn5Var8 = zn5Var.b;
                zn5Var9 = zn5Var.c;
                if (zn5Var8 == zn5Var9) {
                    return;
                }
                f(zn5Var8, zn5Var9);
                return;
            }
            zn5Var.b(zn5Var3);
            i6 = i2;
            dq8Var5 = null;
            zn5Var10 = zn5Var3;
        }
    }

    public final String d(Pattern pattern) {
        if (this.f >= this.e.length()) {
            return null;
        }
        Matcher matcher = pattern.matcher(this.e);
        matcher.region(this.f, this.e.length());
        if (!matcher.find()) {
            return null;
        }
        this.f = matcher.end();
        return matcher.group();
    }

    public final char g() {
        if (this.f < this.e.length()) {
            return this.e.charAt(this.f);
        }
        return (char) 0;
    }

    public final void h(nl2 nl2Var) {
        boolean z;
        zn5 zn5Var;
        HashMap map = new HashMap();
        nl2 nl2Var2 = this.g;
        while (nl2Var2 != null) {
            nl2 nl2Var3 = nl2Var2.e;
            if (nl2Var3 == nl2Var) {
                break;
            } else {
                nl2Var2 = nl2Var3;
            }
        }
        while (nl2Var2 != null) {
            dq8 dq8Var = nl2Var2.a;
            char c = nl2Var2.b;
            ol2 ol2Var = (ol2) this.c.get(Character.valueOf(c));
            if (!nl2Var2.d || ol2Var == null) {
                nl2Var2 = nl2Var2.f;
            } else {
                char c2 = ol2Var.c();
                nl2 nl2Var4 = nl2Var2.e;
                int iE = 0;
                boolean z2 = false;
                while (true) {
                    if (nl2Var4 == null || nl2Var4 == nl2Var || nl2Var4 == map.get(Character.valueOf(c))) {
                        z = z2;
                        z2 = false;
                        break;
                    }
                    if (nl2Var4.c && nl2Var4.b == c2) {
                        iE = ol2Var.e(nl2Var4, nl2Var2);
                        z2 = true;
                        if (iE > 0) {
                            z = true;
                            break;
                        }
                    }
                    nl2Var4 = nl2Var4.e;
                }
                if (z2) {
                    dq8 dq8Var2 = nl2Var4.a;
                    nl2Var4.g -= iE;
                    nl2Var2.g -= iE;
                    dq8Var2.f = rg.f(iE, 0, dq8Var2.f);
                    dq8Var.f = rg.f(iE, 0, dq8Var.f);
                    nl2 nl2Var5 = nl2Var2.e;
                    while (nl2Var5 != null && nl2Var5 != nl2Var4) {
                        nl2 nl2Var6 = nl2Var5.e;
                        i(nl2Var5);
                        nl2Var5 = nl2Var6;
                    }
                    if (dq8Var2 != dq8Var && (zn5Var = dq8Var2.e) != dq8Var) {
                        f(zn5Var, dq8Var.d);
                    }
                    ol2Var.d(dq8Var2, dq8Var, iE);
                    if (nl2Var4.g == 0) {
                        nl2Var4.a.f();
                        i(nl2Var4);
                    }
                    if (nl2Var2.g == 0) {
                        nl2 nl2Var7 = nl2Var2.f;
                        dq8Var.f();
                        i(nl2Var2);
                        nl2Var2 = nl2Var7;
                    }
                } else {
                    if (!z) {
                        map.put(Character.valueOf(c), nl2Var2.e);
                        if (!nl2Var2.c) {
                            i(nl2Var2);
                        }
                    }
                    nl2Var2 = nl2Var2.f;
                }
            }
        }
        while (true) {
            nl2 nl2Var8 = this.g;
            if (nl2Var8 == null || nl2Var8 == nl2Var) {
                return;
            } else {
                i(nl2Var8);
            }
        }
    }

    public final void i(nl2 nl2Var) {
        nl2 nl2Var2 = nl2Var.e;
        if (nl2Var2 != null) {
            nl2Var2.f = nl2Var.f;
        }
        nl2 nl2Var3 = nl2Var.f;
        if (nl2Var3 == null) {
            this.g = nl2Var2;
        } else {
            nl2Var3.e = nl2Var2;
        }
    }
}
