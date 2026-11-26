package defpackage;

import androidx.camera.core.impl.utils.MappingRedirectableLiveData;
import androidx.compose.foundation.BasicTooltipKt;
import androidx.compose.foundation.BasicTooltipState;
import androidx.compose.foundation.text.LegacyTextFieldState;
import androidx.compose.foundation.text.modifiers.TextAnnotatedStringNode;
import androidx.compose.material3.NavigationDrawerKt;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.snapshots.SnapshotStateObserver;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.input.ImeAction;
import yads.bt0;
import yads.kv1;
import yads.n8;
import yads.rg2;
import yads.yl0;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class rh0 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ rh0(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return BasicTooltipKt.BasicTooltipBox$lambda$1$0((BasicTooltipState) obj2, (DisposableEffectScope) obj);
            case 1:
                return LegacyTextFieldState.onImeActionPerformed$lambda$0((LegacyTextFieldState) obj2, (ImeAction) obj);
            case 2:
                return MappingRedirectableLiveData.redirectTo$lambda$0$0((MappingRedirectableLiveData) obj2, obj);
            case 3:
                return NavigationDrawerKt.PermanentDrawerSheet_afqeVBk$lambda$48$lambda$47((String) obj2, (SemanticsPropertyReceiver) obj);
            case 4:
                return SnapshotStateObserver.readObserver$lambda$0((SnapshotStateObserver) obj2, obj);
            case 5:
                return Boolean.valueOf(TextAnnotatedStringNode.applySemantics$lambda$1((TextAnnotatedStringNode) obj2, (AnnotatedString) obj));
            case 6:
                return bt0.d((xo9) obj2, obj);
            case 7:
                return rg2.a((kv1) obj2, ((Boolean) obj).booleanValue());
            default:
                return yl0.a((bm3[]) obj2, (n8) obj);
        }
    }
}
