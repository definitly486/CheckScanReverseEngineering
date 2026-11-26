package androidx.camera.core.impl.utils;

import androidx.camera.core.ImageAnalysis;
import androidx.camera.core.ImageCapture;
import androidx.camera.core.Logger;
import androidx.camera.core.Preview;
import androidx.camera.core.UseCase;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.camera.core.impl.UseCaseConfigFactory;
import androidx.camera.core.impl.stabilization.VideoStabilization;
import defpackage.ln;
import defpackage.nl3;
import defpackage.xe;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class UseCaseUtil {
    public static final UseCaseUtil INSTANCE = new UseCaseUtil();
    private static final String TAG = "UseCaseUtil";

    private UseCaseUtil() {
    }

    public static final boolean containsVideoCapture(Collection<? extends UseCase> collection) {
        collection.getClass();
        for (UseCase useCase : collection) {
            if (useCase != null && isVideoCapture(useCase)) {
                return true;
            }
        }
        return false;
    }

    public static final ImageAnalysis findImageAnalysis(Collection<? extends UseCase> collection) {
        Object next;
        collection.getClass();
        Iterator<T> it = collection.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!(((UseCase) next) instanceof ImageAnalysis));
        if (next instanceof ImageAnalysis) {
            return (ImageAnalysis) next;
        }
        return null;
    }

    public static final ImageCapture findImageCapture(Collection<? extends UseCase> collection) {
        Object next;
        collection.getClass();
        Iterator<T> it = collection.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!(((UseCase) next) instanceof ImageCapture));
        if (next instanceof ImageCapture) {
            return (ImageCapture) next;
        }
        return null;
    }

    public static final Preview findPreview(Collection<? extends UseCase> collection) {
        Object next;
        collection.getClass();
        Iterator<T> it = collection.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!(((UseCase) next) instanceof Preview));
        if (next instanceof Preview) {
            return (Preview) next;
        }
        return null;
    }

    public static final UseCase findVideoCapture(Collection<? extends UseCase> collection) {
        Object next;
        collection.getClass();
        Iterator<T> it = collection.iterator();
        while (it.hasNext()) {
            next = it.next();
            if (isVideoCapture((UseCase) next)) {
                return (UseCase) next;
            }
        }
        next = null;
        return (UseCase) next;
    }

    private final int getPreviewStabilizationMode(Collection<? extends UseCase> collection, nl3<? super UseCase, ? extends UseCaseConfig<?>> nl3Var) {
        Iterator<T> it = collection.iterator();
        int i = 0;
        while (it.hasNext()) {
            int previewStabilizationMode = nl3Var.invoke((UseCase) it.next()).getPreviewStabilizationMode();
            if (previewStabilizationMode != 0) {
                if (i != previewStabilizationMode && i != 0) {
                    Logger.w(TAG, ln.c(i, previewStabilizationMode, "Unexpected configurations: Overwriting current previewStabilizationMode(", ") with useCasePreviewStabilization(", ")!"));
                }
                i = previewStabilizationMode;
            }
        }
        return i;
    }

    public static final VideoStabilization getVideoStabilization(Collection<? extends UseCase> collection, nl3<? super UseCase, ? extends UseCaseConfig<?>> nl3Var) {
        collection.getClass();
        nl3Var.getClass();
        VideoStabilization.Companion companion = VideoStabilization.Companion;
        UseCaseUtil useCaseUtil = INSTANCE;
        return companion.from$camera_core(useCaseUtil.getPreviewStabilizationMode(collection, nl3Var), useCaseUtil.getVideoStabilizationMode(collection, nl3Var));
    }

    public static /* synthetic */ VideoStabilization getVideoStabilization$default(Collection collection, nl3 nl3Var, int i, Object obj) {
        if ((i & 1) != 0) {
            nl3Var = new xe(4);
        }
        return getVideoStabilization(collection, nl3Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final UseCaseConfig getVideoStabilization$lambda$0(UseCase useCase) {
        useCase.getClass();
        return useCase.getCurrentConfig();
    }

    private final int getVideoStabilizationMode(Collection<? extends UseCase> collection, nl3<? super UseCase, ? extends UseCaseConfig<?>> nl3Var) {
        Iterator<T> it = collection.iterator();
        int i = 0;
        while (it.hasNext()) {
            int videoStabilizationMode = nl3Var.invoke((UseCase) it.next()).getVideoStabilizationMode();
            if (videoStabilizationMode != 0) {
                if (i != videoStabilizationMode && i != 0) {
                    Logger.w(TAG, ln.c(i, videoStabilizationMode, "Unexpected configurations: Overwriting current videoStabilizationMode(", ") with useCaseVideoStabilization(", ")!"));
                }
                i = videoStabilizationMode;
            }
        }
        return i;
    }

    public static final boolean isVideoCapture(UseCase useCase) {
        useCase.getClass();
        if (useCase.getCurrentConfig().containsOption(UseCaseConfig.OPTION_CAPTURE_TYPE)) {
            return useCase.getCurrentConfig().getCaptureType() == UseCaseConfigFactory.CaptureType.VIDEO_CAPTURE;
        }
        Logger.e(TAG, useCase + " UseCase does not have capture type.");
        return false;
    }
}
