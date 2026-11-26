package defpackage;

import com.my.tracker.ads.AdFormat;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public final class zp8 {

    public static final /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[fo0.c.values().length];
            try {
                iArr[fo0.c.AD.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[fo0.c.DAILY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            a = iArr;
        }
    }

    public static final ow7 a(pw7 pw7Var, String str, Integer num) {
        int iIntValue;
        Integer num2;
        String str2;
        if (pw7Var != null && (str2 = pw7Var.a) != null) {
            str = str2;
        } else if (str == null) {
            return null;
        }
        if (pw7Var != null && (num2 = pw7Var.b) != null) {
            iIntValue = num2.intValue();
        } else {
            if (num == null) {
                return null;
            }
            iIntValue = num.intValue();
        }
        return new ow7(Integer.valueOf(iIntValue), str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v6, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r2v7, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v8, types: [java.util.ArrayList] */
    public static final ArrayList b(ArrayList arrayList) {
        pw7 pw7Var;
        ?? J;
        String str;
        ArrayList arrayList2 = new ArrayList(kn1.q(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            so8 so8Var = (so8) it.next();
            String str2 = "daily_ad";
            String str3 = "daily_bonus";
            Integer numValueOf = null;
            if (so8Var instanceof ir0) {
                ArrayList<fo0> arrayList3 = ((ir0) so8Var).b;
                J = new ArrayList();
                for (fo0 fo0Var : arrayList3) {
                    pw7 pw7Var2 = fo0Var.g;
                    int i = a.a[fo0Var.f.ordinal()];
                    if (i == 1) {
                        str = "daily_ad";
                    } else {
                        if (i != 2) {
                            me0.e();
                            return null;
                        }
                        str = "daily_bonus";
                    }
                    ow7 ow7VarA = a(pw7Var2, str, Integer.valueOf(fo0Var.a));
                    if (ow7VarA != null) {
                        J.add(ow7VarA);
                    }
                }
            } else {
                boolean z = so8Var instanceof zl8;
                if (z) {
                    pw7Var = ((zl8) so8Var).e;
                } else if (so8Var instanceof nm8) {
                    pw7Var = ((nm8) so8Var).f;
                } else if (so8Var instanceof rh9) {
                    pw7Var = ((rh9) so8Var).h;
                } else if (so8Var instanceof kz7) {
                    pw7Var = ((kz7) so8Var).m;
                } else {
                    pw7Var = so8Var instanceof rm8 ? ((rm8) so8Var).h : null;
                }
                if (z) {
                    str3 = AdFormat.BANNER;
                } else if (!(so8Var instanceof nm8 ? true : so8Var instanceof rm8)) {
                    if (so8Var instanceof rh9) {
                        int i2 = a.a[((rh9) so8Var).g.ordinal()];
                        if (i2 != 1) {
                            if (i2 != 2) {
                                me0.e();
                                return null;
                            }
                            str2 = "daily_bonus";
                        }
                        str3 = str2;
                    } else {
                        str3 = so8Var instanceof kz7 ? "task" : null;
                    }
                }
                if (z) {
                    numValueOf = Integer.valueOf(((zl8) so8Var).a);
                } else if (so8Var instanceof nm8) {
                    numValueOf = Integer.valueOf(((nm8) so8Var).a);
                } else if (so8Var instanceof rh9) {
                    numValueOf = Integer.valueOf(((rh9) so8Var).a);
                } else if (so8Var instanceof kz7) {
                    numValueOf = Integer.valueOf(((kz7) so8Var).a);
                } else if (so8Var instanceof rm8) {
                    numValueOf = Integer.valueOf(((rm8) so8Var).a);
                }
                J = u96.j(a(pw7Var, str3, numValueOf));
            }
            arrayList2.add(J);
        }
        return arrayList2;
    }
}
