package androidx.window.layout.adapter.sidecar;

import android.graphics.Rect;
import androidx.window.core.Bounds;
import androidx.window.core.SpecificationComputer;
import androidx.window.core.VerificationMode;
import androidx.window.layout.DisplayFeature;
import androidx.window.layout.FoldingFeature;
import androidx.window.layout.HardwareFoldingFeature;
import androidx.window.layout.WindowLayoutInfo;
import androidx.window.sidecar.SidecarDeviceState;
import androidx.window.sidecar.SidecarDisplayFeature;
import androidx.window.sidecar.SidecarWindowLayoutInfo;
import defpackage.aa4;
import defpackage.j59;
import defpackage.jh2;
import defpackage.kx2;
import defpackage.vw7;
import defpackage.ww7;
import defpackage.xw7;
import defpackage.yw7;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class SidecarAdapter {
    public static final Companion Companion = new Companion(null);
    private static final String TAG = "SidecarAdapter";
    private final VerificationMode verificationMode;

    public /* synthetic */ SidecarAdapter(VerificationMode verificationMode, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? VerificationMode.QUIET : verificationMode);
    }

    private final boolean isEqualSidecarDisplayFeature(SidecarDisplayFeature sidecarDisplayFeature, SidecarDisplayFeature sidecarDisplayFeature2) {
        if (aa4.e(sidecarDisplayFeature, sidecarDisplayFeature2)) {
            return true;
        }
        if (sidecarDisplayFeature == null || sidecarDisplayFeature2 == null || sidecarDisplayFeature.getType() != sidecarDisplayFeature2.getType()) {
            return false;
        }
        return aa4.e(sidecarDisplayFeature.getRect(), sidecarDisplayFeature2.getRect());
    }

    private final boolean isEqualSidecarDisplayFeatures(List<SidecarDisplayFeature> list, List<SidecarDisplayFeature> list2) {
        if (list == list2) {
            return true;
        }
        if (list == null || list2 == null || list.size() != list2.size()) {
            return false;
        }
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (!isEqualSidecarDisplayFeature(list.get(i), list2.get(i))) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean translate$lambda$1(SidecarDisplayFeature sidecarDisplayFeature) {
        sidecarDisplayFeature.getClass();
        return sidecarDisplayFeature.getType() == 1 || sidecarDisplayFeature.getType() == 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean translate$lambda$2(SidecarDisplayFeature sidecarDisplayFeature) {
        sidecarDisplayFeature.getClass();
        return (sidecarDisplayFeature.getRect().width() == 0 && sidecarDisplayFeature.getRect().height() == 0) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean translate$lambda$3(SidecarDisplayFeature sidecarDisplayFeature) {
        sidecarDisplayFeature.getClass();
        return sidecarDisplayFeature.getType() != 1 || sidecarDisplayFeature.getRect().width() == 0 || sidecarDisplayFeature.getRect().height() == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean translate$lambda$4(SidecarDisplayFeature sidecarDisplayFeature) {
        sidecarDisplayFeature.getClass();
        return sidecarDisplayFeature.getRect().left == 0 || sidecarDisplayFeature.getRect().top == 0;
    }

    public final boolean isEqualSidecarDeviceState(SidecarDeviceState sidecarDeviceState, SidecarDeviceState sidecarDeviceState2) {
        if (aa4.e(sidecarDeviceState, sidecarDeviceState2)) {
            return true;
        }
        if (sidecarDeviceState == null || sidecarDeviceState2 == null) {
            return false;
        }
        Companion companion = Companion;
        return companion.getSidecarDevicePosture$window_release(sidecarDeviceState) == companion.getSidecarDevicePosture$window_release(sidecarDeviceState2);
    }

    public final boolean isEqualSidecarWindowLayoutInfo(SidecarWindowLayoutInfo sidecarWindowLayoutInfo, SidecarWindowLayoutInfo sidecarWindowLayoutInfo2) {
        if (aa4.e(sidecarWindowLayoutInfo, sidecarWindowLayoutInfo2)) {
            return true;
        }
        if (sidecarWindowLayoutInfo == null || sidecarWindowLayoutInfo2 == null) {
            return false;
        }
        Companion companion = Companion;
        return isEqualSidecarDisplayFeatures(companion.getSidecarDisplayFeatures(sidecarWindowLayoutInfo), companion.getSidecarDisplayFeatures(sidecarWindowLayoutInfo2));
    }

    public final WindowLayoutInfo translate(SidecarWindowLayoutInfo sidecarWindowLayoutInfo, SidecarDeviceState sidecarDeviceState) {
        sidecarDeviceState.getClass();
        if (sidecarWindowLayoutInfo == null) {
            return new WindowLayoutInfo(kx2.b);
        }
        SidecarDeviceState sidecarDeviceState2 = new SidecarDeviceState();
        Companion companion = Companion;
        companion.setSidecarDevicePosture(sidecarDeviceState2, companion.getSidecarDevicePosture$window_release(sidecarDeviceState));
        return new WindowLayoutInfo(translate(companion.getSidecarDisplayFeatures(sidecarWindowLayoutInfo), sidecarDeviceState2));
    }

    public final DisplayFeature translate$window_release(SidecarDisplayFeature sidecarDisplayFeature, SidecarDeviceState sidecarDeviceState) {
        HardwareFoldingFeature.Type fold;
        FoldingFeature.State state;
        sidecarDisplayFeature.getClass();
        sidecarDeviceState.getClass();
        SpecificationComputer.Companion companion = SpecificationComputer.Companion;
        String str = TAG;
        str.getClass();
        SidecarDisplayFeature sidecarDisplayFeature2 = (SidecarDisplayFeature) SpecificationComputer.Companion.startSpecification$default(companion, sidecarDisplayFeature, str, this.verificationMode, null, 4, null).require("Type must be either TYPE_FOLD or TYPE_HINGE", new vw7()).require("Feature bounds must not be 0", new ww7()).require("TYPE_FOLD must have 0 area", new xw7()).require("Feature be pinned to either left or top", new yw7()).compute();
        if (sidecarDisplayFeature2 == null) {
            return null;
        }
        int type = sidecarDisplayFeature2.getType();
        if (type == 1) {
            fold = HardwareFoldingFeature.Type.Companion.getFOLD();
        } else {
            if (type != 2) {
                return null;
            }
            fold = HardwareFoldingFeature.Type.Companion.getHINGE();
        }
        int sidecarDevicePosture$window_release = Companion.getSidecarDevicePosture$window_release(sidecarDeviceState);
        if (sidecarDevicePosture$window_release != 0 && sidecarDevicePosture$window_release != 1) {
            if (sidecarDevicePosture$window_release == 2) {
                state = FoldingFeature.State.HALF_OPENED;
            } else if (sidecarDevicePosture$window_release == 3 || sidecarDevicePosture$window_release != 4) {
                state = FoldingFeature.State.FLAT;
            }
            Rect rect = sidecarDisplayFeature.getRect();
            rect.getClass();
            return new HardwareFoldingFeature(new Bounds(rect), fold, state);
        }
        return null;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final int getRawSidecarDevicePosture(SidecarDeviceState sidecarDeviceState) {
            sidecarDeviceState.getClass();
            try {
                try {
                    return sidecarDeviceState.posture;
                } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
                    return 0;
                }
            } catch (NoSuchFieldError unused2) {
                Object objInvoke = SidecarDeviceState.class.getMethod("getPosture", null).invoke(sidecarDeviceState, null);
                objInvoke.getClass();
                return ((Integer) objInvoke).intValue();
            }
        }

        public final int getSidecarDevicePosture$window_release(SidecarDeviceState sidecarDeviceState) {
            sidecarDeviceState.getClass();
            int rawSidecarDevicePosture = getRawSidecarDevicePosture(sidecarDeviceState);
            if (rawSidecarDevicePosture < 0 || rawSidecarDevicePosture > 4) {
                return 0;
            }
            return rawSidecarDevicePosture;
        }

        public final List<SidecarDisplayFeature> getSidecarDisplayFeatures(SidecarWindowLayoutInfo sidecarWindowLayoutInfo) {
            kx2 kx2Var = kx2.b;
            sidecarWindowLayoutInfo.getClass();
            try {
                try {
                    List<SidecarDisplayFeature> list = sidecarWindowLayoutInfo.displayFeatures;
                    return list == null ? kx2Var : list;
                } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
                    return kx2Var;
                }
            } catch (NoSuchFieldError unused2) {
                Object objInvoke = SidecarWindowLayoutInfo.class.getMethod("getDisplayFeatures", null).invoke(sidecarWindowLayoutInfo, null);
                objInvoke.getClass();
                return (List) objInvoke;
            }
        }

        public final void setSidecarDevicePosture(SidecarDeviceState sidecarDeviceState, int i) {
            sidecarDeviceState.getClass();
            try {
                try {
                    sidecarDeviceState.posture = i;
                } catch (NoSuchFieldError unused) {
                    SidecarDeviceState.class.getMethod("setPosture", Integer.TYPE).invoke(sidecarDeviceState, Integer.valueOf(i));
                }
            } catch (IllegalAccessException unused2) {
                j59 j59Var = j59.a;
            } catch (NoSuchMethodException unused3) {
                j59 j59Var2 = j59.a;
            } catch (InvocationTargetException unused4) {
                j59 j59Var3 = j59.a;
            }
        }

        public final void setSidecarDisplayFeatures(SidecarWindowLayoutInfo sidecarWindowLayoutInfo, List<SidecarDisplayFeature> list) {
            sidecarWindowLayoutInfo.getClass();
            list.getClass();
            try {
                try {
                    sidecarWindowLayoutInfo.displayFeatures = list;
                } catch (NoSuchFieldError unused) {
                    SidecarWindowLayoutInfo.class.getMethod("setDisplayFeatures", List.class).invoke(sidecarWindowLayoutInfo, list);
                }
            } catch (IllegalAccessException unused2) {
                j59 j59Var = j59.a;
            } catch (NoSuchMethodException unused3) {
                j59 j59Var2 = j59.a;
            } catch (InvocationTargetException unused4) {
                j59 j59Var3 = j59.a;
            }
        }

        private Companion() {
        }
    }

    public SidecarAdapter(VerificationMode verificationMode) {
        verificationMode.getClass();
        this.verificationMode = verificationMode;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SidecarAdapter() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public final List<DisplayFeature> translate(List<SidecarDisplayFeature> list, SidecarDeviceState sidecarDeviceState) {
        list.getClass();
        sidecarDeviceState.getClass();
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            DisplayFeature displayFeatureTranslate$window_release = translate$window_release((SidecarDisplayFeature) it.next(), sidecarDeviceState);
            if (displayFeatureTranslate$window_release != null) {
                arrayList.add(displayFeatureTranslate$window_release);
            }
        }
        return arrayList;
    }
}
