package androidx.compose.foundation.text.input.internal;

import android.content.ClipDescription;
import android.view.DragEvent;
import androidx.compose.foundation.content.MediaType;
import androidx.compose.ui.draganddrop.DragAndDropEvent;
import androidx.compose.ui.draganddrop.DragAndDropNodeKt;
import androidx.compose.ui.draganddrop.DragAndDropTarget;
import androidx.compose.ui.draganddrop.DragAndDropTargetModifierNode;
import androidx.compose.ui.draganddrop.DragAndDrop_androidKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.platform.AndroidClipboardManager_androidKt;
import androidx.compose.ui.platform.ClipEntry;
import androidx.compose.ui.platform.ClipMetadata;
import androidx.media3.muxer.MuxerUtil;
import defpackage.aa4;
import defpackage.bm3;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.un;
import java.util.Collection;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class TextFieldDragAndDropNode_androidKt {
    public static final DragAndDropTargetModifierNode textFieldDragAndDropNode(ll3<? extends Set<MediaType>> ll3Var, final bm3<? super ClipEntry, ? super ClipMetadata, Boolean> bm3Var, final nl3<? super DragAndDropEvent, j59> nl3Var, final nl3<? super DragAndDropEvent, j59> nl3Var2, final nl3<? super DragAndDropEvent, j59> nl3Var3, final nl3<? super Offset, j59> nl3Var4, final nl3<? super DragAndDropEvent, j59> nl3Var5, final nl3<? super DragAndDropEvent, j59> nl3Var6, final nl3<? super DragAndDropEvent, j59> nl3Var7) {
        return DragAndDropNodeKt.DragAndDropTargetModifierNode(new un(ll3Var, 3), new DragAndDropTarget() { // from class: androidx.compose.foundation.text.input.internal.TextFieldDragAndDropNode_androidKt.textFieldDragAndDropNode.2
            @Override // androidx.compose.ui.draganddrop.DragAndDropTarget
            public void onChanged(DragAndDropEvent dragAndDropEvent) {
                nl3<DragAndDropEvent, j59> nl3Var8 = nl3Var5;
                if (nl3Var8 != null) {
                    nl3Var8.invoke(dragAndDropEvent);
                }
            }

            @Override // androidx.compose.ui.draganddrop.DragAndDropTarget
            public boolean onDrop(DragAndDropEvent dragAndDropEvent) {
                nl3Var.invoke(dragAndDropEvent);
                return bm3Var.invoke(AndroidClipboardManager_androidKt.toClipEntry(DragAndDrop_androidKt.toAndroidDragEvent(dragAndDropEvent).getClipData()), AndroidClipboardManager_androidKt.toClipMetadata(DragAndDrop_androidKt.toAndroidDragEvent(dragAndDropEvent).getClipDescription())).booleanValue();
            }

            @Override // androidx.compose.ui.draganddrop.DragAndDropTarget
            public void onEnded(DragAndDropEvent dragAndDropEvent) {
                nl3<DragAndDropEvent, j59> nl3Var8 = nl3Var7;
                if (nl3Var8 != null) {
                    nl3Var8.invoke(dragAndDropEvent);
                }
            }

            @Override // androidx.compose.ui.draganddrop.DragAndDropTarget
            public void onEntered(DragAndDropEvent dragAndDropEvent) {
                nl3<DragAndDropEvent, j59> nl3Var8 = nl3Var3;
                if (nl3Var8 != null) {
                    nl3Var8.invoke(dragAndDropEvent);
                }
            }

            @Override // androidx.compose.ui.draganddrop.DragAndDropTarget
            public void onExited(DragAndDropEvent dragAndDropEvent) {
                nl3<DragAndDropEvent, j59> nl3Var8 = nl3Var6;
                if (nl3Var8 != null) {
                    nl3Var8.invoke(dragAndDropEvent);
                }
            }

            @Override // androidx.compose.ui.draganddrop.DragAndDropTarget
            public void onMoved(DragAndDropEvent dragAndDropEvent) {
                DragEvent androidDragEvent = DragAndDrop_androidKt.toAndroidDragEvent(dragAndDropEvent);
                nl3<Offset, j59> nl3Var8 = nl3Var4;
                if (nl3Var8 != null) {
                    float x = androidDragEvent.getX();
                    float y = androidDragEvent.getY();
                    nl3Var8.invoke(Offset.m5976boximpl(Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(x)) << 32) | (((long) Float.floatToRawIntBits(y)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE))));
                }
            }

            @Override // androidx.compose.ui.draganddrop.DragAndDropTarget
            public void onStarted(DragAndDropEvent dragAndDropEvent) {
                nl3<DragAndDropEvent, j59> nl3Var8 = nl3Var2;
                if (nl3Var8 != null) {
                    nl3Var8.invoke(dragAndDropEvent);
                }
            }
        });
    }

    public static /* synthetic */ DragAndDropTargetModifierNode textFieldDragAndDropNode$default(ll3 ll3Var, bm3 bm3Var, nl3 nl3Var, nl3 nl3Var2, nl3 nl3Var3, nl3 nl3Var4, nl3 nl3Var5, nl3 nl3Var6, nl3 nl3Var7, int i, Object obj) {
        if ((i & 8) != 0) {
            nl3Var2 = null;
        }
        if ((i & 16) != 0) {
            nl3Var3 = null;
        }
        if ((i & 32) != 0) {
            nl3Var4 = null;
        }
        if ((i & 64) != 0) {
            nl3Var5 = null;
        }
        if ((i & 128) != 0) {
            nl3Var6 = null;
        }
        if ((i & 256) != 0) {
            nl3Var7 = null;
        }
        return textFieldDragAndDropNode(ll3Var, bm3Var, nl3Var, nl3Var2, nl3Var3, nl3Var4, nl3Var5, nl3Var6, nl3Var7);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean textFieldDragAndDropNode$lambda$0(ll3 ll3Var, DragAndDropEvent dragAndDropEvent) {
        ClipDescription clipDescription = DragAndDrop_androidKt.toAndroidDragEvent(dragAndDropEvent).getClipDescription();
        Iterable<MediaType> iterable = (Iterable) ll3Var.invoke();
        if ((iterable instanceof Collection) && ((Collection) iterable).isEmpty()) {
            return false;
        }
        for (MediaType mediaType : iterable) {
            if (aa4.e(mediaType, MediaType.Companion.getAll()) || (clipDescription != null && clipDescription.hasMimeType(mediaType.getRepresentation()))) {
                return true;
            }
        }
        return false;
    }
}
