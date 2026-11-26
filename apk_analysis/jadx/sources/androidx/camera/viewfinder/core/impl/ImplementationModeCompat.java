package androidx.camera.viewfinder.core.impl;

import androidx.camera.viewfinder.core.ImplementationMode;
import androidx.camera.viewfinder.core.impl.quirk.DeviceQuirks;
import androidx.camera.viewfinder.core.impl.quirk.Quirk;
import androidx.camera.viewfinder.core.impl.quirk.SurfaceViewNotCroppedByParentQuirk;
import androidx.camera.viewfinder.core.impl.quirk.SurfaceViewStretchedQuirk;
import defpackage.jh2;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class ImplementationModeCompat {
    public static final Companion Companion = new Companion(null);

    public static final ImplementationMode chooseCompatibleMode() {
        return Companion.chooseCompatibleMode();
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX WARN: Code duplicated, block: B:18:0x0045  */
        /* JADX WARN: Code duplicated, block: B:21:0x004f  */
        /* JADX WARN: Code duplicated, block: B:28:0x0059 A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:29:? A[LOOP:0: B:19:0x0049->B:29:?, LOOP_END, SYNTHETIC] */
        public final ImplementationMode chooseCompatibleMode() {
            List list;
            Iterator it;
            List list2 = DeviceQuirks.QUIRKS.quirks;
            if ((list2 instanceof Collection) && list2.isEmpty()) {
                list = DeviceQuirks.QUIRKS.quirks;
                if (list instanceof Collection) {
                    it = list.iterator();
                    while (it.hasNext()) {
                        if (((Quirk) it.next()) instanceof SurfaceViewNotCroppedByParentQuirk) {
                        }
                    }
                } else {
                    it = list.iterator();
                    while (it.hasNext()) {
                        if (((Quirk) it.next()) instanceof SurfaceViewNotCroppedByParentQuirk) {
                        }
                    }
                }
                return ImplementationMode.EXTERNAL;
            }
            Iterator it2 = list2.iterator();
            while (it2.hasNext()) {
                if (((Quirk) it2.next()) instanceof SurfaceViewStretchedQuirk) {
                }
            }
            list = DeviceQuirks.QUIRKS.quirks;
            if ((list instanceof Collection) || !list.isEmpty()) {
                it = list.iterator();
                while (it.hasNext()) {
                    if (((Quirk) it.next()) instanceof SurfaceViewNotCroppedByParentQuirk) {
                    }
                }
            }
            return ImplementationMode.EXTERNAL;
            return ImplementationMode.EMBEDDED;
        }

        private Companion() {
        }
    }
}
