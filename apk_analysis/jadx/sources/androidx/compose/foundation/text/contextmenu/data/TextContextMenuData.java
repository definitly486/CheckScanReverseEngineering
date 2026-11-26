package androidx.compose.foundation.text.contextmenu.data;

import androidx.compose.ui.util.ListUtilsKt;
import defpackage.jh2;
import defpackage.kx2;
import defpackage.lt0;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class TextContextMenuData {
    private final List<TextContextMenuComponent> components;
    public static final Companion Companion = new Companion(null);
    public static final int $stable = 8;
    private static final TextContextMenuData Empty = new TextContextMenuData(kx2.b);

    /* JADX WARN: Multi-variable type inference failed */
    public TextContextMenuData(List<? extends TextContextMenuComponent> list) {
        this.components = list;
    }

    public final List<TextContextMenuComponent> getComponents() {
        return this.components;
    }

    public String toString() {
        return lt0.d(')', "TextContextMenuData(components=", ListUtilsKt.fastJoinToString$default(this.components, "\n\t", "[\n\t", "\n]", 0, null, null, 56, null));
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final TextContextMenuData getEmpty() {
            return TextContextMenuData.Empty;
        }

        private Companion() {
        }
    }
}
