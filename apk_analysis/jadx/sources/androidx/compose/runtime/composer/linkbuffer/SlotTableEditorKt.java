package androidx.compose.runtime.composer.linkbuffer;

import androidx.compose.runtime.ComposeNodeLifecycleCallback;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RememberObserverHolder;
import androidx.compose.runtime.ReusableRememberObserverHolder;
import androidx.compose.runtime.composer.RememberManager;
import androidx.compose.runtime.tooling.ComposeStackTraceFrame;
import defpackage.kx2;
import defpackage.ml0;
import defpackage.qg2;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class SlotTableEditorKt {
    public static final List<ComposeStackTraceFrame> buildTrace(SlotTableEditor slotTableEditor, Object obj, int i) {
        return (slotTableEditor.isClosed() || slotTableEditor.isEmpty()) ? kx2.b : SlotTableAddresSpaceKt.buildTrace(slotTableEditor.getTable().getAddressSpace(), i, obj, new EditorTraceBuilder(slotTableEditor));
    }

    public static /* synthetic */ List buildTrace$default(SlotTableEditor slotTableEditor, Object obj, int i, int i2, Object obj2) {
        if ((i2 & 1) != 0) {
            obj = null;
        }
        if ((i2 & 2) != 0) {
            i = slotTableEditor.getCurrentGroup();
        }
        return buildTrace(slotTableEditor, obj, i);
    }

    public static final void deactivateGroup(SlotTableEditor slotTableEditor, RememberManager rememberManager) {
        slotTableEditor.visitSlotsInRememberOrder(slotTableEditor.getCurrentGroup(), new qg2(slotTableEditor, rememberManager));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean deactivateGroup$lambda$0(SlotTableEditor slotTableEditor, RememberManager rememberManager, int i, int i2, Object obj) {
        if (obj instanceof ComposeNodeLifecycleCallback) {
            slotTableEditor.flagsOf(i);
            if (i2 != 0) {
                return false;
            }
            rememberManager.deactivating((ComposeNodeLifecycleCallback) obj);
            return false;
        }
        if (obj instanceof ReusableRememberObserverHolder) {
            return false;
        }
        if (obj instanceof RememberObserverHolder) {
            rememberManager.forgetting((RememberObserverHolder) obj);
            return true;
        }
        if (!(obj instanceof RecomposeScopeImpl)) {
            return false;
        }
        ((RecomposeScopeImpl) obj).release();
        return true;
    }

    public static final void removeGroupAndForgetSlots(SlotTableEditor slotTableEditor, RememberManager rememberManager) {
        slotTableEditor.visitSlotsInRememberOrder(slotTableEditor.getCurrentGroup(), new ml0(rememberManager, 5));
        SlotTableEditor.removeGroup$default(slotTableEditor, false, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean removeGroupAndForgetSlots$lambda$0(RememberManager rememberManager, int i, int i2, Object obj) {
        if (obj instanceof ComposeNodeLifecycleCallback) {
            rememberManager.releasing((ComposeNodeLifecycleCallback) obj);
        }
        if (obj instanceof RememberObserverHolder) {
            rememberManager.forgetting((RememberObserverHolder) obj);
        }
        if (!(obj instanceof RecomposeScopeImpl)) {
            return false;
        }
        ((RecomposeScopeImpl) obj).release();
        return false;
    }
}
