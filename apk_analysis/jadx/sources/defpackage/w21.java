package defpackage;

import androidx.compose.foundation.contextmenu.ContextMenuState;
import androidx.compose.foundation.lazy.grid.LazyGridItemProviderKt;
import androidx.compose.foundation.text.CommonContextMenuAreaKt;
import androidx.compose.foundation.text.modifiers.TextAnnotatedStringNode;
import androidx.compose.runtime.State;
import androidx.navigation.NavBackStackEntry;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.utils.CancelWorkRunnable;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class w21 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ w21(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                return CancelWorkRunnable.forAll$lambda$7((WorkManagerImpl) obj);
            case 1:
                return CommonContextMenuAreaKt.CommonContextMenuArea$lambda$13$0((ContextMenuState) obj);
            case 2:
                return LazyGridItemProviderKt.rememberLazyGridItemProviderLambda$lambda$0$0((State) obj);
            case 3:
                return NavBackStackEntry.savedStateHandle_delegate$lambda$0((NavBackStackEntry) obj);
            default:
                return Boolean.valueOf(TextAnnotatedStringNode.applySemantics$lambda$3((TextAnnotatedStringNode) obj));
        }
    }
}
