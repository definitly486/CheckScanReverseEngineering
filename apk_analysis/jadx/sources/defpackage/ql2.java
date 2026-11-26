package defpackage;

import androidx.compose.animation.core.Transition;
import androidx.compose.animation.core.TransitionKt;
import androidx.compose.foundation.text.contextmenu.builder.TextContextMenuBuilderScope;
import androidx.compose.foundation.text.contextmenu.modifier.TextContextMenuModifierKt;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.sqlite.SQLiteConnection;
import androidx.work.impl.model.DependencyDao_Impl;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ql2 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ ql2(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return DependencyDao_Impl.getDependentWorkIds$lambda$3("SELECT work_spec_id FROM dependency WHERE prerequisite_id=?", (String) obj2, (SQLiteConnection) obj);
            case 1:
                return TextContextMenuModifierKt.collectTextContextMenuData$lambda$0$0((TextContextMenuBuilderScope) obj2, (nl3) obj);
            default:
                return TransitionKt.rememberTransition$lambda$3$0((Transition) obj2, (DisposableEffectScope) obj);
        }
    }
}
