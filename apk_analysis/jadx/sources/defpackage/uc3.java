package defpackage;

import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
public final class uc3 extends yf4 {
    public float d;
    public float e;
    public float f;
    public boolean g;

    public uc3(uf4.a... aVarArr) {
        int length = aVarArr.length;
        this.a = length;
        ArrayList<uf4> arrayList = new ArrayList<>();
        this.b = arrayList;
        arrayList.addAll(Arrays.asList(aVarArr));
        arrayList.get(0);
        arrayList.get(length - 1).getClass();
        this.g = true;
    }

    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final uc3 clone() {
        ArrayList<uf4> arrayList = this.b;
        int size = arrayList.size();
        uf4.a[] aVarArr = new uf4.a[size];
        for (int i = 0; i < size; i++) {
            aVarArr[i] = arrayList.get(i).clone();
        }
        return new uc3(aVarArr);
    }

    public final float b(float f) {
        ArrayList<uf4> arrayList = this.b;
        int i = this.a;
        if (i == 2) {
            if (this.g) {
                this.g = false;
                this.d = ((uf4.a) arrayList.get(0)).c;
                float f2 = ((uf4.a) arrayList.get(1)).c;
                this.e = f2;
                this.f = f2 - this.d;
            }
            u39 u39Var = this.c;
            float f3 = this.d;
            return u39Var == null ? (f * this.f) + f3 : ((Number) u39Var.k(f, Float.valueOf(f3), Float.valueOf(this.e))).floatValue();
        }
        if (f <= 0.0f) {
            uf4.a aVar = (uf4.a) arrayList.get(0);
            uf4.a aVar2 = (uf4.a) arrayList.get(1);
            float f4 = aVar.c;
            float f5 = aVar2.c;
            float f6 = aVar.b;
            float f7 = (f - f6) / (aVar2.b - f6);
            u39 u39Var2 = this.c;
            return u39Var2 == null ? i8.b(f5, f4, f7, f4) : ((Number) u39Var2.k(f7, Float.valueOf(f4), Float.valueOf(f5))).floatValue();
        }
        if (f >= 1.0f) {
            uf4.a aVar3 = (uf4.a) arrayList.get(i - 2);
            uf4.a aVar4 = (uf4.a) arrayList.get(i - 1);
            float f8 = aVar3.c;
            float f9 = aVar4.c;
            float f10 = aVar3.b;
            float f11 = (f - f10) / (aVar4.b - f10);
            u39 u39Var3 = this.c;
            return u39Var3 == null ? i8.b(f9, f8, f11, f8) : ((Number) u39Var3.k(f11, Float.valueOf(f8), Float.valueOf(f9))).floatValue();
        }
        uf4.a aVar5 = (uf4.a) arrayList.get(0);
        int i2 = 1;
        while (i2 < i) {
            uf4.a aVar6 = (uf4.a) arrayList.get(i2);
            float f12 = aVar6.b;
            if (f < f12) {
                float f13 = aVar5.b;
                float f14 = (f - f13) / (f12 - f13);
                float f15 = aVar5.c;
                float f16 = aVar6.c;
                u39 u39Var4 = this.c;
                return u39Var4 == null ? i8.b(f16, f15, f14, f15) : ((Number) u39Var4.k(f14, Float.valueOf(f15), Float.valueOf(f16))).floatValue();
            }
            i2++;
            aVar5 = aVar6;
        }
        return arrayList.get(i - 1).h().floatValue();
    }
}
