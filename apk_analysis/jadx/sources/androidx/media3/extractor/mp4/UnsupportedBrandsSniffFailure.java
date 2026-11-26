package androidx.media3.extractor.mp4;

import androidx.media3.common.util.Util;
import androidx.media3.extractor.SniffFailure;
import defpackage.o8;
import defpackage.w24;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
public final class UnsupportedBrandsSniffFailure implements SniffFailure {
    public final w24 compatibleBrands;
    public final int majorBrand;

    public UnsupportedBrandsSniffFailure(int i, int[] iArr) {
        w24 w24Var;
        this.majorBrand = i;
        if (iArr != null) {
            w24 w24Var2 = w24.d;
            w24Var = iArr.length == 0 ? w24.d : new w24(Arrays.copyOf(iArr, iArr.length));
        } else {
            w24Var = w24.d;
        }
        this.compatibleBrands = w24Var;
    }

    public String toString() {
        ArrayList arrayList = new ArrayList(this.compatibleBrands.c);
        int i = 0;
        while (true) {
            w24 w24Var = this.compatibleBrands;
            int i2 = w24Var.c;
            if (i >= i2) {
                return "UnsupportedBrands{major=" + Util.toFourccString(this.majorBrand) + ", compatible=" + arrayList + "}";
            }
            o8.j(i, i2);
            arrayList.add(Util.toFourccString(w24Var.b[i]));
            i++;
        }
    }
}
