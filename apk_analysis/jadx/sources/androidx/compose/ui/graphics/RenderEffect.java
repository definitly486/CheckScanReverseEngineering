package androidx.compose.ui.graphics;

import android.os.Build;
import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public abstract class RenderEffect {
    public static final int $stable = 0;
    private android.graphics.RenderEffect internalRenderEffect;

    public /* synthetic */ RenderEffect(jh2 jh2Var) {
        this();
    }

    public final android.graphics.RenderEffect asAndroidRenderEffect() {
        android.graphics.RenderEffect renderEffect = this.internalRenderEffect;
        if (renderEffect != null) {
            return renderEffect;
        }
        android.graphics.RenderEffect renderEffectCreateRenderEffect = createRenderEffect();
        this.internalRenderEffect = renderEffectCreateRenderEffect;
        return renderEffectCreateRenderEffect;
    }

    public abstract android.graphics.RenderEffect createRenderEffect();

    public boolean isSupported() {
        return Build.VERSION.SDK_INT >= 31;
    }

    private RenderEffect() {
    }
}
