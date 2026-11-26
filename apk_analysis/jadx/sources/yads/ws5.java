package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class ws5 {
    public final Object a(a95 a95Var) {
        byte[] bArr = a95Var.b.a;
        if (bArr == null) {
            return null;
        }
        try {
            return new String(bArr, v83.a(a95Var.c));
        } catch (Exception unused) {
            return new String(bArr, defpackage.ha1.b);
        }
    }
}
