package androidx.activity.compose;

import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContract;
import androidx.compose.runtime.State;
import androidx.core.app.ActivityOptionsCompat;
import defpackage.ul2;

/* JADX INFO: loaded from: classes.dex */
public final class ManagedActivityResultLauncher<I, O> extends ActivityResultLauncher<I> {
    public static final int $stable = 8;
    private final State<ActivityResultContract<I, O>> currentContract;
    private final ActivityResultLauncherHolder<I> launcher;

    /* JADX WARN: Multi-variable type inference failed */
    public ManagedActivityResultLauncher(ActivityResultLauncherHolder<I> activityResultLauncherHolder, State<? extends ActivityResultContract<I, O>> state) {
        this.launcher = activityResultLauncherHolder;
        this.currentContract = state;
    }

    @Override // androidx.activity.result.ActivityResultLauncher
    public ActivityResultContract<I, O> getContract() {
        return this.currentContract.getValue();
    }

    @Override // androidx.activity.result.ActivityResultLauncher
    public void launch(I i, ActivityOptionsCompat activityOptionsCompat) {
        this.launcher.launch(i, activityOptionsCompat);
    }

    @Override // androidx.activity.result.ActivityResultLauncher
    @ul2
    public void unregister() {
        throw new UnsupportedOperationException("Registration is automatically handled by rememberLauncherForActivityResult");
    }
}
