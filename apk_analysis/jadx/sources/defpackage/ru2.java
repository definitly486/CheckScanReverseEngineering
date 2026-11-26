package defpackage;

import androidx.camera.video.internal.config.DynamicRangeFormatComboRegistry;
import androidx.compose.material3.RippleKt;
import androidx.compose.material3.SurfaceKt;
import androidx.compose.runtime.tooling.InspectionTablesKt;
import androidx.window.embedding.SafeActivityEmbeddingComponentProvider;
import yads.gf0;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class ru2 implements ll3 {
    public final /* synthetic */ int b;

    public /* synthetic */ ru2(int i) {
        this.b = i;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        switch (this.b) {
            case 0:
                return DynamicRangeFormatComboRegistry.registries_delegate$lambda$0();
            case 1:
                return InspectionTablesKt.LocalInspectionTables$lambda$0();
            case 2:
                return dd4.b;
            case 3:
                return RippleKt.LocalRippleConfiguration$lambda$0();
            case 4:
                return Boolean.valueOf(SafeActivityEmbeddingComponentProvider.isActivityStackGetTagValid$lambda$53());
            case 5:
                return SurfaceKt.LocalAbsoluteTonalElevation$lambda$3();
            default:
                return gf0.g();
        }
    }
}
