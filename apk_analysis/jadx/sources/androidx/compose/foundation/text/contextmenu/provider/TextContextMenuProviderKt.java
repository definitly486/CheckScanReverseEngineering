package androidx.compose.foundation.text.contextmenu.provider;

import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import defpackage.fr2;
import defpackage.ju1;

/* JADX INFO: loaded from: classes.dex */
public final class TextContextMenuProviderKt {
    private static final ProvidableCompositionLocal<TextContextMenuProvider> LocalTextContextMenuDropdownProvider = CompositionLocalKt.compositionLocalOf$default(null, new fr2(3), 1, null);
    private static final ProvidableCompositionLocal<TextContextMenuProvider> LocalTextContextMenuToolbarProvider = CompositionLocalKt.compositionLocalOf$default(null, new ju1(3), 1, null);

    /* JADX INFO: Access modifiers changed from: private */
    public static final TextContextMenuProvider LocalTextContextMenuDropdownProvider$lambda$0() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final TextContextMenuProvider LocalTextContextMenuToolbarProvider$lambda$0() {
        return null;
    }

    public static final ProvidableCompositionLocal<TextContextMenuProvider> getLocalTextContextMenuDropdownProvider() {
        return LocalTextContextMenuDropdownProvider;
    }

    public static final ProvidableCompositionLocal<TextContextMenuProvider> getLocalTextContextMenuToolbarProvider() {
        return LocalTextContextMenuToolbarProvider;
    }
}
