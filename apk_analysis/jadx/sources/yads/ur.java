package yads;

import defpackage.g17;
import defpackage.p07;
import defpackage.ua8;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.regex.PatternSyntaxException;

/* JADX INFO: loaded from: classes6.dex */
public abstract class ur {
    public sr a;
    public final LinkedHashMap b = new LinkedHashMap();
    public ArrayList c;
    public int d;

    public ur(sr srVar) {
        this.a = srVar;
        a(srVar, true);
    }

    public abstract void a(PatternSyntaxException patternSyntaxException);

    public final void a(sr srVar, boolean z) {
        String string;
        Object next;
        Character ch;
        if (defpackage.aa4.e(this.a, srVar) || !z) {
            string = null;
        } else {
            int size = ((ArrayList) a()).size() - 1;
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i <= size; i++) {
                rr rrVar = (rr) ((ArrayList) a()).get(i);
                if ((rrVar instanceof pr) && (ch = ((pr) rrVar).a) != null) {
                    sb.append(ch);
                }
            }
            string = sb.toString();
        }
        this.a = srVar;
        this.b.clear();
        for (tr trVar : this.a.b) {
            try {
                String str = trVar.b;
                if (str != null) {
                    this.b.put(Character.valueOf(trVar.a), new g17(str));
                }
            } catch (PatternSyntaxException e) {
                a(e);
            }
        }
        String str2 = this.a.a;
        ArrayList arrayList = new ArrayList(str2.length());
        for (int i2 = 0; i2 < str2.length(); i2++) {
            char cCharAt = str2.charAt(i2);
            Iterator it = this.a.b.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (((tr) next).a != cCharAt);
            tr trVar2 = (tr) next;
            arrayList.add(trVar2 != null ? new pr((g17) this.b.get(Character.valueOf(trVar2.a)), trVar2.c) : new qr(cCharAt));
        }
        this.c = arrayList;
        if (string != null) {
            a(string);
        }
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0029 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:14:0x002a  */
    public final int b() {
        int i = 0;
        for (rr rrVar : (ArrayList) a()) {
            if ((rrVar instanceof pr) && ((pr) rrVar).a == null) {
                if (i != -1) {
                    return i;
                }
                return ((ArrayList) a()).size();
            }
            i++;
        }
        i = -1;
        if (i != -1) {
            return i;
        }
        return ((ArrayList) a()).size();
    }

    public final sr c() {
        return this.a;
    }

    public final String d() {
        Character ch;
        StringBuilder sb = new StringBuilder();
        List listA = a();
        ArrayList arrayList = new ArrayList();
        for (Object obj : (ArrayList) listA) {
            rr rrVar = (rr) obj;
            if (rrVar instanceof qr) {
                sb.append(((qr) rrVar).a);
            } else if ((rrVar instanceof pr) && (ch = ((pr) rrVar).a) != null) {
                sb.append(ch);
            } else {
                if (!this.a.c) {
                    break;
                }
                rrVar.getClass();
                sb.append(((pr) rrVar).c);
            }
            arrayList.add(obj);
        }
        return sb.toString();
    }

    public final int a(aw5 aw5Var, String str) {
        int length;
        Integer numValueOf;
        Character ch;
        int i = aw5Var.a;
        String strSubstring = str.substring(i, aw5Var.b + i);
        int size = ((ArrayList) a()).size() - 1;
        StringBuilder sb = new StringBuilder();
        for (int i2 = aw5Var.a + aw5Var.c; i2 <= size; i2++) {
            rr rrVar = (rr) ((ArrayList) a()).get(i2);
            if ((rrVar instanceof pr) && (ch = ((pr) rrVar).a) != null) {
                sb.append(ch);
            }
        }
        String string = sb.toString();
        a(aw5Var);
        int iB = b();
        if (string.length() == 0) {
            numValueOf = null;
        } else {
            if (this.b.size() <= 1) {
                int i3 = 0;
                for (int i4 = iB; i4 < ((ArrayList) a()).size(); i4++) {
                    if (((ArrayList) a()).get(i4) instanceof pr) {
                        i3++;
                    }
                }
                length = i3 - string.length();
            } else {
                String strA = a(iB, string);
                int i5 = 0;
                while (i5 < ((ArrayList) a()).size() && defpackage.aa4.e(strA, a(iB + i5, string))) {
                    i5++;
                }
                length = i5 - 1;
            }
            numValueOf = Integer.valueOf(length >= 0 ? length : 0);
        }
        a(strSubstring, iB, numValueOf);
        int iB2 = b();
        a(string, iB2, null);
        return iB2;
    }

    public final void a(aw5 aw5Var) {
        if (aw5Var.b == 0 && aw5Var.c == 1) {
            for (int i = aw5Var.a; i >= 0; i--) {
                rr rrVar = (rr) ((ArrayList) a()).get(i);
                if (rrVar instanceof pr) {
                    pr prVar = (pr) rrVar;
                    if (prVar.a != null) {
                        prVar.a = null;
                        break;
                    }
                }
            }
        }
        int size = ((ArrayList) a()).size();
        for (int i2 = aw5Var.a; i2 < size && i2 < ((ArrayList) a()).size(); i2++) {
            rr rrVar2 = (rr) ((ArrayList) a()).get(i2);
            if (rrVar2 instanceof pr) {
                ((pr) rrVar2).a = null;
            }
        }
    }

    public final List a() {
        ArrayList arrayList = this.c;
        if (arrayList != null) {
            return arrayList;
        }
        defpackage.aa4.j("destructedValue");
        throw null;
    }

    public void a(String str) {
        int size = ((ArrayList) a()).size();
        for (int i = 0; i < size && i < ((ArrayList) a()).size(); i++) {
            rr rrVar = (rr) ((ArrayList) a()).get(i);
            if (rrVar instanceof pr) {
                ((pr) rrVar).a = null;
            }
        }
        a(str, 0, null);
        this.d = Math.min(this.d, d().length());
    }

    public void a(Integer num, String str) {
        aw5 aw5VarA = zv5.a(d(), str);
        int iIntValue = num.intValue();
        int i = aw5VarA.b;
        int i2 = iIntValue - i;
        if (i2 < 0) {
            i2 = 0;
        }
        int iA = a(new aw5(i2, i, aw5VarA.c), str);
        int iB = b();
        if (i2 < iB) {
            while (iA < ((ArrayList) a()).size() && !(((rr) ((ArrayList) a()).get(iA)) instanceof pr)) {
                iA++;
            }
            iB = Math.min(iA, d().length());
        }
        this.d = iB;
    }

    public final String a(int i, String str) {
        StringBuilder sb = new StringBuilder();
        p07 p07Var = new p07();
        p07Var.b = i;
        for (int i2 = 0; i2 < str.length(); i2++) {
            char cCharAt = str.charAt(i2);
            g17 g17VarA = a(p07Var, this);
            if (g17VarA != null && g17VarA.e(String.valueOf(cCharAt))) {
                sb.append(cCharAt);
                p07Var.b++;
            }
        }
        return sb.toString();
    }

    public static final g17 a(p07 p07Var, ur urVar) {
        while (p07Var.b < ((ArrayList) urVar.a()).size()) {
            if (((ArrayList) urVar.a()).get(p07Var.b) instanceof pr) {
                break;
            }
            p07Var.b++;
        }
        Object objW = defpackage.qn1.W(p07Var.b, urVar.a());
        pr prVar = objW instanceof pr ? (pr) objW : null;
        if (prVar != null) {
            return prVar.b;
        }
        return null;
    }

    public final void a(String str, int i, Integer num) {
        String strA = a(i, str);
        if (num != null) {
            strA = ua8.l0(num.intValue(), strA);
        }
        int i2 = 0;
        while (i < ((ArrayList) a()).size() && i2 < strA.length()) {
            rr rrVar = (rr) ((ArrayList) a()).get(i);
            char cCharAt = strA.charAt(i2);
            if (rrVar instanceof pr) {
                ((pr) rrVar).a = Character.valueOf(cCharAt);
                i2++;
            }
            i++;
        }
    }
}
