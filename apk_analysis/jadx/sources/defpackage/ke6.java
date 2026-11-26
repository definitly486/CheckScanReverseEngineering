package defpackage;

import androidx.camera.core.impl.CameraConfig;
import androidx.camera.extensions.internal.compat.workaround.PostviewFormatValidator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ke6 implements CameraConfig.PostviewFormatSelector {
    @Override // androidx.camera.core.impl.CameraConfig.PostviewFormatSelector
    public final int select(int i, List list) {
        return PostviewFormatValidator.getPostviewFormatSelector$lambda$0$0(i, list);
    }
}
