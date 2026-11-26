package defpackage;

import androidx.camera.video.internal.config.DynamicRangeFormatComboRegistry;
import androidx.camera.video.internal.config.FormatComboRegistry;
import androidx.compose.material3.ChipKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.SaversKt;
import androidx.sqlite.SQLiteConnection;
import androidx.work.impl.model.WorkSpecDao_Impl;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class xi1 implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ xi1(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                return ChipKt.Chip_nkUnTEs$lambda$17$lambda$16((SemanticsPropertyReceiver) obj);
            case 1:
                return DynamicRangeFormatComboRegistry.buildSdrRegistry$lambda$0$1((FormatComboRegistry.Builder.ContainerScope) obj);
            case 2:
                return Boolean.valueOf(((Character) obj).charValue() == '-');
            case 3:
                return SaversKt.ClickableSaver$lambda$1(obj);
            case 4:
                return Boolean.valueOf(obj == null);
            default:
                return WorkSpecDao_Impl.getEligibleWorkForSchedulingWithContentUris$lambda$27("SELECT * FROM workspec WHERE state=0 AND schedule_requested_at=-1 AND LENGTH(content_uri_triggers)<>0 ORDER BY last_enqueue_time", (SQLiteConnection) obj);
        }
    }
}
