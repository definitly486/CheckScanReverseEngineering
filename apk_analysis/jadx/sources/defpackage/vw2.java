package defpackage;

import androidx.window.embedding.EmbeddingCompat;
import androidx.window.embedding.EmbeddingInterfaceCompat;
import java.util.List;
import yads.e76;
import yads.w66;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class vw2 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ vw2(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.d;
        Object obj3 = this.c;
        switch (i) {
            case 0:
                return EmbeddingCompat.setEmbeddingCallback$lambda$0((EmbeddingInterfaceCompat.EmbeddingCallbackInterface) obj3, (EmbeddingCompat) obj2, (List) obj);
            default:
                return w66.a((w66) obj3, (e76) obj2, (String) obj);
        }
    }
}
