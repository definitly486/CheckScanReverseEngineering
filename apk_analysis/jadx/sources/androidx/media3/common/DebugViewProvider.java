package androidx.media3.common;

import android.view.SurfaceView;
import defpackage.dd2;

/* JADX INFO: loaded from: classes3.dex */
public interface DebugViewProvider {
    public static final DebugViewProvider NONE = new dd2();

    /* JADX INFO: Access modifiers changed from: private */
    static /* synthetic */ SurfaceView lambda$static$0(int i, int i2) {
        return null;
    }

    SurfaceView getDebugPreviewSurfaceView(int i, int i2);
}
