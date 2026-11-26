package yads;

import android.text.Layout;
import android.text.SpannableStringBuilder;
import defpackage.c0a;
import java.util.Comparator;

/* JADX INFO: loaded from: classes6.dex */
public final class jy {
    public static final Comparator c = new c0a();
    public final sb0 a;
    public final int b;

    public jy(SpannableStringBuilder spannableStringBuilder, Layout.Alignment alignment, float f, int i, float f2, int i2, boolean z, int i3, int i4) {
        this.a = new sb0(spannableStringBuilder, alignment, null, null, f, 0, i, f2, i2, Integer.MIN_VALUE, -3.4028235E38f, -3.4028235E38f, -3.4028235E38f, z, z ? i3 : -16777216, Integer.MIN_VALUE, 0.0f);
        this.b = i4;
    }
}
