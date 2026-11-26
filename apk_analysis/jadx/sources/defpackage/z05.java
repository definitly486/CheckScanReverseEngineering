package defpackage;

import java.util.ArrayList;
import java.util.BitSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes5.dex */
public final class z05 implements l54 {
    public static final Pattern k = Pattern.compile("^[!\"#\\$%&'\\(\\)\\*\\+,\\-\\./:;<=>\\?@\\[\\\\\\]\\^_`\\{\\|\\}~\\p{Pc}\\p{Pd}\\p{Pe}\\p{Pf}\\p{Pi}\\p{Po}\\p{Ps}]");
    public static final Pattern l = Pattern.compile("^ *(?:\n *)?");
    public static final Pattern m = Pattern.compile("^[\\p{Zs}\t\r\n\f]");
    public static final Pattern n = Pattern.compile("^[!\"#$%&'()*+,./:;<=>?@\\[\\\\\\]^_`{|}~-]");
    public static final Pattern o = Pattern.compile("\\s+");
    public final m54 a;
    public final boolean b;
    public final BitSet c;
    public final HashMap d;
    public final HashMap e;
    public zn5 f;
    public String g;
    public int h;
    public nl2 i;
    public pt0 j;

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

    public static class b {
        public final ArrayList a = new ArrayList(3);
        public final ArrayList b = new ArrayList(3);
        public boolean c;
    }

    public static class c implements n54 {
        public final boolean a;
        public final ArrayList b;
        public final ArrayList c;

        public c(boolean z, ArrayList arrayList, ArrayList arrayList2) {
            this.a = z;
            this.b = arrayList;
            this.c = arrayList2;
        }

        @Override // defpackage.n54
        public final l54 a(m54 m54Var) {
            List list = (List) m54Var.b;
            int size = list != null ? list.size() : 0;
            ArrayList arrayList = this.c;
            if (size > 0) {
                ArrayList arrayList2 = new ArrayList(arrayList.size() + size);
                arrayList2.addAll(arrayList);
                arrayList2.addAll(list);
                arrayList = arrayList2;
            }
            return new z05(m54Var, this.a, this.b, arrayList);
        }
    }

    public z05(m54 m54Var, boolean z, ArrayList arrayList, List list) {
        r68 r68Var;
        this.a = m54Var;
        this.b = z;
        HashMap map = new HashMap(arrayList.size());
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            p54 p54Var = (p54) it.next();
            char cD = p54Var.d();
            List arrayList2 = (List) map.get(Character.valueOf(cD));
            if (arrayList2 == null) {
                arrayList2 = new ArrayList(1);
                map.put(Character.valueOf(cD), arrayList2);
            }
            arrayList2.add(p54Var);
        }
        this.d = map;
        HashMap map2 = new HashMap();
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            ol2 ol2Var = (ol2) it2.next();
            char c2 = ol2Var.c();
            char cA = ol2Var.a();
            if (c2 == cA) {
                ol2 ol2Var2 = (ol2) map2.get(Character.valueOf(c2));
                if (ol2Var2 == null || ol2Var2.c() != ol2Var2.a()) {
                    b(c2, ol2Var, map2);
                } else {
                    if (ol2Var2 instanceof r68) {
                        r68Var = (r68) ol2Var2;
                    } else {
                        r68 r68Var2 = new r68(c2);
                        r68Var2.f(ol2Var2);
                        r68Var = r68Var2;
                    }
                    r68Var.f(ol2Var);
                    map2.put(Character.valueOf(c2), r68Var);
                }
            } else {
                b(c2, ol2Var, map2);
                b(cA, ol2Var, map2);
            }
        }
        this.e = map2;
        Set setKeySet = this.d.keySet();
        Set setKeySet2 = map2.keySet();
        BitSet bitSet = new BitSet();
        Iterator it3 = setKeySet.iterator();
        while (it3.hasNext()) {
            bitSet.set(((Character) it3.next()).charValue());
        }
        Iterator it4 = setKeySet2.iterator();
        while (it4.hasNext()) {
            bitSet.set(((Character) it4.next()).charValue());
        }
        this.c = bitSet;
    }

    public static void b(char c2, ol2 ol2Var, HashMap map) {
        if (((ol2) map.put(Character.valueOf(c2), ol2Var)) == null) {
            return;
        }
        throw new IllegalArgumentException("Delimiter processor conflict with delimiter char '" + c2 + "'");
    }

    /* JADX WARN: Code duplicated, block: B:70:0x010e  */
    @Override // defpackage.l54
    public final void a(String str, zn5 zn5Var) {
        zn5 dq8Var;
        boolean z;
        boolean z2;
        a aVar;
        this.g = str.trim();
        this.h = 0;
        this.i = null;
        this.j = null;
        this.f = zn5Var;
        while (true) {
            char cD = d();
            if (cD == 0) {
                dq8Var = null;
            } else {
                List<p54> list = (List) this.d.get(Character.valueOf(cD));
                if (list != null) {
                    int i = this.h;
                    dq8Var = null;
                    for (p54 p54Var : list) {
                        p54Var.a = this;
                        p54Var.b = this.f;
                        p54Var.c = this.g;
                        p54Var.d = this.h;
                        zn5 zn5VarB = p54Var.b();
                        this.h = p54Var.d;
                        if (zn5VarB != null) {
                            dq8Var = zn5VarB;
                            break;
                        } else {
                            this.h = i;
                            dq8Var = zn5VarB;
                        }
                    }
                } else {
                    ol2 ol2Var = (ol2) this.e.get(Character.valueOf(cD));
                    int i2 = this.h;
                    if (ol2Var != null) {
                        int i3 = 0;
                        while (d() == cD) {
                            i3++;
                            this.h++;
                        }
                        if (i3 < ol2Var.b()) {
                            this.h = i2;
                            aVar = null;
                        } else {
                            String strSubstring = i2 == 0 ? "\n" : this.g.substring(i2 - 1, i2);
                            char cD2 = d();
                            String strValueOf = cD2 != 0 ? String.valueOf(cD2) : "\n";
                            Pattern pattern = k;
                            boolean zMatches = pattern.matcher(strSubstring).matches();
                            Pattern pattern2 = m;
                            boolean zMatches2 = pattern2.matcher(strSubstring).matches();
                            boolean zMatches3 = pattern.matcher(strValueOf).matches();
                            boolean zMatches4 = pattern2.matcher(strValueOf).matches();
                            boolean z3 = !zMatches4 && (!zMatches3 || zMatches2 || zMatches);
                            boolean z4 = !zMatches2 && (!zMatches || zMatches4 || zMatches3);
                            if (cD == '_') {
                                z2 = z3 && (!z4 || zMatches);
                                z = z4 && (!z3 || zMatches3);
                            } else {
                                boolean z5 = z3 && cD == ol2Var.c();
                                z = z4 && cD == ol2Var.a();
                                z2 = z5;
                            }
                            this.h = i2;
                            aVar = new a(i3, z2, z);
                        }
                        if (aVar == null) {
                            dq8Var = null;
                        } else {
                            int i4 = aVar.a;
                            int i5 = i2 + i4;
                            this.h = i5;
                            dq8 dq8Var2 = new dq8(this.g.substring(i2, i5));
                            boolean z6 = aVar.c;
                            boolean z7 = aVar.b;
                            nl2 nl2Var = this.i;
                            nl2 nl2Var2 = new nl2(dq8Var2, cD, z6, z7, nl2Var);
                            this.i = nl2Var2;
                            nl2Var2.g = i4;
                            nl2Var2.h = i4;
                            if (nl2Var != null) {
                                nl2Var.f = nl2Var2;
                            }
                            dq8Var = dq8Var2;
                        }
                    } else {
                        int length = this.g.length();
                        while (true) {
                            int i6 = this.h;
                            if (i6 == length) {
                                break;
                            }
                            if (this.c.get(this.g.charAt(i6))) {
                                break;
                            } else {
                                this.h++;
                            }
                        }
                        int i7 = this.h;
                        if (i2 != i7) {
                            dq8Var = new dq8(this.g.substring(i2, i7));
                        } else {
                            dq8Var = null;
                        }
                    }
                }
                if (dq8Var == null) {
                    this.h++;
                    dq8Var = new dq8(String.valueOf(cD));
                }
            }
            if (dq8Var == null) {
                break;
            } else {
                zn5Var.b(dq8Var);
            }
        }
        e(null);
        zn5 zn5Var2 = zn5Var.b;
        zn5 zn5Var3 = zn5Var.c;
        if (zn5Var2 == zn5Var3) {
            return;
        }
        y14.E(zn5Var2, zn5Var3);
    }

    public final String c(Pattern pattern) {
        if (this.h >= this.g.length()) {
            return null;
        }
        Matcher matcher = pattern.matcher(this.g);
        matcher.region(this.h, this.g.length());
        if (!matcher.find()) {
            return null;
        }
        this.h = matcher.end();
        return matcher.group();
    }

    public final char d() {
        if (this.h < this.g.length()) {
            return this.g.charAt(this.h);
        }
        return (char) 0;
    }

    public final void e(nl2 nl2Var) {
        boolean z;
        zn5 zn5Var;
        HashMap map = new HashMap();
        nl2 nl2Var2 = this.i;
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
            char c2 = nl2Var2.b;
            ol2 ol2Var = (ol2) this.e.get(Character.valueOf(c2));
            if (!nl2Var2.d || ol2Var == null) {
                nl2Var2 = nl2Var2.f;
            } else {
                char c3 = ol2Var.c();
                nl2 nl2Var4 = nl2Var2.e;
                int iE = 0;
                boolean z2 = false;
                while (true) {
                    if (nl2Var4 == null || nl2Var4 == nl2Var || nl2Var4 == map.get(Character.valueOf(c2))) {
                        z = z2;
                        z2 = false;
                        break;
                    }
                    if (nl2Var4.c && nl2Var4.b == c3) {
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
                        f(nl2Var5);
                        nl2Var5 = nl2Var6;
                    }
                    if (dq8Var2 != dq8Var && (zn5Var = dq8Var2.e) != dq8Var) {
                        y14.E(zn5Var, dq8Var.d);
                    }
                    ol2Var.d(dq8Var2, dq8Var, iE);
                    if (nl2Var4.g == 0) {
                        nl2Var4.a.f();
                        f(nl2Var4);
                    }
                    if (nl2Var2.g == 0) {
                        nl2 nl2Var7 = nl2Var2.f;
                        dq8Var.f();
                        f(nl2Var2);
                        nl2Var2 = nl2Var7;
                    }
                } else {
                    if (!z) {
                        map.put(Character.valueOf(c2), nl2Var2.e);
                        if (!nl2Var2.c) {
                            f(nl2Var2);
                        }
                    }
                    nl2Var2 = nl2Var2.f;
                }
            }
        }
        while (true) {
            nl2 nl2Var8 = this.i;
            if (nl2Var8 == null || nl2Var8 == nl2Var) {
                return;
            } else {
                f(nl2Var8);
            }
        }
    }

    public final void f(nl2 nl2Var) {
        nl2 nl2Var2 = nl2Var.e;
        if (nl2Var2 != null) {
            nl2Var2.f = nl2Var.f;
        }
        nl2 nl2Var3 = nl2Var.f;
        if (nl2Var3 == null) {
            this.i = nl2Var2;
        } else {
            nl2Var3.e = nl2Var2;
        }
    }
}
