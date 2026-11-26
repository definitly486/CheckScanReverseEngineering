package androidx.camera.camera2.compat.quirk;

import android.os.Build;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.core.impl.Quirk;
import defpackage.jh2;
import defpackage.ra8;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public final class FinalizeSessionOnCloseQuirk implements Quirk {
    public static final Companion Companion = new Companion(null);

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: getBehavior-Bm6Tfm4, reason: not valid java name */
        public final int m30getBehaviorBm6Tfm4() {
            String str = Build.MODEL;
            str.getClass();
            Locale locale = Locale.getDefault();
            locale.getClass();
            String lowerCase = str.toLowerCase(locale);
            lowerCase.getClass();
            return ra8.C(lowerCase, "cph", false) ? CameraGraph.Flags.FinalizeSessionOnCloseBehavior.Companion.m328getIMMEDIATEBm6Tfm4() : CameraGraph.Flags.FinalizeSessionOnCloseBehavior.Companion.m329getOFFBm6Tfm4();
        }

        public final boolean isEnabled() {
            return true;
        }

        private Companion() {
        }
    }
}
