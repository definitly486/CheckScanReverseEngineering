package androidx.compose.material3.internal;

import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.StrokeCap;
import androidx.compose.ui.graphics.StrokeJoin;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.graphics.vector.PathBuilder;
import androidx.compose.ui.graphics.vector.VectorKt;
import androidx.compose.ui.unit.Dp;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class IconsKt {
    private static final float MaterialIconDimension = 24.0f;

    private static final ImageVector materialIcon(String str, nl3<? super ImageVector.Builder, ImageVector.Builder> nl3Var) {
        return nl3Var.invoke(new ImageVector.Builder(str, Dp.m9042constructorimpl(MaterialIconDimension), Dp.m9042constructorimpl(MaterialIconDimension), MaterialIconDimension, MaterialIconDimension, 0L, 0, false, 224, null)).build();
    }

    public static /* synthetic */ ImageVector materialIcon$default(String str, boolean z, nl3 nl3Var, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return ((ImageVector.Builder) nl3Var.invoke(new ImageVector.Builder(str, Dp.m9042constructorimpl(MaterialIconDimension), Dp.m9042constructorimpl(MaterialIconDimension), MaterialIconDimension, MaterialIconDimension, 0L, 0, z, 96, null))).build();
    }

    /* JADX INFO: renamed from: materialPath-YwgOQQI, reason: not valid java name */
    private static final ImageVector.Builder m4378materialPathYwgOQQI(ImageVector.Builder builder, float f, float f2, int i, nl3<? super PathBuilder, j59> nl3Var) {
        SolidColor solidColor = new SolidColor(Color.Companion.m6258getBlack0d7_KjU(), null);
        int iM6606getButtKaPHkGw = StrokeCap.Companion.m6606getButtKaPHkGw();
        int iM6616getBevelLxFBmk8 = StrokeJoin.Companion.m6616getBevelLxFBmk8();
        PathBuilder pathBuilder = new PathBuilder();
        nl3Var.invoke(pathBuilder);
        return ImageVector.Builder.m6963addPathoIyEayM$default(builder, pathBuilder.getNodes(), i, "", solidColor, f, null, f2, 1.0f, iM6606getButtKaPHkGw, iM6616getBevelLxFBmk8, 1.0f, 0.0f, 0.0f, 0.0f, 14336, null);
    }

    /* JADX INFO: renamed from: materialPath-YwgOQQI$default, reason: not valid java name */
    public static /* synthetic */ ImageVector.Builder m4379materialPathYwgOQQI$default(ImageVector.Builder builder, float f, float f2, int i, nl3 nl3Var, int i2, Object obj) {
        float f3 = (i2 & 1) != 0 ? 1.0f : f;
        float f4 = (i2 & 2) != 0 ? 1.0f : f2;
        int defaultFillType = (i2 & 4) != 0 ? VectorKt.getDefaultFillType() : i;
        SolidColor solidColor = new SolidColor(Color.Companion.m6258getBlack0d7_KjU(), null);
        int iM6606getButtKaPHkGw = StrokeCap.Companion.m6606getButtKaPHkGw();
        int iM6616getBevelLxFBmk8 = StrokeJoin.Companion.m6616getBevelLxFBmk8();
        PathBuilder pathBuilder = new PathBuilder();
        nl3Var.invoke(pathBuilder);
        return ImageVector.Builder.m6963addPathoIyEayM$default(builder, pathBuilder.getNodes(), defaultFillType, "", solidColor, f3, null, f4, 1.0f, iM6606getButtKaPHkGw, iM6616getBevelLxFBmk8, 1.0f, 0.0f, 0.0f, 0.0f, 14336, null);
    }

    private static final ImageVector materialIcon(String str, boolean z, nl3<? super ImageVector.Builder, ImageVector.Builder> nl3Var) {
        return nl3Var.invoke(new ImageVector.Builder(str, Dp.m9042constructorimpl(MaterialIconDimension), Dp.m9042constructorimpl(MaterialIconDimension), MaterialIconDimension, MaterialIconDimension, 0L, 0, z, 96, null)).build();
    }
}
