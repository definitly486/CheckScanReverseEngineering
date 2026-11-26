package defpackage;

import androidx.compose.foundation.text.input.internal.InputMethodManagerImpl;
import androidx.compose.material3.SheetState;
import androidx.compose.ui.unit.Density;
import androidx.window.embedding.SafeActivityEmbeddingComponentProvider;
import yads.hc3;
import yads.pq0;
import yads.uw2;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class r54 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ r54(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                return InputMethodManagerImpl.imm_delegate$lambda$0((InputMethodManagerImpl) obj);
            case 1:
                return Boolean.valueOf(SafeActivityEmbeddingComponentProvider.isMethodGetEmbeddedActivityWindowInfoValid$lambda$39((SafeActivityEmbeddingComponentProvider) obj));
            case 2:
                return Float.valueOf(SheetState._init_$lambda$9((Density) obj));
            case 3:
                return hc3.a((mb4) obj);
            case 4:
                return pq0.a((pq0) obj);
            default:
                return uw2.a((uw2) obj);
        }
    }
}
