package androidx.camera.core.internal.compat.quirk;

import android.os.Build;
import androidx.camera.core.Preview;
import androidx.camera.core.UseCase;
import androidx.camera.core.impl.Quirk;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.camera.core.impl.UseCaseConfigFactory;
import defpackage.aa4;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class PreviewGreenTintQuirk implements Quirk {
    public static final PreviewGreenTintQuirk INSTANCE = new PreviewGreenTintQuirk();

    private PreviewGreenTintQuirk() {
    }

    private final boolean isMotoE20() {
        return "motorola".equalsIgnoreCase(Build.BRAND) && "moto e20".equalsIgnoreCase(Build.MODEL);
    }

    public static final boolean load() {
        return INSTANCE.isMotoE20();
    }

    public static final boolean shouldForceEnableStreamSharing(String str, Collection<? extends UseCase> collection) {
        str.getClass();
        collection.getClass();
        PreviewGreenTintQuirk previewGreenTintQuirk = INSTANCE;
        if (previewGreenTintQuirk.isMotoE20()) {
            return previewGreenTintQuirk.shouldForceEnableStreamSharingForMotoE20(str, collection);
        }
        return false;
    }

    private final boolean shouldForceEnableStreamSharingForMotoE20(String str, Collection<? extends UseCase> collection) {
        boolean z;
        boolean z2;
        if (aa4.e(str, CommonUrlParts.Values.FALSE_INTEGER) && collection.size() == 2) {
            Collection<? extends UseCase> collection2 = collection;
            boolean z3 = collection2 instanceof Collection;
            if (!z3 || !collection2.isEmpty()) {
                Iterator<T> it = collection2.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        z = false;
                        break;
                    }
                    if (((UseCase) it.next()) instanceof Preview) {
                        z = true;
                        break;
                    }
                }
            } else {
                z = false;
                break;
            }
            if (!z3 || !collection2.isEmpty()) {
                Iterator<T> it2 = collection2.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        z2 = false;
                        break;
                    }
                    UseCase useCase = (UseCase) it2.next();
                    if (useCase.getCurrentConfig().containsOption(UseCaseConfig.OPTION_CAPTURE_TYPE) && useCase.getCurrentConfig().getCaptureType() == UseCaseConfigFactory.CaptureType.VIDEO_CAPTURE) {
                        z2 = true;
                        break;
                    }
                }
            } else {
                z2 = false;
                break;
            }
            if (z && z2) {
                return true;
            }
        }
        return false;
    }
}
