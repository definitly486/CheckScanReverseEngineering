package defpackage;

import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class uy extends p33 {
    public final byte[] a;
    public final byte[] b;

    public uy(byte[] bArr, byte[] bArr2) {
        this.a = bArr;
        this.b = bArr2;
    }

    @Override // defpackage.p33
    public final byte[] a() {
        return this.a;
    }

    @Override // defpackage.p33
    public final byte[] b() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof p33)) {
            return false;
        }
        p33 p33Var = (p33) obj;
        boolean z = p33Var instanceof uy;
        if (Arrays.equals(this.a, z ? ((uy) p33Var).a : p33Var.a())) {
            return Arrays.equals(this.b, z ? ((uy) p33Var).b : p33Var.b());
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.b) ^ ((Arrays.hashCode(this.a) ^ 1000003) * 1000003);
    }

    public final String toString() {
        return "ExperimentIds{clearBlob=" + Arrays.toString(this.a) + ", encryptedBlob=" + Arrays.toString(this.b) + "}";
    }
}
