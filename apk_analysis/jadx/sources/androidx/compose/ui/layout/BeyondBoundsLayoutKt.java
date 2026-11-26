package androidx.compose.ui.layout;

import androidx.compose.ui.modifier.ModifierLocalKt;
import androidx.compose.ui.modifier.ProvidableModifierLocal;
import defpackage.ul2;

/* JADX INFO: loaded from: classes2.dex */
public final class BeyondBoundsLayoutKt {
    private static final ProvidableModifierLocal<BeyondBoundsLayout> ModifierLocalBeyondBoundsLayout = ModifierLocalKt.modifierLocalOf(BeyondBoundsLayoutKt$ModifierLocalBeyondBoundsLayout$1.INSTANCE);

    @ul2
    public static final ProvidableModifierLocal<BeyondBoundsLayout> getModifierLocalBeyondBoundsLayout() {
        return ModifierLocalBeyondBoundsLayout;
    }
}
