package androidx.compose.ui.draganddrop;

import android.content.ClipDescription;
import android.view.DragEvent;
import androidx.compose.ui.geometry.Offset;
import androidx.media3.muxer.MuxerUtil;
import defpackage.ir7;
import defpackage.l1;
import defpackage.ox2;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public final class DragAndDrop_androidKt {
    public static final long getPositionInRoot(DragAndDropEvent dragAndDropEvent) {
        float x = dragAndDropEvent.getDragEvent$ui().getX();
        float y = dragAndDropEvent.getDragEvent$ui().getY();
        return Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(x)) << 32) | (((long) Float.floatToRawIntBits(y)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    public static final Set<String> mimeTypes(DragAndDropEvent dragAndDropEvent) {
        ClipDescription clipDescription = dragAndDropEvent.getDragEvent$ui().getClipDescription();
        if (clipDescription == null) {
            return ox2.b;
        }
        ir7 ir7Var = new ir7(clipDescription.getMimeTypeCount());
        int mimeTypeCount = clipDescription.getMimeTypeCount();
        for (int i = 0; i < mimeTypeCount; i++) {
            ir7Var.add(clipDescription.getMimeType(i));
        }
        return l1.d(ir7Var);
    }

    public static final DragEvent toAndroidDragEvent(DragAndDropEvent dragAndDropEvent) {
        return dragAndDropEvent.getDragEvent$ui();
    }
}
