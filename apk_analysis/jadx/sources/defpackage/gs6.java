package defpackage;

import java.util.HashMap;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* JADX INFO: loaded from: classes4.dex */
public class gs6 implements Cloneable {
    public static final d31 h = new d31(3);
    public static final x65 i = new x65(2);
    public String b;
    public Class c;
    public uc3 d = null;
    public final Object[] e;
    public u39 f;
    public Float g;

    public static class a extends gs6 {
        public uc3 j;
        public float k;

        @Override // defpackage.gs6
        public final void b(float f) {
            this.k = this.j.b(f);
        }

        @Override // defpackage.gs6
        public final Object clone() {
            a aVar = (a) super.clone();
            aVar.j = aVar.d;
            return aVar;
        }

        @Override // defpackage.gs6
        /* JADX INFO: renamed from: e */
        public final gs6 clone() {
            a aVar = (a) super.clone();
            aVar.j = aVar.d;
            return aVar;
        }

        @Override // defpackage.gs6
        public final Float h() {
            return Float.valueOf(this.k);
        }

        @Override // defpackage.gs6
        public final void i(float... fArr) {
            super.i(fArr);
            this.j = this.d;
        }
    }

    static {
        new HashMap();
        new HashMap();
    }

    public gs6() {
        new ReentrantReadWriteLock();
        this.e = new Object[1];
        this.b = "";
    }

    public void b(float f) {
        this.g = Float.valueOf(this.d.b(f));
    }

    @Override // 
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public gs6 clone() {
        try {
            gs6 gs6Var = (gs6) super.clone();
            gs6Var.b = this.b;
            gs6Var.d = this.d.clone();
            gs6Var.f = this.f;
            return gs6Var;
        } catch (CloneNotSupportedException unused) {
            return null;
        }
    }

    public Float h() {
        return this.g;
    }

    public void i(float... fArr) {
        this.c = Float.TYPE;
        int length = fArr.length;
        uf4.a[] aVarArr = new uf4.a[Math.max(length, 2)];
        if (length == 1) {
            uf4.a aVar = new uf4.a();
            aVar.b = 0.0f;
            aVarArr[0] = aVar;
            aVarArr[1] = new uf4.a(1.0f, fArr[0]);
        } else {
            aVarArr[0] = new uf4.a(0.0f, fArr[0]);
            for (int i2 = 1; i2 < length; i2++) {
                aVarArr[i2] = new uf4.a(i2 / (length - 1), fArr[i2]);
            }
        }
        this.d = new uc3(aVarArr);
    }

    public final String toString() {
        return this.b + ": " + this.d.toString();
    }
}
