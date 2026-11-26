package yads;

import android.text.TextUtils;
import androidx.media3.extractor.text.ttml.TtmlNode;
import java.util.Collections;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes6.dex */
public final class dw5 {
    public static final Pattern b = Pattern.compile("\\s+");
    public static final te3 c = te3.b(2, TtmlNode.TEXT_EMPHASIS_AUTO, "none");
    public static final te3 d = te3.b(3, TtmlNode.TEXT_EMPHASIS_MARK_DOT, TtmlNode.TEXT_EMPHASIS_MARK_SESAME, TtmlNode.TEXT_EMPHASIS_MARK_CIRCLE);
    public static final te3 e = te3.b(2, TtmlNode.TEXT_EMPHASIS_MARK_FILLED, TtmlNode.TEXT_EMPHASIS_MARK_OPEN);
    public static final te3 f = te3.b(3, TtmlNode.ANNOTATION_POSITION_AFTER, TtmlNode.ANNOTATION_POSITION_BEFORE, TtmlNode.ANNOTATION_POSITION_OUTSIDE);
    public final int a;

    public dw5(int i, int i2, int i3) {
        this.a = i;
    }

    /* JADX WARN: Code duplicated, block: B:101:0x016b  */
    /* JADX WARN: Code duplicated, block: B:102:0x016d  */
    /* JADX WARN: Code duplicated, block: B:104:0x0170 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:106:0x0173  */
    /* JADX WARN: Code duplicated, block: B:107:0x0175  */
    /* JADX WARN: Code duplicated, block: B:37:0x008b  */
    /* JADX WARN: Code duplicated, block: B:84:0x0136  */
    /* JADX WARN: Code duplicated, block: B:85:0x013b  */
    /* JADX WARN: Code duplicated, block: B:88:0x0147  */
    /* JADX WARN: Code duplicated, block: B:90:0x014c  */
    /* JADX WARN: Code duplicated, block: B:96:0x015b  */
    /* JADX WARN: Code duplicated, block: B:98:0x0163  */
    /* JADX WARN: Code duplicated, block: B:99:0x0165  */
    public static dw5 a(String str) {
        te3 te3VarB;
        byte b2;
        int i;
        int i2;
        oj5 oj5Var;
        Object next;
        String str2;
        int iHashCode;
        if (str == null) {
            return null;
        }
        String strA = oj.a(str.trim());
        if (strA.isEmpty()) {
            return null;
        }
        String[] strArrSplit = TextUtils.split(strA, b);
        int length = strArrSplit.length;
        byte b3 = 0;
        int i3 = 1;
        if (length != 0) {
            te3VarB = length != 1 ? te3.b(strArrSplit.length, (Object[]) strArrSplit.clone()) : new pl5(strArrSplit[0]);
        } else {
            te3VarB = q55.j;
        }
        te3 te3Var = f;
        if (te3Var == null) {
            defpackage.o2.d("set1");
            return null;
        }
        if (te3VarB == null) {
            defpackage.o2.d("set2");
            return null;
        }
        oj5 oj5Var2 = new oj5(new pj5(te3Var, te3VarB));
        String str3 = (String) (oj5Var2.hasNext() ? oj5Var2.next() : TtmlNode.ANNOTATION_POSITION_OUTSIDE);
        int iHashCode2 = str3.hashCode();
        int i4 = -1;
        if (iHashCode2 != -1392885889) {
            if (iHashCode2 != -1106037339) {
                if (iHashCode2 == 92734940 && str3.equals(TtmlNode.ANNOTATION_POSITION_AFTER)) {
                    b2 = 0;
                } else {
                    b2 = -1;
                }
            } else if (str3.equals(TtmlNode.ANNOTATION_POSITION_OUTSIDE)) {
                b2 = 1;
            } else {
                b2 = -1;
            }
        } else if (str3.equals(TtmlNode.ANNOTATION_POSITION_BEFORE)) {
            b2 = 2;
        } else {
            b2 = -1;
        }
        if (b2 != 0) {
            i = b2 != 1 ? 1 : -2;
        } else {
            i = 2;
        }
        te3 te3Var2 = c;
        if (te3Var2 == null) {
            defpackage.o2.d("set1");
            return null;
        }
        pj5 pj5Var = new pj5(te3Var2, te3VarB);
        if (!Collections.disjoint(te3VarB, te3Var2)) {
            String str4 = (String) new oj5(pj5Var).next();
            int iHashCode3 = str4.hashCode();
            if (iHashCode3 == 3005871) {
                str4.equals(TtmlNode.TEXT_EMPHASIS_AUTO);
            } else if (iHashCode3 == 3387192 && str4.equals("none")) {
                i4 = 0;
            }
            return new dw5(i4, 0, i);
        }
        te3 te3Var3 = e;
        if (te3Var3 == null) {
            defpackage.o2.d("set1");
            return null;
        }
        pj5 pj5Var2 = new pj5(te3Var3, te3VarB);
        te3 te3Var4 = d;
        if (te3Var4 == null) {
            defpackage.o2.d("set1");
            return null;
        }
        pj5 pj5Var3 = new pj5(te3Var4, te3VarB);
        if (Collections.disjoint(te3VarB, te3Var3) && Collections.disjoint(te3VarB, te3Var4)) {
            return new dw5(-1, 0, i);
        }
        oj5 oj5Var3 = new oj5(pj5Var2);
        String str5 = (String) (oj5Var3.hasNext() ? oj5Var3.next() : TtmlNode.TEXT_EMPHASIS_MARK_FILLED);
        int iHashCode4 = str5.hashCode();
        if (iHashCode4 != -1274499742) {
            if (iHashCode4 == 3417674 && str5.equals(TtmlNode.TEXT_EMPHASIS_MARK_OPEN)) {
                i2 = 2;
            }
            oj5Var = new oj5(pj5Var3);
            if (oj5Var.hasNext()) {
                next = oj5Var.next();
            } else {
                next = TtmlNode.TEXT_EMPHASIS_MARK_CIRCLE;
            }
            str2 = (String) next;
            iHashCode = str2.hashCode();
            if (iHashCode != -1360216880) {
                if (iHashCode != -905816648) {
                    if (iHashCode == 99657 || !str2.equals(TtmlNode.TEXT_EMPHASIS_MARK_DOT)) {
                        b3 = -1;
                    }
                } else if (str2.equals(TtmlNode.TEXT_EMPHASIS_MARK_SESAME)) {
                    b3 = 1;
                } else {
                    b3 = -1;
                }
            } else if (str2.equals(TtmlNode.TEXT_EMPHASIS_MARK_CIRCLE)) {
                b3 = 2;
            } else {
                b3 = -1;
            }
            if (b3 != 0) {
                i3 = 2;
            } else if (b3 == 1) {
                i3 = 3;
            }
            return new dw5(i3, i2, i);
        }
        str5.equals(TtmlNode.TEXT_EMPHASIS_MARK_FILLED);
        i2 = 1;
        oj5Var = new oj5(pj5Var3);
        if (oj5Var.hasNext()) {
            next = oj5Var.next();
        } else {
            next = TtmlNode.TEXT_EMPHASIS_MARK_CIRCLE;
        }
        str2 = (String) next;
        iHashCode = str2.hashCode();
        if (iHashCode != -1360216880) {
            if (iHashCode != -905816648) {
                if (iHashCode == 99657) {
                    b3 = -1;
                } else {
                    b3 = -1;
                }
            } else if (str2.equals(TtmlNode.TEXT_EMPHASIS_MARK_SESAME)) {
                b3 = 1;
            } else {
                b3 = -1;
            }
        } else if (str2.equals(TtmlNode.TEXT_EMPHASIS_MARK_CIRCLE)) {
            b3 = 2;
        } else {
            b3 = -1;
        }
        if (b3 != 0) {
            i3 = 2;
        } else if (b3 == 1) {
            i3 = 3;
        }
        return new dw5(i3, i2, i);
    }
}
