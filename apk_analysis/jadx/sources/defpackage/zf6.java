package defpackage;

import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zf6 implements pz3 {
    public final long a;
    public final tf6 b;

    public static final /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[tf6.values().length];
            try {
                iArr[tf6.Admitad.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[tf6.Partner.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[tf6.BonusProgram.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[tf6.Redmond.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[tf6.Coupon.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[tf6.DiscountShop.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            a = iArr;
        }
    }

    public zf6(long j, tf6 tf6Var) {
        switch (a.a[tf6Var.ordinal()]) {
            case 1:
                new kd.f.a.b(kd.f.a.EnumC0253a.Admitad, j);
                break;
            case 2:
                new kd.f.a.b(kd.f.a.EnumC0253a.Partner, j);
                break;
            case 3:
            case 4:
                new kd.f.a.b(kd.f.a.EnumC0253a.BonusProgram, j);
                break;
            case 5:
                new kd.f.a.b(kd.f.a.EnumC0253a.Coupon, j);
                break;
            case 6:
                Map mapSingletonMap = Collections.singletonMap("Shop", Long.valueOf(j));
                mapSingletonMap.getClass();
                Map mapSingletonMap2 = Collections.singletonMap("Shown", mapSingletonMap);
                mapSingletonMap2.getClass();
                new kd.n.a.C0277a("Discounts", mapSingletonMap2);
                break;
        }
        tf6Var.getClass();
        this.a = j;
        this.b = tf6Var;
    }
}
