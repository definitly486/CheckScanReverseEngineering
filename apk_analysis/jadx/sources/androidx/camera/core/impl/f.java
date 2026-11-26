package androidx.camera.core.impl;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class f implements UseCaseAttachState.AttachStateFilter {
    @Override // androidx.camera.core.impl.UseCaseAttachState.AttachStateFilter
    public final boolean filter(UseCaseAttachState.UseCaseAttachInfo useCaseAttachInfo) {
        return useCaseAttachInfo.getAttached();
    }
}
