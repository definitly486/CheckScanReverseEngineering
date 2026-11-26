package defpackage;

import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.foundation.layout.WindowInsetsSizeKt;
import androidx.compose.foundation.layout.WindowInsetsWidthCalculator;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import yads.kc1;
import yads.l66;
import yads.t91;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class kh implements WindowInsetsWidthCalculator, l66 {
    public final /* synthetic */ int b;

    public /* synthetic */ kh(int i) {
        this.b = i;
    }

    public static String c(StringBuilder sb, String str, String str2, String str3) {
        sb.append(str);
        sb.append(str2);
        sb.append(str3);
        return sb.toString();
    }

    @Override // yads.l66
    /* JADX INFO: renamed from: a */
    public boolean mo9528a(Object obj) {
        Long l = (Long) obj;
        switch (this.b) {
            case 4:
                return kc1.c(l.longValue());
            default:
                return t91.d(l.longValue());
        }
    }

    @Override // androidx.compose.foundation.layout.WindowInsetsWidthCalculator
    public int calculate(WindowInsets windowInsets, LayoutDirection layoutDirection, Density density) {
        return WindowInsetsSizeKt.startCalc$lambda$0(windowInsets, layoutDirection, density);
    }
}
