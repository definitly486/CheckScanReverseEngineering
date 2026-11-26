package defpackage;

import androidx.camera.video.internal.config.DynamicRangeFormatComboRegistry;
import androidx.camera.video.internal.config.FormatComboRegistry;
import androidx.compose.foundation.layout.WindowInsetsHolder;
import yads.fd1;
import yads.y41;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class uu2 implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ uu2(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                return DynamicRangeFormatComboRegistry.buildHdr10PlusRegistry$lambda$0$0((FormatComboRegistry.Builder.ContainerScope) obj);
            case 1:
                return ((WindowInsetsHolder) obj).getStatusBars();
            case 2:
                return fd1.a((String) obj);
            default:
                return y41.a((String) obj);
        }
    }
}
