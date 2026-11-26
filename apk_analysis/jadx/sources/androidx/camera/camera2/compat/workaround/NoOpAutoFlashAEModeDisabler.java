package androidx.camera.camera2.compat.workaround;

/* JADX INFO: loaded from: classes.dex */
public final class NoOpAutoFlashAEModeDisabler implements AutoFlashAEModeDisabler {
    public static final NoOpAutoFlashAEModeDisabler INSTANCE = new NoOpAutoFlashAEModeDisabler();

    private NoOpAutoFlashAEModeDisabler() {
    }

    @Override // androidx.camera.camera2.compat.workaround.AutoFlashAEModeDisabler
    public int getCorrectedAeMode(int i) {
        return i;
    }
}
