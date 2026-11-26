package androidx.camera.extensions.internal.compat.workaround;

import androidx.camera.core.impl.CameraConfig;
import androidx.camera.core.impl.Quirk;
import androidx.camera.extensions.internal.compat.quirk.DeviceQuirks;
import androidx.camera.extensions.internal.compat.quirk.EnsurePostviewFormatEquivalenceQuirk;
import defpackage.ke6;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class PostviewFormatValidator {
    private final Quirk quirk = DeviceQuirks.get(EnsurePostviewFormatEquivalenceQuirk.class);

    /* JADX INFO: Access modifiers changed from: private */
    public static final int getPostviewFormatSelector$lambda$0$0(int i, List list) {
        list.getClass();
        if (list.contains(Integer.valueOf(i))) {
            return i;
        }
        return 0;
    }

    public final CameraConfig.PostviewFormatSelector getPostviewFormatSelector() {
        if (this.quirk != null) {
            return new ke6();
        }
        CameraConfig.PostviewFormatSelector postviewFormatSelector = CameraConfig.DEFAULT_POSTVIEW_FORMAT_SELECTOR;
        postviewFormatSelector.getClass();
        return postviewFormatSelector;
    }
}
