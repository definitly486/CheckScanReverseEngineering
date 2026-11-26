package yads;

import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import androidx.media3.common.C;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class k36 extends xk5 {
    public final os4 m = new os4();
    public final boolean n;
    public final int o;
    public final int p;
    public final String q;
    public final float r;
    public final int s;

    public k36(List list) {
        int size = list.size();
        String str = C.SANS_SERIF_NAME;
        if (size != 1 || (((byte[]) list.get(0)).length != 48 && ((byte[]) list.get(0)).length != 53)) {
            this.o = 0;
            this.p = -1;
            this.q = C.SANS_SERIF_NAME;
            this.n = false;
            this.r = 0.85f;
            this.s = -1;
            return;
        }
        byte[] bArr = (byte[]) list.get(0);
        this.o = bArr[24];
        this.p = ((bArr[26] & 255) << 24) | ((bArr[27] & 255) << 16) | ((bArr[28] & 255) << 8) | (bArr[29] & 255);
        this.q = "Serif".equals(u56.a(bArr, 43, bArr.length - 43)) ? C.SERIF_NAME : str;
        int i = bArr[25] * 20;
        this.s = i;
        boolean z = (bArr[0] & 32) != 0;
        this.n = z;
        if (z) {
            this.r = Math.max(0.0f, Math.min(((bArr[11] & 255) | ((bArr[10] & 255) << 8)) / i, 0.95f));
        } else {
            this.r = 0.85f;
        }
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0046  */
    @Override // yads.xk5
    public final mt5 a(byte[] bArr, int i, boolean z) throws ot5 {
        String strA;
        os4 os4Var = this.m;
        os4Var.a = bArr;
        os4Var.c = i;
        int i2 = 0;
        os4Var.b = 0;
        int i3 = 2;
        if (i < 2) {
            throw new ot5("Unexpected subtitle format.");
        }
        int iP = os4Var.p();
        int i4 = 8;
        if (iP == 0) {
            strA = "";
        } else {
            int i5 = os4Var.c;
            int i6 = os4Var.b;
            if (i5 - i6 >= 2) {
                byte[] bArr2 = os4Var.a;
                char c = (char) ((bArr2[i6 + 1] & 255) | ((bArr2[i6] & 255) << 8));
                if (c == 65279 || c == 65534) {
                    strA = os4Var.a(iP, az.d);
                } else {
                    strA = os4Var.a(iP, az.c);
                }
            } else {
                strA = os4Var.a(iP, az.c);
            }
        }
        if (strA.isEmpty()) {
            return l36.c;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(strA);
        a(spannableStringBuilder, this.o, 0, 0, spannableStringBuilder.length(), 16711680);
        int i7 = this.p;
        int length = spannableStringBuilder.length();
        if (i7 != -1) {
            spannableStringBuilder.setSpan(new ForegroundColorSpan((i7 >>> 8) | ((i7 & 255) << 24)), 0, length, 16711713);
        }
        String str = this.q;
        int length2 = spannableStringBuilder.length();
        if (str != C.SANS_SERIF_NAME) {
            spannableStringBuilder.setSpan(new TypefaceSpan(str), 0, length2, 16711713);
        }
        float fMax = this.r;
        while (true) {
            os4 os4Var2 = this.m;
            int i8 = os4Var2.c;
            int i9 = os4Var2.b;
            if (i8 - i9 < i4) {
                return new l36(new sb0(spannableStringBuilder, null, null, null, fMax, 0, 0, -3.4028235E38f, Integer.MIN_VALUE, Integer.MIN_VALUE, -3.4028235E38f, -3.4028235E38f, -3.4028235E38f, false, -16777216, Integer.MIN_VALUE, 0.0f));
            }
            int iA = os4Var2.a();
            int iA2 = this.m.a();
            if (iA2 == 1937013100) {
                os4 os4Var3 = this.m;
                if (os4Var3.c - os4Var3.b < i3) {
                    throw new ot5("Unexpected subtitle format.");
                }
                int iP2 = os4Var3.p();
                int i10 = i2;
                while (i10 < iP2) {
                    os4 os4Var4 = this.m;
                    if (os4Var4.c - os4Var4.b < 12) {
                        throw new ot5("Unexpected subtitle format.");
                    }
                    int iP3 = os4Var4.p();
                    int iP4 = os4Var4.p();
                    os4Var4.e(os4Var4.b + i3);
                    int iK = os4Var4.k();
                    os4Var4.e(os4Var4.b + 1);
                    int iA3 = os4Var4.a();
                    if (iP4 > spannableStringBuilder.length()) {
                        StringBuilder sbC = defpackage.n7.c(iP4, "Truncating styl end (", ") to cueText.length() (");
                        sbC.append(spannableStringBuilder.length());
                        sbC.append(").");
                        sv3.d("Tx3gDecoder", sbC.toString());
                        iP4 = spannableStringBuilder.length();
                    }
                    if (iP3 >= iP4) {
                        sv3.d("Tx3gDecoder", defpackage.ln.c(iP3, iP4, "Ignoring styl with start (", ") >= end (", ")."));
                    } else {
                        int i11 = iP4;
                        a(spannableStringBuilder, iK, this.o, iP3, i11, 0);
                        if (iA3 != this.p) {
                            spannableStringBuilder.setSpan(new ForegroundColorSpan((iA3 >>> 8) | ((iA3 & 255) << 24)), iP3, i11, 33);
                        }
                    }
                    i10++;
                    i3 = 2;
                }
            } else if (iA2 == 1952608120 && this.n) {
                os4 os4Var5 = this.m;
                i3 = 2;
                if (os4Var5.c - os4Var5.b < 2) {
                    throw new ot5("Unexpected subtitle format.");
                }
                float fP = os4Var5.p() / this.s;
                int i12 = u56.a;
                fMax = Math.max(0.0f, Math.min(fP, 0.95f));
            } else {
                i3 = 2;
            }
            this.m.e(i9 + iA);
            i2 = 0;
            i4 = 8;
        }
    }

    public static void a(SpannableStringBuilder spannableStringBuilder, int i, int i2, int i3, int i4, int i5) {
        if (i != i2) {
            int i6 = i5 | 33;
            boolean z = (i & 1) != 0;
            boolean z2 = (i & 2) != 0;
            if (z) {
                if (z2) {
                    spannableStringBuilder.setSpan(new StyleSpan(3), i3, i4, i6);
                } else {
                    spannableStringBuilder.setSpan(new StyleSpan(1), i3, i4, i6);
                }
            } else if (z2) {
                spannableStringBuilder.setSpan(new StyleSpan(2), i3, i4, i6);
            }
            boolean z3 = (i & 4) != 0;
            if (z3) {
                spannableStringBuilder.setSpan(new UnderlineSpan(), i3, i4, i6);
            }
            if (z3 || z || z2) {
                return;
            }
            spannableStringBuilder.setSpan(new StyleSpan(0), i3, i4, i6);
        }
    }
}
