package androidx.camera.camera2.pipe.media;

import androidx.camera.camera2.pipe.CameraPipe;
import androidx.camera.camera2.pipe.core.Threads;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class ImageReaderImageSources_Factory implements xs6 {
    private final xs6<CameraPipe.Config> cameraPipeConfigProvider;
    private final xs6<Threads> threadsProvider;

    private ImageReaderImageSources_Factory(xs6<Threads> xs6Var, xs6<CameraPipe.Config> xs6Var2) {
        this.threadsProvider = xs6Var;
        this.cameraPipeConfigProvider = xs6Var2;
    }

    public static ImageReaderImageSources_Factory create(xs6<Threads> xs6Var, xs6<CameraPipe.Config> xs6Var2) {
        return new ImageReaderImageSources_Factory(xs6Var, xs6Var2);
    }

    public static ImageReaderImageSources newInstance(Threads threads, CameraPipe.Config config) {
        return new ImageReaderImageSources(threads, config);
    }

    @Override // defpackage.ws6
    public ImageReaderImageSources get() {
        return newInstance(this.threadsProvider.get(), this.cameraPipeConfigProvider.get());
    }
}
