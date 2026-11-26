package defpackage;

import androidx.camera.camera2.pipe.core.PruningProcessingQueue;
import androidx.compose.foundation.lazy.LazyListIntervalContent;
import androidx.compose.foundation.text.selection.SelectionManager;
import androidx.compose.ui.focus.FocusState;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class en4 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ en4(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return LazyListIntervalContent.item$lambda$1(obj2, ((Integer) obj).intValue());
            case 1:
                return PruningProcessingQueue.channel$lambda$0((PruningProcessingQueue) obj2, obj);
            default:
                return SelectionManager._get_modifier_$lambda$2((SelectionManager) obj2, (FocusState) obj);
        }
    }
}
