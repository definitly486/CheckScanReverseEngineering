package defpackage;

import android.content.Context;
import androidx.compose.foundation.draganddrop.CacheDrawScopeDragShadowCallback;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.lazy.layout.LazyLayoutCacheWindow;
import androidx.compose.foundation.text.contextmenu.internal.AndroidTextContextMenuToolbarProvider;
import androidx.compose.foundation.text.input.internal.CoreTextFieldSemanticsModifierNode;
import androidx.compose.runtime.MovableContentStateReference;
import androidx.compose.runtime.composer.gapbuffer.SlotTable;
import androidx.compose.ui.autofill.FillableData;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import java.util.List;
import yads.b05;
import yads.pj4;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class lk implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ lk(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return AndroidTextContextMenuToolbarProvider.snapshotStateObserver$lambda$0((AndroidTextContextMenuToolbarProvider) obj2, (ll3) obj);
            case 1:
                return CacheDrawScopeDragShadowCallback.cachePicture$lambda$0$1((CacheDrawScopeDragShadowCallback) obj2, (ContentDrawScope) obj);
            case 2:
                return Boolean.valueOf(CoreTextFieldSemanticsModifierNode.applySemantics$lambda$1((CoreTextFieldSemanticsModifierNode) obj2, (FillableData) obj));
            case 3:
                return LazyListState.Companion.saver$lambda$3((LazyLayoutCacheWindow) obj2, (List) obj);
            case 4:
                return SlotTable.extractNestedStates$lambda$1((SlotTable) obj2, (MovableContentStateReference) obj);
            default:
                return pj4.a((Context) obj2, (b05) obj);
        }
    }
}
