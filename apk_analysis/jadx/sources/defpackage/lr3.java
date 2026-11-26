package defpackage;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class lr3 extends wf4<kr3> {
    public final kr3 i;

    public lr3(List<vf4<kr3>> list) {
        super(list);
        int iMax = 0;
        for (int i = 0; i < list.size(); i++) {
            kr3 kr3Var = list.get(i).b;
            if (kr3Var != null) {
                iMax = Math.max(iMax, kr3Var.b.length);
            }
        }
        this.i = new kr3(new float[iMax], new int[iMax]);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.ld0
    public final Object g(vf4 vf4Var, float f) {
        kr3 kr3Var = (kr3) vf4Var.b;
        kr3 kr3Var2 = (kr3) vf4Var.c;
        kr3 kr3Var3 = this.i;
        int[] iArr = kr3Var3.b;
        float[] fArr = kr3Var3.a;
        boolean zEquals = kr3Var.equals(kr3Var2);
        int[] iArr2 = kr3Var.b;
        if (zEquals) {
            kr3Var3.a(kr3Var);
            return kr3Var3;
        }
        if (f <= 0.0f) {
            kr3Var3.a(kr3Var);
            return kr3Var3;
        }
        if (f >= 1.0f) {
            kr3Var3.a(kr3Var2);
            return kr3Var3;
        }
        int length = iArr2.length;
        int[] iArr3 = kr3Var2.b;
        if (length != iArr3.length) {
            StringBuilder sb = new StringBuilder("Cannot interpolate between gradients. Lengths vary (");
            sb.append(iArr2.length);
            sb.append(" vs ");
            fg.c(l2.e(sb, ")", iArr3.length));
            return null;
        }
        for (int i = 0; i < iArr2.length; i++) {
            fArr[i] = hb5.f(kr3Var.a[i], kr3Var2.a[i], f);
            iArr[i] = dh5.c(f, iArr2[i], iArr3[i]);
        }
        for (int length2 = iArr2.length; length2 < fArr.length; length2++) {
            fArr[length2] = fArr[iArr2.length - 1];
            iArr[length2] = iArr[iArr2.length - 1];
        }
        return kr3Var3;
    }
}
