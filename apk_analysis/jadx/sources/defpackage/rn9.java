package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public final class rn9 extends xha {
    public final boolean e;

    public rn9(String str, int i, int i2) {
        super(str);
        this.b = i;
        this.c = i2;
        this.e = !str.endsWith(".m3u8");
    }

    public static rn9 a(ArrayList arrayList) {
        Iterator it = arrayList.iterator();
        int i = 0;
        rn9 rn9Var = null;
        while (it.hasNext()) {
            rn9 rn9Var2 = (rn9) it.next();
            int i2 = rn9Var2.c;
            if (rn9Var == null || ((i2 <= 360 && i > 360) || ((i2 <= 360 && i2 > i) || (i2 > 360 && i2 < i)))) {
                rn9Var = rn9Var2;
                i = i2;
            }
        }
        y14.r(null, "VideoData: Accepted videoData quality = " + i + TtmlNode.TAG_P);
        return rn9Var;
    }
}
