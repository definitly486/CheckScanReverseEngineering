package defpackage;

import androidx.camera.camera2.adapter.SessionConfigAdapter;
import androidx.camera.video.internal.muxer.Media3MuxerImpl;
import androidx.compose.foundation.text.input.internal.TextFieldDecoratorModifierNode;
import androidx.compose.material3.DragHandleKt;
import androidx.compose.runtime.MutableState;
import androidx.window.core.Version;
import androidx.window.embedding.SafeActivityEmbeddingComponentProvider;
import yads.nq0;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class or2 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ or2(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                return DragHandleKt.VerticalDragHandle$lambda$8$lambda$7((MutableState) obj);
            case 1:
                return Media3MuxerImpl.start$lambda$1((Media3MuxerImpl) obj);
            case 2:
                return Boolean.valueOf(SafeActivityEmbeddingComponentProvider.isMethodUnregisterActivityStackCallbackValid$lambda$31((SafeActivityEmbeddingComponentProvider) obj));
            case 3:
                return SessionConfigAdapter.surfaceToStreamUseCaseMap_delegate$lambda$0((SessionConfigAdapter) obj);
            case 4:
                return Boolean.valueOf(TextFieldDecoratorModifierNode.applySemantics$lambda$10((TextFieldDecoratorModifierNode) obj));
            case 5:
                return Version.bigInteger_delegate$lambda$0((Version) obj);
            default:
                return nq0.n0((nq0) obj);
        }
    }
}
