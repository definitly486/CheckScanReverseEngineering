package defpackage;

import android.graphics.Bitmap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class p95 {
    public final sy6 a;

    public static final /* synthetic */ class a {
        public static final /* synthetic */ int[] a;
        public static final /* synthetic */ int[] b;

        static {
            int[] iArr = new int[md7.values().length];
            try {
                iArr[md7.FILL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[md7.FIT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            a = iArr;
            int[] iArr2 = new int[re6.values().length];
            try {
                iArr2[re6.EXACT.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[re6.INEXACT.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            b = iArr2;
        }
    }

    public p95(sy6 sy6Var, nj njVar) {
        this.a = sy6Var;
    }

    public final o95.c a(b24 b24Var, o95.b bVar, t18 t18Var, md7 md7Var) {
        boolean zB;
        int iAbs;
        sx0 sx0Var = b24Var.i;
        re6 re6Var = b24Var.q;
        if (sx0Var.a()) {
            o95 o95VarC = this.a.c();
            o95.c cVarA = o95VarC != null ? o95VarC.a(bVar) : null;
            if (cVarA != null) {
                x04 x04Var = cVarA.a;
                dj0 dj0Var = x04Var instanceof dj0 ? (dj0) x04Var : null;
                if (dj0Var == null) {
                    zB = true;
                } else {
                    Bitmap.Config config = dj0Var.a.getConfig();
                    if (config == null) {
                        config = Bitmap.Config.ARGB_8888;
                    }
                    zB = nj.b(b24Var, config);
                }
                if (zB) {
                    String str = bVar.b.get("coil#size");
                    if (str == null) {
                        Object obj = cVarA.b.get("coil#is_sampled");
                        Boolean bool = obj instanceof Boolean ? (Boolean) obj : null;
                        if ((bool != null ? bool.booleanValue() : false) || (!aa4.e(t18Var, t18.c) && re6Var != re6.INEXACT)) {
                            int width = x04Var.getWidth();
                            int height = x04Var.getHeight();
                            t18 t18Var2 = x04Var instanceof dj0 ? (t18) c53.a(b24Var, d24.b) : t18.c;
                            hn2 hn2Var = t18Var.a;
                            int i = hn2Var instanceof hn2.a ? ((hn2.a) hn2Var).a : Integer.MAX_VALUE;
                            hn2 hn2Var2 = t18Var2.a;
                            int iMin = Math.min(i, hn2Var2 instanceof hn2.a ? ((hn2.a) hn2Var2).a : Integer.MAX_VALUE);
                            hn2 hn2Var3 = t18Var.b;
                            int i2 = hn2Var3 instanceof hn2.a ? ((hn2.a) hn2Var3).a : Integer.MAX_VALUE;
                            hn2 hn2Var4 = t18Var2.b;
                            int iMin2 = Math.min(i2, hn2Var4 instanceof hn2.a ? ((hn2.a) hn2Var4).a : Integer.MAX_VALUE);
                            double d = ((double) iMin) / ((double) width);
                            double d2 = ((double) iMin2) / ((double) height);
                            int i3 = a.a[((iMin == Integer.MAX_VALUE || iMin2 == Integer.MAX_VALUE) ? md7.FIT : md7Var).ordinal()];
                            if (i3 != 1) {
                                if (i3 != 2) {
                                    me0.e();
                                    return null;
                                }
                                if (d < d2) {
                                    iAbs = Math.abs(iMin - width);
                                } else {
                                    iAbs = Math.abs(iMin2 - height);
                                    d = d2;
                                }
                            } else if (d > d2) {
                                iAbs = Math.abs(iMin - width);
                            } else {
                                iAbs = Math.abs(iMin2 - height);
                                d = d2;
                            }
                            if (iAbs > 1) {
                                int i4 = a.b[re6Var.ordinal()];
                                if (i4 != 1) {
                                    if (i4 != 2) {
                                        me0.e();
                                        return null;
                                    }
                                    if (d <= 1.0d) {
                                    }
                                } else if (d == 1.0d) {
                                }
                            }
                        }
                        return cVarA;
                    }
                    if (str.equals(t18Var.toString())) {
                        return cVarA;
                    }
                }
            }
        }
        return null;
    }

    public final o95.b b(b24 b24Var, Object obj, zz5 zz5Var, a13 a13Var) {
        String strA;
        sx0 sx0Var = b24Var.i;
        Map<String, String> map = b24Var.d;
        if (sx0Var != sx0.DISABLED) {
            List<b36<tf4<? extends Object>, ne4<? extends Object>>> list = this.a.d.c;
            int size = list.size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    strA = null;
                    break;
                }
                b36<tf4<? extends Object>, ne4<? extends Object>> b36Var = list.get(i);
                tf4<? extends Object> tf4Var = b36Var.b;
                if (b36Var.c.e(obj)) {
                    tf4Var.getClass();
                    strA = tf4Var.a(obj, zz5Var);
                    if (strA != null) {
                        break;
                    }
                }
                i++;
            }
            if (strA != null) {
                if (((List) c53.a(b24Var, d24.a)).isEmpty()) {
                    return new o95.b(strA, map);
                }
                LinkedHashMap linkedHashMap = new LinkedHashMap(map);
                linkedHashMap.put("coil#size", zz5Var.b.toString());
                return new o95.b(strA, linkedHashMap);
            }
        }
        return null;
    }
}
