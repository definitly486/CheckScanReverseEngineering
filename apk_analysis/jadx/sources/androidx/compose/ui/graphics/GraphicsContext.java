package androidx.compose.ui.graphics;

import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.graphics.shadow.PlatformShadowContext;
import androidx.compose.ui.graphics.shadow.ShadowContext;

/* JADX INFO: loaded from: classes2.dex */
public interface GraphicsContext {
    GraphicsLayer createGraphicsLayer();

    default ShadowContext getShadowContext() {
        return new PlatformShadowContext() { // from class: androidx.compose.ui.graphics.GraphicsContext$shadowContext$1
        };
    }

    void releaseGraphicsLayer(GraphicsLayer graphicsLayer);
}
