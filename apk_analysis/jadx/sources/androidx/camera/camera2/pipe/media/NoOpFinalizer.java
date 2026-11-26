package androidx.camera.camera2.pipe.media;

/* JADX INFO: loaded from: classes.dex */
public final class NoOpFinalizer implements Finalizer<Object> {
    public static final NoOpFinalizer INSTANCE = new NoOpFinalizer();

    private NoOpFinalizer() {
    }

    @Override // androidx.camera.camera2.pipe.media.Finalizer
    public void finalize(Object obj) {
    }
}
