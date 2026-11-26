package yads;

import android.view.View;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;

/* JADX INFO: loaded from: classes6.dex */
public final class qk {
    public final int[] a = new int[2];
    public final int[] b = new int[2];

    public final String a(View view, View view2) {
        if (!view.isAttachedToWindow() || !view2.isAttachedToWindow()) {
            return null;
        }
        view.getLocationInWindow(this.a);
        view2.getLocationInWindow(this.b);
        int[] iArr = this.a;
        int i = iArr[0];
        int[] iArr2 = this.b;
        int i2 = i - iArr2[0];
        int i3 = iArr[1] - iArr2[1];
        int width = view.getWidth();
        int height = view.getHeight();
        StringBuilder sbF = defpackage.bg.f(i2, i3, "{", ", ", ", ");
        sbF.append(width);
        sbF.append(", ");
        sbF.append(height);
        sbF.append("}");
        String strA = xo.a(sbF.toString());
        if (strA == null) {
            return null;
        }
        return URLEncoder.encode(strA, StandardCharsets.UTF_8.name());
    }
}
