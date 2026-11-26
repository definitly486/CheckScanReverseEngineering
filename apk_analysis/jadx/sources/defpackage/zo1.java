package defpackage;

import androidx.compose.foundation.text.CommonContextMenuAreaKt;
import androidx.compose.foundation.text.TextContextMenuItems;
import androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.composer.RememberManager;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class zo1 implements bm3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ zo1(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        int i = this.b;
        Object obj3 = this.c;
        switch (i) {
            case 0:
                return CommonContextMenuAreaKt.CommonContextMenuArea$lambda$8$0((y22) obj3, (TextFieldSelectionState) obj, (TextContextMenuItems) obj2);
            default:
                return ComposerKt.removeCurrentGroup$lambda$0((RememberManager) obj3, ((Integer) obj).intValue(), obj2);
        }
    }
}
