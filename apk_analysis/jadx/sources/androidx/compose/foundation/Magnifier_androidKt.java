package androidx.compose.foundation;

import android.os.Build;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.DpSize;
import defpackage.bm3;
import defpackage.j59;
import defpackage.jh2;
import defpackage.ll3;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public final class Magnifier_androidKt {
    private static final SemanticsPropertyKey<ll3<Offset>> MagnifierPositionInRoot = new SemanticsPropertyKey<>("MagnifierPositionInRoot", (bm3) null, 2, (jh2) (0 == true ? 1 : 0));

    public static final boolean equalsIncludingNaN(float f, float f2) {
        return (Float.isNaN(f) && Float.isNaN(f2)) || f == f2;
    }

    public static final SemanticsPropertyKey<ll3<Offset>> getMagnifierPositionInRoot() {
        return MagnifierPositionInRoot;
    }

    public static final boolean isPlatformMagnifierSupported(int i) {
        return i >= 28;
    }

    public static /* synthetic */ boolean isPlatformMagnifierSupported$default(int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = Build.VERSION.SDK_INT;
        }
        return isPlatformMagnifierSupported(i);
    }

    /* JADX INFO: renamed from: magnifier-UpNRX3w, reason: not valid java name */
    public static final Modifier m1355magnifierUpNRX3w(Modifier modifier, nl3<? super Density, Offset> nl3Var, nl3<? super Density, Offset> nl3Var2, nl3<? super DpSize, j59> nl3Var3, float f, long j, float f2, float f3, boolean z) {
        return m1358magnifierjPUL71Q$default(modifier, nl3Var, nl3Var2, nl3Var3, f, false, j, f2, f3, z, null, 512, null);
    }

    /* JADX INFO: renamed from: magnifier-UpNRX3w$default, reason: not valid java name */
    public static /* synthetic */ Modifier m1356magnifierUpNRX3w$default(Modifier modifier, nl3 nl3Var, nl3 nl3Var2, nl3 nl3Var3, float f, long j, float f2, float f3, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            nl3Var2 = null;
        }
        if ((i & 4) != 0) {
            nl3Var3 = null;
        }
        if ((i & 8) != 0) {
            f = Float.NaN;
        }
        if ((i & 16) != 0) {
            j = DpSize.Companion.m9149getUnspecifiedMYxV2XQ();
        }
        if ((i & 32) != 0) {
            f2 = Dp.Companion.m9062getUnspecifiedD9Ej5fM();
        }
        if ((i & 64) != 0) {
            f3 = Dp.Companion.m9062getUnspecifiedD9Ej5fM();
        }
        if ((i & 128) != 0) {
            z = true;
        }
        return m1355magnifierUpNRX3w(modifier, nl3Var, nl3Var2, nl3Var3, f, j, f2, f3, z);
    }

    /* JADX INFO: renamed from: magnifier-jPUL71Q, reason: not valid java name */
    public static final Modifier m1357magnifierjPUL71Q(Modifier modifier, nl3<? super Density, Offset> nl3Var, nl3<? super Density, Offset> nl3Var2, nl3<? super DpSize, j59> nl3Var3, float f, boolean z, long j, float f2, float f3, boolean z2, PlatformMagnifierFactory platformMagnifierFactory) {
        if (isPlatformMagnifierSupported$default(0, 1, null)) {
            return modifier.then(new MagnifierElement(nl3Var, nl3Var2, nl3Var3, f, z, j, f2, f3, z2, platformMagnifierFactory == null ? PlatformMagnifierFactory.Companion.getForCurrentPlatform() : platformMagnifierFactory, null));
        }
        return modifier;
    }

    /* JADX INFO: renamed from: magnifier-jPUL71Q$default, reason: not valid java name */
    public static /* synthetic */ Modifier m1358magnifierjPUL71Q$default(Modifier modifier, nl3 nl3Var, nl3 nl3Var2, nl3 nl3Var3, float f, boolean z, long j, float f2, float f3, boolean z2, PlatformMagnifierFactory platformMagnifierFactory, int i, Object obj) {
        if ((i & 2) != 0) {
            nl3Var2 = null;
        }
        if ((i & 4) != 0) {
            nl3Var3 = null;
        }
        if ((i & 8) != 0) {
            f = Float.NaN;
        }
        if ((i & 16) != 0) {
            z = false;
        }
        if ((i & 32) != 0) {
            j = DpSize.Companion.m9149getUnspecifiedMYxV2XQ();
        }
        if ((i & 64) != 0) {
            f2 = Dp.Companion.m9062getUnspecifiedD9Ej5fM();
        }
        if ((i & 128) != 0) {
            f3 = Dp.Companion.m9062getUnspecifiedD9Ej5fM();
        }
        if ((i & 256) != 0) {
            z2 = true;
        }
        if ((i & 512) != 0) {
            platformMagnifierFactory = null;
        }
        return m1357magnifierjPUL71Q(modifier, nl3Var, nl3Var2, nl3Var3, f, z, j, f2, f3, z2, platformMagnifierFactory);
    }
}
