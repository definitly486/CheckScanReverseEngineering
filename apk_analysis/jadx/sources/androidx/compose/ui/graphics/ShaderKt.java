package androidx.compose.ui.graphics;

import android.graphics.Shader;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class ShaderKt {
    /* JADX INFO: renamed from: CompositeShader-7EN7VTw, reason: not valid java name */
    public static final Shader m6563CompositeShader7EN7VTw(Shader shader, Shader shader2, int i) {
        return AndroidShader_androidKt.m6129ActualCompositeShader7EN7VTw(shader, shader2, i);
    }

    /* JADX INFO: renamed from: ImageShader-F49vj9s, reason: not valid java name */
    public static final Shader m6564ImageShaderF49vj9s(ImageBitmap imageBitmap, int i, int i2) {
        return AndroidShader_androidKt.m6130ActualImageShaderF49vj9s(imageBitmap, i, i2);
    }

    /* JADX INFO: renamed from: ImageShader-F49vj9s$default, reason: not valid java name */
    public static /* synthetic */ Shader m6565ImageShaderF49vj9s$default(ImageBitmap imageBitmap, int i, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i = TileMode.Companion.m6627getClamp3opZhB0();
        }
        if ((i3 & 4) != 0) {
            i2 = TileMode.Companion.m6627getClamp3opZhB0();
        }
        return m6564ImageShaderF49vj9s(imageBitmap, i, i2);
    }

    /* JADX INFO: renamed from: LinearGradientShader-VjE6UOU, reason: not valid java name */
    public static final Shader m6566LinearGradientShaderVjE6UOU(long j, long j2, List<Color> list, List<Float> list2, int i) {
        return AndroidShader_androidKt.m6131ActualLinearGradientShaderVjE6UOU(j, j2, list, list2, i);
    }

    /* JADX INFO: renamed from: LinearGradientShader-VjE6UOU$default, reason: not valid java name */
    public static /* synthetic */ Shader m6567LinearGradientShaderVjE6UOU$default(long j, long j2, List list, List list2, int i, int i2, Object obj) {
        if ((i2 & 8) != 0) {
            list2 = null;
        }
        List list3 = list2;
        if ((i2 & 16) != 0) {
            i = TileMode.Companion.m6627getClamp3opZhB0();
        }
        return m6566LinearGradientShaderVjE6UOU(j, j2, list, list3, i);
    }

    /* JADX INFO: renamed from: RadialGradientShader-8uybcMk, reason: not valid java name */
    public static final Shader m6568RadialGradientShader8uybcMk(long j, float f, List<Color> list, List<Float> list2, int i) {
        return AndroidShader_androidKt.m6132ActualRadialGradientShader8uybcMk(j, f, list, list2, i);
    }

    /* JADX INFO: renamed from: RadialGradientShader-8uybcMk$default, reason: not valid java name */
    public static /* synthetic */ Shader m6569RadialGradientShader8uybcMk$default(long j, float f, List list, List list2, int i, int i2, Object obj) {
        if ((i2 & 8) != 0) {
            list2 = null;
        }
        List list3 = list2;
        if ((i2 & 16) != 0) {
            i = TileMode.Companion.m6627getClamp3opZhB0();
        }
        return m6568RadialGradientShader8uybcMk(j, f, list, list3, i);
    }

    /* JADX INFO: renamed from: SweepGradientShader-9KIMszo, reason: not valid java name */
    public static final Shader m6570SweepGradientShader9KIMszo(long j, List<Color> list, List<Float> list2) {
        return AndroidShader_androidKt.m6133ActualSweepGradientShader9KIMszo(j, list, list2);
    }

    /* JADX INFO: renamed from: SweepGradientShader-9KIMszo$default, reason: not valid java name */
    public static /* synthetic */ Shader m6571SweepGradientShader9KIMszo$default(long j, List list, List list2, int i, Object obj) {
        if ((i & 4) != 0) {
            list2 = null;
        }
        return m6570SweepGradientShader9KIMszo(j, list, list2);
    }
}
