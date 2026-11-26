package androidx.camera.core.impl;

import android.content.Context;
import androidx.camera.core.CameraIdentifier;
import androidx.camera.core.CameraSelector;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public interface CameraValidator {
    public static final Companion Companion = Companion.$$INSTANCE;

    public static final class CameraIdListIncorrectException extends Exception {
        private final int availableCameraCount;

        public CameraIdListIncorrectException(String str, int i, Throwable th) {
            super(str, th);
            this.availableCameraCount = i;
        }

        public final int getAvailableCameraCount() {
            return this.availableCameraCount;
        }
    }

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }

        public final CameraValidator create(Context context, CameraSelector cameraSelector) {
            context.getClass();
            return new CameraValidatorImpl(context, cameraSelector);
        }
    }

    static CameraValidator create(Context context, CameraSelector cameraSelector) {
        return Companion.create(context, cameraSelector);
    }

    boolean isChangeInvalid(Set<? extends CameraInternal> set, Set<CameraIdentifier> set2);

    void validateOnFirstInit(CameraRepository cameraRepository);
}
