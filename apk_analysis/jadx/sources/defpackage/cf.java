package defpackage;

import android.content.Context;
import androidx.compose.foundation.content.internal.ReceiveContentDragAndDropNode_androidKt;
import androidx.compose.material3.DatePickerKt;
import androidx.compose.material3.internal.AnchoredDraggableState;
import androidx.compose.ui.draganddrop.DragAndDropEvent;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.navigation.NavDeepLinkBuilder;
import yads.ja6;
import yads.sa1;
import yads.zl4;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class cf implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ cf(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                return Boolean.valueOf(AnchoredDraggableState._init_$lambda$1(obj));
            case 1:
                return DatePickerKt.SwitchableDateEntryContent_KaiTk9E$lambda$14$lambda$13((SemanticsPropertyReceiver) obj);
            case 2:
                return NavDeepLinkBuilder.activity$lambda$0((Context) obj);
            case 3:
                return Boolean.valueOf(ReceiveContentDragAndDropNode_androidKt.ReceiveContentDragAndDropNode$lambda$0((DragAndDropEvent) obj));
            case 4:
                return Boolean.valueOf(sa1.c(obj));
            default:
                return zl4.a((ja6) obj);
        }
    }
}
