package androidx.compose.foundation.text.contextmenu.modifier;

import android.content.Context;
import androidx.compose.foundation.text.contextmenu.builder.TextContextMenuBuilderScope;
import androidx.compose.ui.Modifier;
import defpackage.bm3;
import defpackage.j59;

/* JADX INFO: loaded from: classes.dex */
public final class TextContextMenuModifier_androidKt {
    public static final Modifier addTextContextMenuComponentsWithContext(Modifier modifier, bm3<? super TextContextMenuBuilderScope, ? super Context, j59> bm3Var) {
        return modifier.then(new AddTextContextMenuDataComponentsWithContextElement(bm3Var));
    }
}
