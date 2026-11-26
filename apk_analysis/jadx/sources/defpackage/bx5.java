package defpackage;

import com.warefly.checkscan.presentation.onboardingOneSlide.oneSlide.OnboardingOneSlideModel;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class bx5 {
    public final za a;
    public final z68 b = px.a(kx2.b);
    public final z68 c = px.a(0);
    public int d;
    public boolean e;
    public boolean f;

    public bx5(za zaVar) {
        this.a = zaVar;
    }

    /* JADX WARN: Code duplicated, block: B:43:0x00f7  */
    /* JADX WARN: Code duplicated, block: B:45:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:47:0x010b  */
    /* JADX WARN: Code duplicated, block: B:48:0x010d  */
    /* JADX WARN: Code duplicated, block: B:57:0x0144  */
    /* JADX WARN: Code duplicated, block: B:63:0x0122 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Multi-variable type inference failed */
    public final Object a(f02 f02Var) throws Exception {
        ax5 ax5Var;
        p07 p07Var;
        Object obj;
        Throwable th;
        int i;
        p07 p07Var2;
        ArrayList arrayList;
        int i2;
        boolean z;
        Object obj2;
        List list;
        ArrayList arrayList2;
        int i3;
        ArrayList arrayListH0;
        Object value;
        Object value2;
        int i4;
        int i5;
        boolean z2;
        if (f02Var instanceof ax5) {
            ax5Var = (ax5) f02Var;
            int i6 = ax5Var.p;
            if ((i6 & Integer.MIN_VALUE) != 0) {
                ax5Var.p = i6 - Integer.MIN_VALUE;
            } else {
                ax5Var = new ax5(this, f02Var);
            }
        } else {
            ax5Var = new ax5(this, f02Var);
        }
        Object obj3 = ax5Var.n;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i7 = ax5Var.p;
        Throwable th2 = null;
        z68 z68Var = this.c;
        za zaVar = this.a;
        z68 z68Var2 = this.b;
        int i8 = 1;
        if (i7 == 0) {
            r57.b(obj3);
            if (((List) z68Var2.getValue()).isEmpty() || this.e) {
                p07 p07Var3 = new p07();
                ax5Var.l = p07Var3;
                ax5Var.p = 1;
                Serializable serializableA = zaVar.a(ax5Var);
                if (serializableA != a32Var) {
                    p07Var = p07Var3;
                    obj = serializableA;
                }
                return a32Var;
            }
            return qn1.W(((Number) z68Var.getValue()).intValue(), (List) z68Var2.getValue());
        }
        if (i7 == 1) {
            p07Var = ax5Var.l;
            r57.b(obj3);
            obj = obj3;
        } else {
            if (i7 != 2) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            arrayList = ax5Var.m;
            p07Var2 = ax5Var.l;
            r57.b(obj3);
            th = null;
            i = 1;
            obj2 = obj3;
        }
        list = (List) obj2;
        List list2 = list;
        arrayList2 = new ArrayList(kn1.q(list2, 10));
        i3 = 0;
        for (Object obj4 : list2) {
            i4 = i3 + 1;
            if (i3 >= 0) {
                u96.o();
                throw th;
            }
            fx5 fx5Var = (fx5) obj4;
            int i9 = p07Var2.b;
            i5 = i;
            if (list.size() > i5) {
                z2 = i5 == true ? 1 : 0;
            } else {
                z2 = false;
            }
            OnboardingOneSlideModel onboardingOneSlideModelB = cx5.b(fx5Var, i3, i9, list.size(), z2);
            p07Var2.b += i5 == true ? 1 : 0;
            arrayList2.add(onboardingOneSlideModelB);
            i3 = i4;
            i = i5 == true ? 1 : 0;
        }
        this.d = arrayList.size();
        arrayListH0 = qn1.h0(arrayList2, arrayList);
        do {
            value = z68Var2.getValue();
        } while (!z68Var2.a(value, arrayListH0));
        this.e = false;
        if (this.f) {
            this.f = false;
            do {
                value2 = z68Var.getValue();
                ((Number) value2).intValue();
            } while (!z68Var.a(value2, new Integer(this.d)));
        }
        return qn1.W(((Number) z68Var.getValue()).intValue(), (List) z68Var2.getValue());
        List list3 = (List) obj;
        List list4 = list3;
        ArrayList arrayList3 = new ArrayList(kn1.q(list4, 10));
        int i10 = 0;
        for (Object obj5 : list4) {
            int i11 = i10 + 1;
            Throwable th3 = th2;
            if (i10 < 0) {
                u96.o();
                throw th3;
            }
            fx5 fx5Var2 = (fx5) obj5;
            int i12 = p07Var.b;
            if (list3.size() > i8) {
                z = i8;
                i2 = z ? 1 : 0;
            } else {
                i2 = i8;
                z = 0;
            }
            OnboardingOneSlideModel onboardingOneSlideModelB2 = cx5.b(fx5Var2, i10, i12, list3.size(), z);
            p07Var.b++;
            arrayList3.add(onboardingOneSlideModelB2);
            th2 = th3;
            i10 = i11;
            i8 = i2;
        }
        th = th2;
        i = i8;
        ax5Var.l = p07Var;
        ax5Var.m = arrayList3;
        ax5Var.p = 2;
        Serializable serializableB = zaVar.b(ax5Var);
        if (serializableB != a32Var) {
            p07Var2 = p07Var;
            arrayList = arrayList3;
            obj2 = serializableB;
            list = (List) obj2;
            List list5 = list;
            arrayList2 = new ArrayList(kn1.q(list5, 10));
            i3 = 0;
            while (r4.hasNext()) {
                i4 = i3 + 1;
                if (i3 >= 0) {
                    u96.o();
                    throw th;
                }
                fx5 fx5Var3 = (fx5) obj4;
                int i13 = p07Var2.b;
                i5 = i;
                if (list.size() > i5) {
                    z2 = i5 == true ? 1 : 0;
                } else {
                    z2 = false;
                }
                OnboardingOneSlideModel onboardingOneSlideModelB3 = cx5.b(fx5Var3, i3, i13, list.size(), z2);
                p07Var2.b += i5 == true ? 1 : 0;
                arrayList2.add(onboardingOneSlideModelB3);
                i3 = i4;
                i = i5 == true ? 1 : 0;
            }
            this.d = arrayList.size();
            arrayListH0 = qn1.h0(arrayList2, arrayList);
            do {
                value = z68Var2.getValue();
            } while (!z68Var2.a(value, arrayListH0));
            this.e = false;
            if (this.f) {
                this.f = false;
                do {
                    value2 = z68Var.getValue();
                    ((Number) value2).intValue();
                } while (!z68Var.a(value2, new Integer(this.d)));
            }
            return qn1.W(((Number) z68Var.getValue()).intValue(), (List) z68Var2.getValue());
        }
        return a32Var;
    }
}
