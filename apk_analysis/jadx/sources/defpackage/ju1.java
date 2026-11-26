package defpackage;

import androidx.activity.ImmLeaksCleaner;
import androidx.compose.foundation.text.contextmenu.provider.TextContextMenuProviderKt;
import androidx.compose.runtime.tooling.CompositionErrorContextKt;
import yads.wq0;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ju1 implements ll3 {
    public final /* synthetic */ int b;

    public /* synthetic */ ju1(int i) {
        this.b = i;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        switch (this.b) {
            case 0:
                return CompositionErrorContextKt.LocalCompositionErrorContext$lambda$0();
            case 1:
                return j59.a;
            case 2:
                return ImmLeaksCleaner.cleaner_delegate$lambda$0();
            case 3:
                return TextContextMenuProviderKt.LocalTextContextMenuToolbarProvider$lambda$0();
            default:
                return wq0.d();
        }
    }
}
