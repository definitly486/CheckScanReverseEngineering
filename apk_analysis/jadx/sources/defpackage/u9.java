package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class u9 extends gh4 implements nl3<List<? extends kx5>, List<? extends lx5>> {
    public static final u9 f = new u9(1);

    public static final /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[dk0.values().length];
            try {
                iArr[dk0.OnlineShopInfo.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[dk0.StepsInfo.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[dk0.Promocodes.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[dk0.HotItems.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[dk0.Description.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[dk0.EXPIRED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[dk0.CARD_BUTTON.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            a = iArr;
        }
    }

    @Override // defpackage.nl3
    public final List<? extends lx5> invoke(List<? extends kx5> list) {
        lx5 lx5Var;
        List<? extends kx5> list2 = list;
        list2.getClass();
        List<? extends kx5> list3 = list2;
        ArrayList arrayList = new ArrayList(kn1.q(list3, 10));
        Iterator<T> it = list3.iterator();
        while (it.hasNext()) {
            switch (a.a[((kx5) it.next()).a().ordinal()]) {
                case 1:
                    lx5Var = lx5.e.a;
                    break;
                case 2:
                    lx5Var = lx5.g.a;
                    break;
                case 3:
                    lx5Var = lx5.f.a;
                    break;
                case 4:
                    lx5Var = lx5.d.a;
                    break;
                case 5:
                    lx5Var = lx5.b.a;
                    break;
                case 6:
                    lx5Var = lx5.c.a;
                    break;
                case 7:
                    lx5Var = lx5.a.a;
                    break;
                default:
                    me0.e();
                    return null;
            }
            arrayList.add(lx5Var);
        }
        return arrayList;
    }
}
