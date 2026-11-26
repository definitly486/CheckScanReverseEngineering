package defpackage;

import androidx.window.embedding.SafeActivityEmbeddingComponentProvider;
import yads.m24;
import yads.nq0;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class jb7 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ jb7(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                return Boolean.valueOf(SafeActivityEmbeddingComponentProvider.isMethodGetParentContainerInfoValid$lambda$56((SafeActivityEmbeddingComponentProvider) obj));
            case 1:
                return m24.a((m24) obj);
            default:
                return nq0.g0((nq0) obj);
        }
    }
}
