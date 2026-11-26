package defpackage;

import android.graphics.Bitmap;

/* JADX INFO: loaded from: classes3.dex */
public final class wp3 extends ns2<up3> {
    @Override // defpackage.e47
    public final Class<up3> a() {
        return up3.class;
    }

    @Override // defpackage.e47
    public final int getSize() {
        zp3 zp3Var = ((up3) this.b).b.a;
        u68 u68Var = zp3Var.a;
        return (u68Var.j.length * 4) + u68Var.d.limit() + u68Var.i.length + zp3Var.o;
    }

    @Override // defpackage.ns2, defpackage.g54
    public final void initialize() {
        ((up3) this.b).b.a.l.prepareToDraw();
    }

    @Override // defpackage.e47
    public final void recycle() {
        pr prVar;
        pr prVar2;
        pr prVar3;
        up3 up3Var = (up3) this.b;
        up3Var.stop();
        up3Var.e = true;
        zp3 zp3Var = up3Var.b.a;
        p37 p37Var = zp3Var.d;
        zp3Var.c.clear();
        Bitmap bitmap = zp3Var.l;
        if (bitmap != null) {
            zp3Var.e.c(bitmap);
            zp3Var.l = null;
        }
        zp3Var.f = false;
        zp3.a aVar = zp3Var.i;
        if (aVar != null) {
            p37Var.c(aVar);
            zp3Var.i = null;
        }
        zp3.a aVar2 = zp3Var.k;
        if (aVar2 != null) {
            p37Var.c(aVar2);
            zp3Var.k = null;
        }
        zp3.a aVar3 = zp3Var.n;
        if (aVar3 != null) {
            p37Var.c(aVar3);
            zp3Var.n = null;
        }
        u68 u68Var = zp3Var.a;
        tp3.a aVar4 = u68Var.c;
        u68Var.l = null;
        byte[] bArr = u68Var.i;
        if (bArr != null && (prVar3 = ((sp3) aVar4).b) != null) {
            prVar3.put(bArr);
        }
        int[] iArr = u68Var.j;
        if (iArr != null && (prVar2 = ((sp3) aVar4).b) != null) {
            prVar2.put(iArr);
        }
        Bitmap bitmap2 = u68Var.m;
        if (bitmap2 != null) {
            ((sp3) aVar4).a.c(bitmap2);
        }
        u68Var.m = null;
        u68Var.d = null;
        u68Var.s = null;
        byte[] bArr2 = u68Var.e;
        if (bArr2 != null && (prVar = ((sp3) aVar4).b) != null) {
            prVar.put(bArr2);
        }
        zp3Var.j = true;
    }
}
