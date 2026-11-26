package androidx.compose.foundation.text.contextmenu.modifier;

import androidx.compose.foundation.text.contextmenu.builder.TextContextMenuBuilderScope;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuComponent;
import defpackage.j59;
import defpackage.nl3;
import defpackage.qm3;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class TextContextMenuModifierKt$collectTextContextMenuData$1$1 extends qm3 implements nl3<nl3<? super TextContextMenuComponent, ? extends Boolean>, j59> {
    public TextContextMenuModifierKt$collectTextContextMenuData$1$1(Object obj) {
        super(1, obj, TextContextMenuBuilderScope.class, "addFilter", "addFilter$foundation(Lkotlin/jvm/functions/Function1;)V", 0);
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ j59 invoke(nl3<? super TextContextMenuComponent, ? extends Boolean> nl3Var) {
        invoke2((nl3<? super TextContextMenuComponent, Boolean>) nl3Var);
        return j59.a;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(nl3<? super TextContextMenuComponent, Boolean> nl3Var) {
        ((TextContextMenuBuilderScope) this.receiver).addFilter$foundation(nl3Var);
    }
}
