package androidx.paging;

/* JADX INFO: loaded from: classes3.dex */
public final class PageFetcherSnapshotKt {
    public static final boolean shouldPrioritizeOver(GenerationalViewportHint generationalViewportHint, GenerationalViewportHint generationalViewportHint2, LoadType loadType) {
        generationalViewportHint.getClass();
        generationalViewportHint2.getClass();
        loadType.getClass();
        if (generationalViewportHint.getGenerationId() > generationalViewportHint2.getGenerationId()) {
            return true;
        }
        if (generationalViewportHint.getGenerationId() < generationalViewportHint2.getGenerationId()) {
            return false;
        }
        return HintHandlerKt.shouldPrioritizeOver(generationalViewportHint.getHint(), generationalViewportHint2.getHint(), loadType);
    }
}
