package androidx.camera.camera2.pipe.config;

import androidx.camera.camera2.pipe.CameraPipe;
import androidx.camera.camera2.pipe.media.ImageReaderImageSources;
import androidx.camera.camera2.pipe.media.ImageSources;
import defpackage.te6;
import defpackage.xs6;

/* JADX INFO: loaded from: classes.dex */
public final class CameraPipeModule_Companion_ConfigureImageSourcesFactory implements xs6 {
    private final xs6<CameraPipe.Config> cameraPipeConfigProvider;
    private final xs6<ImageReaderImageSources> imageReaderImageSourcesProvider;

    private CameraPipeModule_Companion_ConfigureImageSourcesFactory(xs6<ImageReaderImageSources> xs6Var, xs6<CameraPipe.Config> xs6Var2) {
        this.imageReaderImageSourcesProvider = xs6Var;
        this.cameraPipeConfigProvider = xs6Var2;
    }

    public static ImageSources configureImageSources(ImageReaderImageSources imageReaderImageSources, CameraPipe.Config config) {
        ImageSources imageSourcesConfigureImageSources = CameraPipeModule.Companion.configureImageSources(imageReaderImageSources, config);
        te6.b(imageSourcesConfigureImageSources);
        return imageSourcesConfigureImageSources;
    }

    public static CameraPipeModule_Companion_ConfigureImageSourcesFactory create(xs6<ImageReaderImageSources> xs6Var, xs6<CameraPipe.Config> xs6Var2) {
        return new CameraPipeModule_Companion_ConfigureImageSourcesFactory(xs6Var, xs6Var2);
    }

    @Override // defpackage.ws6
    public ImageSources get() {
        return configureImageSources(this.imageReaderImageSourcesProvider.get(), this.cameraPipeConfigProvider.get());
    }
}
