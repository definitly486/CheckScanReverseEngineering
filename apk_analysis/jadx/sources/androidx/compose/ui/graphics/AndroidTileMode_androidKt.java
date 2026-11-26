package androidx.compose.ui.graphics;

import android.graphics.Shader;
import android.os.Build;

/* JADX INFO: loaded from: classes2.dex */
public final class AndroidTileMode_androidKt {

    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Shader.TileMode.values().length];
            try {
                iArr[Shader.TileMode.CLAMP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Shader.TileMode.MIRROR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Shader.TileMode.REPEAT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: renamed from: isSupported-0vamqd0, reason: not valid java name */
    public static final boolean m6134isSupported0vamqd0(int i) {
        return Build.VERSION.SDK_INT >= 31 || !TileMode.m6623equalsimpl0(i, TileMode.Companion.m6628getDecal3opZhB0());
    }

    /* JADX INFO: renamed from: toAndroidTileMode-0vamqd0, reason: not valid java name */
    public static final Shader.TileMode m6135toAndroidTileMode0vamqd0(int i) {
        TileMode.Companion companion = TileMode.Companion;
        if (TileMode.m6623equalsimpl0(i, companion.m6627getClamp3opZhB0())) {
            return Shader.TileMode.CLAMP;
        }
        if (TileMode.m6623equalsimpl0(i, companion.m6630getRepeated3opZhB0())) {
            return Shader.TileMode.REPEAT;
        }
        if (TileMode.m6623equalsimpl0(i, companion.m6629getMirror3opZhB0())) {
            return Shader.TileMode.MIRROR;
        }
        if (TileMode.m6623equalsimpl0(i, companion.m6628getDecal3opZhB0()) && Build.VERSION.SDK_INT >= 31) {
            return TileModeVerificationHelper.INSTANCE.getFrameworkTileModeDecal();
        }
        return Shader.TileMode.CLAMP;
    }

    public static final int toComposeTileMode(Shader.TileMode tileMode) {
        int i = WhenMappings.$EnumSwitchMapping$0[tileMode.ordinal()];
        if (i == 1) {
            return TileMode.Companion.m6627getClamp3opZhB0();
        }
        if (i == 2) {
            return TileMode.Companion.m6629getMirror3opZhB0();
        }
        if (i != 3) {
            return (Build.VERSION.SDK_INT < 31 || tileMode != Shader.TileMode.DECAL) ? TileMode.Companion.m6627getClamp3opZhB0() : TileModeVerificationHelper.INSTANCE.m6631getComposeTileModeDecal3opZhB0();
        }
        return TileMode.Companion.m6630getRepeated3opZhB0();
    }
}
