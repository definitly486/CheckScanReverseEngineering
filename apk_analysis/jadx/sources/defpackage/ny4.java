package defpackage;

import androidx.compose.foundation.MagnifierNode;
import androidx.window.embedding.SafeActivityEmbeddingComponentProvider;
import com.google.firebase.sessions.ProcessDataManagerImpl;
import yads.e42;
import yads.te;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ny4 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ ny4(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                return MagnifierNode.getAnchorPositionInRoot_F1C5BW0$lambda$0((MagnifierNode) obj);
            case 1:
                return ProcessDataManagerImpl.myProcessName_delegate$lambda$0((ProcessDataManagerImpl) obj);
            case 2:
                return Boolean.valueOf(SafeActivityEmbeddingComponentProvider.isMethodUpdateSplitAttributesValid$lambda$27((SafeActivityEmbeddingComponentProvider) obj));
            default:
                return e42.e((te) obj);
        }
    }
}
