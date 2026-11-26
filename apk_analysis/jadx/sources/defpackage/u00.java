package defpackage;

import androidx.camera.video.internal.config.DynamicRangeFormatComboRegistry;
import androidx.camera.video.internal.config.FormatComboRegistry;
import androidx.compose.animation.core.AnimationVector2D;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.foundation.layout.WindowInsetsHolder;
import androidx.compose.material3.BadgeKt;
import androidx.compose.runtime.snapshots.SnapshotIdSet;
import androidx.compose.runtime.snapshots.SnapshotKt;
import androidx.compose.ui.layout.RulerScope;
import androidx.compose.ui.text.SaversKt;
import yads.aj1;
import yads.gf0;
import yads.ux0;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class u00 implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ u00(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                return BadgeKt.badgeBounds$lambda$7$lambda$5((RulerScope) obj);
            case 1:
                o22.a aVar = (o22.a) obj;
                if (aVar instanceof r22) {
                    return (r22) aVar;
                }
                return null;
            case 2:
                return DynamicRangeFormatComboRegistry.buildDolbyVisionRegistry$lambda$0$0((FormatComboRegistry.Builder.ContainerScope) obj);
            case 3:
                return SaversKt.OffsetSaver$lambda$1(obj);
            case 4:
                zo7 zo7Var = (zo7) obj;
                zo7Var.getClass();
                return zo7Var.iterator();
            case 5:
                return SnapshotKt.emptyLambda$lambda$0((SnapshotIdSet) obj);
            case 6:
                return VectorConvertersKt.IntSizeToVector$lambda$1((AnimationVector2D) obj);
            case 7:
                return ((WindowInsetsHolder) obj).getSafeGestures();
            case 8:
                return aj1.a((String) obj);
            case 9:
                return gf0.a((dc4) obj);
            default:
                return Boolean.valueOf(ux0.a(obj));
        }
    }
}
