package defpackage;

import androidx.camera.lifecycle.LifecycleCameraProvider;
import androidx.camera.lifecycle.LifecycleCameraProviderImpl;
import androidx.compose.foundation.lazy.grid.LazyGridState;
import androidx.compose.foundation.text.AndroidCursorHandle_androidKt;
import androidx.compose.foundation.text.selection.OffsetProvider;
import androidx.compose.material3.RangeSliderState;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.sqlite.SQLiteConnection;
import androidx.work.impl.model.DependencyDao_Impl;
import yads.rx2;
import yads.vb5;
import yads.yb5;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class zh implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ zh(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return AndroidCursorHandle_androidKt.CursorHandle_USBMPiE$lambda$0$0((OffsetProvider) obj2, (SemanticsPropertyReceiver) obj);
            case 1:
                return DependencyDao_Impl.getPrerequisites$lambda$2("SELECT prerequisite_id FROM dependency WHERE work_spec_id=?", (String) obj2, (SQLiteConnection) obj);
            case 2:
                return Float.valueOf(LazyGridState.scrollableState$lambda$0((LazyGridState) obj2, ((Float) obj).floatValue()));
            case 3:
                return LifecycleCameraProvider.Companion.createInstanceAsync$lambda$0((LifecycleCameraProviderImpl) obj2, (Void) obj);
            case 4:
                return RangeSliderState.gestureEndAction$lambda$0((RangeSliderState) obj2, ((Boolean) obj).booleanValue());
            case 5:
                return rx2.a((rx2) obj2, ((Integer) obj).intValue());
            default:
                return vb5.a((nl3) obj2, (yb5) obj);
        }
    }
}
