package defpackage;

import androidx.activity.result.ActivityResultCallerLauncher;
import androidx.camera.camera2.config.UseCaseGraphContext;
import androidx.compose.foundation.AbstractClickableNode;
import androidx.compose.foundation.layout.FlowColumnOverflowScopeImpl;
import androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState;
import androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState_androidKt;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.navigation.internal.NavControllerImpl;
import androidx.window.SafeWindowExtensionsProvider;
import androidx.work.impl.WorkDatabase_Impl;
import yads.nq0;
import yads.vq0;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class q implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ q(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        boolean z;
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                return AbstractClickableNode.onObservedReadsChanged$lambda$0((AbstractClickableNode) obj);
            case 1:
                return ActivityResultCallerLauncher.resultContract_delegate$lambda$0((ActivityResultCallerLauncher) obj);
            case 2:
                return Integer.valueOf(FlowColumnOverflowScopeImpl.shownItemCount_delegate$lambda$0((FlowColumnOverflowScopeImpl) obj));
            case 3:
                return NavControllerImpl.pop$lambda$6((ll3) obj);
            case 4:
                od6 od6Var = (od6) obj;
                try {
                    AndroidComposeView.Companion companion = AndroidComposeView.Companion;
                    z = true;
                } catch (Throwable th) {
                    sg.f("Compose not available: ", th, '.', od6Var.c.v);
                    z = false;
                }
                return Boolean.valueOf(z);
            case 5:
                return Boolean.valueOf(SafeWindowExtensionsProvider.isWindowExtensionsValid$lambda$0((SafeWindowExtensionsProvider) obj));
            case 6:
                return TextFieldSelectionState_androidKt.addBasicTextFieldTextContextMenuComponents$lambda$0$2$0$2((TextFieldSelectionState) obj);
            case 7:
                return UseCaseGraphContext._graph$lambda$0((UseCaseGraphContext) obj);
            case 8:
                return WorkDatabase_Impl._workProgressDao$lambda$5((WorkDatabase_Impl) obj);
            case 9:
                return nq0.k0((nq0) obj);
            default:
                return vq0.b((vq0) obj);
        }
    }
}
