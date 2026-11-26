package androidx.compose.foundation.text.contextmenu.builder;

import android.view.textclassifier.TextClassification;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuItem;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuSession;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuTextClassificationItem;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public final class TextContextMenuBuilderScope_androidKt {
    public static final void item(TextContextMenuBuilderScope textContextMenuBuilderScope, Object obj, String str, int i, nl3<? super TextContextMenuSession, j59> nl3Var) {
        textContextMenuBuilderScope.addComponent$foundation(new TextContextMenuItem(obj, str, i, nl3Var));
    }

    public static /* synthetic */ void item$default(TextContextMenuBuilderScope textContextMenuBuilderScope, Object obj, String str, int i, nl3 nl3Var, int i2, Object obj2) {
        if ((i2 & 4) != 0) {
            i = 0;
        }
        item(textContextMenuBuilderScope, obj, str, i, nl3Var);
    }

    public static final void textClassificationItem(TextContextMenuBuilderScope textContextMenuBuilderScope, Object obj, TextClassification textClassification, int i) {
        textContextMenuBuilderScope.addComponent$foundation(new TextContextMenuTextClassificationItem(obj, textClassification, i));
    }
}
