package androidx.compose.ui.graphics;

import android.graphics.Shader;

/* JADX INFO: loaded from: classes2.dex */
final class TileModeVerificationHelper {
    public static final TileModeVerificationHelper INSTANCE = new TileModeVerificationHelper();

    private TileModeVerificationHelper() {
    }

    /* JADX INFO: renamed from: getComposeTileModeDecal-3opZhB0, reason: not valid java name */
    public final int m6631getComposeTileModeDecal3opZhB0() {
        return TileMode.Companion.m6628getDecal3opZhB0();
    }

    public final Shader.TileMode getFrameworkTileModeDecal() {
        return Shader.TileMode.DECAL;
    }
}
