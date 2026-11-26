package yads;

import android.content.Context;
import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes6.dex */
public final class il2 {
    public final bl2 a;

    public il2(Context context) {
        this.a = new bl2(context.getApplicationContext());
    }

    public final Drawable a(byte[] bArr) {
        al2 euVar;
        pd3 pd3VarA = qd3.a(bArr);
        bl2 bl2Var = this.a;
        bl2Var.getClass();
        int iOrdinal = pd3VarA.ordinal();
        if (iOrdinal == 0 || iOrdinal == 1) {
            euVar = new eu();
        } else if (iOrdinal != 2) {
            if (iOrdinal != 3) {
                defpackage.me0.e();
                return null;
            }
            euVar = new eu();
        } else {
            euVar = new g73();
        }
        return euVar.a(bArr, bl2Var.a.getApplicationContext());
    }
}
