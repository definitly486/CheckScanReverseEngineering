package yads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes6.dex */
public final class xa4 extends xk5 {
    public final os4 m = new os4();

    @Override // yads.xk5
    public final mt5 a(byte[] bArr, int i, boolean z) throws ot5 {
        sb0 sb0VarA;
        os4 os4Var = this.m;
        os4Var.a = bArr;
        os4Var.c = i;
        os4Var.b = 0;
        ArrayList arrayList = new ArrayList();
        while (true) {
            os4 os4Var2 = this.m;
            int i2 = os4Var2.c - os4Var2.b;
            if (i2 <= 0) {
                return new ya4(arrayList);
            }
            if (i2 < 8) {
                throw new ot5("Incomplete Mp4Webvtt Top Level box header found.");
            }
            int iA = os4Var2.a();
            int iA2 = this.m.a();
            os4 os4Var3 = this.m;
            if (iA2 == 1987343459) {
                int i3 = iA - 8;
                CharSequence charSequenceA = null;
                rb0 rb0VarA = null;
                while (i3 > 0) {
                    if (i3 < 8) {
                        throw new ot5("Incomplete vtt cue box header found.");
                    }
                    int iA3 = os4Var3.a();
                    int iA4 = os4Var3.a();
                    int i4 = iA3 - 8;
                    String strA = u56.a(os4Var3.a, os4Var3.b, i4);
                    os4Var3.e(os4Var3.b + i4);
                    i3 = (i3 - 8) - i4;
                    if (iA4 == 1937011815) {
                        rk6 rk6Var = new rk6();
                        sk6.a(strA, rk6Var);
                        rb0VarA = rk6Var.a();
                    } else if (iA4 == 1885436268) {
                        charSequenceA = sk6.a(null, strA.trim(), Collections.EMPTY_LIST);
                    }
                }
                if (charSequenceA == null) {
                    charSequenceA = "";
                }
                if (rb0VarA != null) {
                    rb0VarA.a = charSequenceA;
                    sb0VarA = rb0VarA.a();
                } else {
                    Pattern pattern = sk6.a;
                    rk6 rk6Var2 = new rk6();
                    rk6Var2.c = charSequenceA;
                    sb0VarA = rk6Var2.a().a();
                }
                arrayList.add(sb0VarA);
            } else {
                os4Var3.e(os4Var3.b + (iA - 8));
            }
        }
    }
}
