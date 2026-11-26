package defpackage;

import android.view.inputmethod.DeleteGesture;
import androidx.compose.ui.graphics.colorspace.ColorSpaces;
import androidx.compose.ui.graphics.colorspace.DoubleFunction;
import androidx.compose.ui.unit.Dp;
import com.google.android.gms.internal.play_billing.zzfx;
import java.util.List;
import yads.f61;
import yads.ih2;
import yads.l66;
import yads.ni1;
import yads.st3;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class rg implements DoubleFunction, st3, l66 {
    public final /* synthetic */ int b;

    public /* synthetic */ rg(int i) {
        this.b = i;
    }

    public static float b(float f, float f2, float f3, float f4) {
        return (f3 - (f * f2)) / f4;
    }

    public static int c(float f, int i, int i2) {
        return (Dp.m9048hashCodeimpl(f) + i) * i2;
    }

    public static int d(int i, int i2, int i3, int i4) {
        return zzfx.zzy(i) + i2 + i3 + i4;
    }

    public static String f(int i, int i2, String str) {
        return str.substring(i2, str.length() - i);
    }

    public static String g(String str, long j, char c) {
        return str + j + c;
    }

    public static String h(StringBuilder sb, int i, char c) {
        sb.append(i);
        sb.append(c);
        return sb.toString();
    }

    public static /* bridge */ /* synthetic */ boolean i(Object obj) {
        return obj instanceof DeleteGesture;
    }

    @Override // yads.l66
    /* JADX INFO: renamed from: a */
    public boolean mo9528a(Object obj) {
        Long l = (Long) obj;
        switch (this.b) {
            case 11:
                return ih2.a(l.longValue());
            default:
                return ni1.b(l.longValue());
        }
    }

    @Override // androidx.compose.ui.graphics.colorspace.DoubleFunction
    public double invoke(double d) {
        return ColorSpaces.Bt2020Hlg$lambda$1(d);
    }

    @Override // yads.st3
    public boolean a(List list) {
        return f61.a(list);
    }
}
