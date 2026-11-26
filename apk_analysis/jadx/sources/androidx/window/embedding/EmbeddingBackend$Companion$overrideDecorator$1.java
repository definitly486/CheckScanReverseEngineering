package androidx.window.embedding;

import defpackage.nl3;
import defpackage.qm3;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class EmbeddingBackend$Companion$overrideDecorator$1 extends qm3 implements nl3<EmbeddingBackend, EmbeddingBackend> {
    public EmbeddingBackend$Companion$overrideDecorator$1(Object obj) {
        super(1, obj, EmbeddingBackendDecorator.class, "decorate", "decorate(Landroidx/window/embedding/EmbeddingBackend;)Landroidx/window/embedding/EmbeddingBackend;", 0);
    }

    @Override // defpackage.nl3
    public final EmbeddingBackend invoke(EmbeddingBackend embeddingBackend) {
        embeddingBackend.getClass();
        return ((EmbeddingBackendDecorator) this.receiver).decorate(embeddingBackend);
    }
}
