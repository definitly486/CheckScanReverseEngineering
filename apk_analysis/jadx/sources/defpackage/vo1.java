package defpackage;

import androidx.camera.camera2.internal.HighSpeedResolver;
import androidx.compose.foundation.contextmenu.ContextMenuState;
import androidx.compose.foundation.gestures.ScrollableNode;
import androidx.compose.foundation.text.CommonContextMenuAreaKt;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.foundation.text.selection.TextFieldSelectionManagerKt;
import androidx.window.embedding.SafeActivityEmbeddingComponentProvider;
import androidx.work.Worker;
import yads.fo2;
import yads.kh;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class vo1 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ vo1(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                return CommonContextMenuAreaKt.CommonContextMenuArea$lambda$2$0((ContextMenuState) obj);
            case 1:
                return HighSpeedResolver.streamConfigurationMapCompat_delegate$lambda$0((HighSpeedResolver) obj);
            case 2:
                return Boolean.valueOf(SafeActivityEmbeddingComponentProvider.isMethodSetSplitInfoCallbackWindowConsumerValid$lambda$13((SafeActivityEmbeddingComponentProvider) obj));
            case 3:
                return Boolean.valueOf(((ScrollableNode) obj).isAttached());
            case 4:
                return TextFieldSelectionManagerKt.contextMenuBuilder$lambda$0$4((TextFieldSelectionManager) obj);
            case 5:
                return ((Worker) obj).getForegroundInfo();
            case 6:
                return fo2.a((fo2) obj);
            default:
                return kh.a((kh) obj);
        }
    }
}
