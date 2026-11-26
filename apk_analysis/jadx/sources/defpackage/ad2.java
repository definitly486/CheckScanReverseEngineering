package defpackage;

import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.foundation.layout.WindowInsetsHeightCalculator;
import androidx.compose.ui.unit.Density;
import yads.fi1;
import yads.l66;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ad2 implements WindowInsetsHeightCalculator, l66 {
    public static String b(Object obj, String str) {
        return (str + obj).toString();
    }

    public static StringBuilder c(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        return sb;
    }

    public static StringBuilder d(String str, String str2, String str3, String str4, String str5) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(str2);
        sb.append(str3);
        sb.append(str4);
        sb.append(str5);
        return sb;
    }

    public static /* synthetic */ void e(Object obj, String str) {
        throw new AssertionError(str + obj);
    }

    @Override // yads.l66
    /* JADX INFO: renamed from: a */
    public boolean mo9528a(Object obj) {
        return fi1.a(((Double) obj).doubleValue());
    }

    @Override // androidx.compose.foundation.layout.WindowInsetsHeightCalculator
    public int calculate(WindowInsets windowInsets, Density density) {
        return windowInsets.getTop(density);
    }
}
