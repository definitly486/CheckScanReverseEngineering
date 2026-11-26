package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.pipe.CameraExtensionMetadata;
import androidx.camera.camera2.pipe.CameraMetadata;
import defpackage.e02;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public interface Camera2MetadataProvider {
    /* JADX INFO: renamed from: awaitCameraExtensionMetadata-0r8Bogc */
    CameraExtensionMetadata mo777awaitCameraExtensionMetadata0r8Bogc(String str, int i);

    /* JADX INFO: renamed from: awaitCameraMetadata-EfqyGwQ */
    CameraMetadata mo778awaitCameraMetadataEfqyGwQ(String str);

    /* JADX INFO: renamed from: getCameraExtensionMetadata-RzXb1QE */
    Object mo779getCameraExtensionMetadataRzXb1QE(String str, int i, e02<? super CameraExtensionMetadata> e02Var);

    /* JADX INFO: renamed from: getCameraMetadata-0r8Bogc */
    Object mo780getCameraMetadata0r8Bogc(String str, e02<? super CameraMetadata> e02Var);

    /* JADX INFO: renamed from: getSupportedCameraExtensions-EfqyGwQ */
    Set<Integer> mo781getSupportedCameraExtensionsEfqyGwQ(String str);
}
