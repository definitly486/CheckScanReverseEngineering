package androidx.compose.foundation.text.contextmenu.internal;

import androidx.compose.foundation.text.contextmenu.data.TextContextMenuData;
import androidx.compose.foundation.text.contextmenu.provider.TextContextMenuDataProvider;
import defpackage.ll3;
import defpackage.qm3;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class DefaultTextContextMenuDropdownProvider_androidKt$OpenContextMenu$2$data$2$1 extends qm3 implements ll3<TextContextMenuData> {
    public DefaultTextContextMenuDropdownProvider_androidKt$OpenContextMenu$2$data$2$1(Object obj) {
        super(0, obj, TextContextMenuDataProvider.class, "data", "data()Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;", 0);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // defpackage.ll3
    public final TextContextMenuData invoke() {
        return ((TextContextMenuDataProvider) this.receiver).data();
    }
}
