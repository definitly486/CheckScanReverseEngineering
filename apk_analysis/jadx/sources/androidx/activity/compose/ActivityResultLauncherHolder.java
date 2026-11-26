package androidx.activity.compose;

import androidx.activity.result.ActivityResultLauncher;
import androidx.core.app.ActivityOptionsCompat;
import defpackage.ah;

/* JADX INFO: loaded from: classes.dex */
public final class ActivityResultLauncherHolder<I> {
    public static final int $stable = 8;
    private ActivityResultLauncher<I> launcher;

    public final ActivityResultLauncher<I> getLauncher() {
        return this.launcher;
    }

    public final void launch(I i, ActivityOptionsCompat activityOptionsCompat) {
        ActivityResultLauncher<I> activityResultLauncher = this.launcher;
        if (activityResultLauncher != null) {
            activityResultLauncher.launch(i, activityOptionsCompat);
        } else {
            ah.f("Launcher has not been initialized");
        }
    }

    public final void setLauncher(ActivityResultLauncher<I> activityResultLauncher) {
        this.launcher = activityResultLauncher;
    }

    public final void unregister() {
        ActivityResultLauncher<I> activityResultLauncher = this.launcher;
        if (activityResultLauncher != null) {
            activityResultLauncher.unregister();
        } else {
            ah.f("Launcher has not been initialized");
        }
    }
}
