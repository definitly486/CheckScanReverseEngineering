package androidx.camera.camera2.pipe.graph;

import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.params.MeteringRectangle;
import androidx.camera.camera2.pipe.AeMode;
import androidx.camera.camera2.pipe.AfMode;
import androidx.camera.camera2.pipe.AwbMode;
import androidx.camera.camera2.pipe.FlashMode;
import androidx.camera.camera2.pipe.config.CameraGraphScope;
import defpackage.kt;
import defpackage.ot;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
@CameraGraphScope
public final class GraphState3A {
    private final ot<State3A> _state = kt.d(new State3A(null, null, null, null, null, null, null, null, null, null, 1023, null));

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: update-7jOEVJU$default, reason: not valid java name */
    public static /* synthetic */ void m891update7jOEVJU$default(GraphState3A graphState3A, AeMode aeMode, AfMode afMode, AwbMode awbMode, FlashMode flashMode, List list, List list2, List list3, Boolean bool, Boolean bool2, Boolean bool3, int i, Object obj) {
        if ((i & 1) != 0) {
            aeMode = null;
        }
        if ((i & 2) != 0) {
            afMode = null;
        }
        if ((i & 4) != 0) {
            awbMode = null;
        }
        if ((i & 8) != 0) {
            flashMode = null;
        }
        if ((i & 16) != 0) {
            list = null;
        }
        if ((i & 32) != 0) {
            list2 = null;
        }
        if ((i & 64) != 0) {
            list3 = null;
        }
        if ((i & 128) != 0) {
            bool = null;
        }
        if ((i & 256) != 0) {
            bool2 = null;
        }
        if ((i & 512) != 0) {
            bool3 = null;
        }
        graphState3A.m892update7jOEVJU(aeMode, afMode, awbMode, flashMode, list, list2, list3, bool, bool2, bool3);
    }

    public final State3A getCurrent() {
        return this._state.b;
    }

    public final void setCurrent(State3A state3A) {
        state3A.getClass();
        this._state.c(state3A);
    }

    public final Map<CaptureRequest.Key<?>, Object> toCaptureRequestParametersMap() {
        return GraphState3AKt.toCaptureRequestParameterMap(getCurrent());
    }

    /* JADX WARN: Code duplicated, block: B:23:0x003b  */
    /* JADX WARN: Code duplicated, block: B:30:0x0050  */
    /* JADX WARN: Code duplicated, block: B:38:0x0066  */
    /* JADX INFO: renamed from: update-7jOEVJU, reason: not valid java name */
    public final void m892update7jOEVJU(AeMode aeMode, AfMode afMode, AwbMode awbMode, FlashMode flashMode, List<MeteringRectangle> list, List<MeteringRectangle> list2, List<MeteringRectangle> list3, Boolean bool, Boolean bool2, Boolean bool3) {
        State3A state3A;
        State3A state3A2;
        AeMode aeModeM909getAeModeO_cDUUs;
        AfMode afModeM910getAfMode32_E3BI;
        AwbMode awbModeM911getAwbModeaLFtWSU;
        FlashMode flashModeM912getFlashModecL19HE;
        List<MeteringRectangle> aeRegions;
        List<MeteringRectangle> afRegions;
        List<MeteringRectangle> awbRegions;
        Boolean aeLock;
        Boolean afLock;
        List<MeteringRectangle> list4;
        Boolean awbLock;
        ot<State3A> otVar = this._state;
        do {
            state3A = otVar.b;
            state3A2 = state3A;
            aeModeM909getAeModeO_cDUUs = aeMode == null ? state3A2.m909getAeModeO_cDUUs() : aeMode;
            afModeM910getAfMode32_E3BI = afMode == null ? state3A2.m910getAfMode32_E3BI() : afMode;
            awbModeM911getAwbModeaLFtWSU = awbMode == null ? state3A2.m911getAwbModeaLFtWSU() : awbMode;
            flashModeM912getFlashModecL19HE = flashMode == null ? state3A2.m912getFlashModecL19HE() : flashMode;
            if (list != null) {
                List<MeteringRectangle> list5 = list;
                if (list5.isEmpty()) {
                    list5 = null;
                }
                aeRegions = list5;
                if (aeRegions == null) {
                    aeRegions = state3A2.getAeRegions();
                }
            } else {
                aeRegions = state3A2.getAeRegions();
            }
            if (list2 != null) {
                List<MeteringRectangle> list6 = list2;
                if (list6.isEmpty()) {
                    list6 = null;
                }
                afRegions = list6;
                if (afRegions == null) {
                    afRegions = state3A2.getAfRegions();
                }
            } else {
                afRegions = state3A2.getAfRegions();
            }
            if (list3 != null) {
                List<MeteringRectangle> list7 = list3;
                awbRegions = list7.isEmpty() ? null : list7;
                if (awbRegions == null) {
                    awbRegions = state3A2.getAwbRegions();
                }
            } else {
                awbRegions = state3A2.getAwbRegions();
            }
            aeLock = bool == null ? state3A2.getAeLock() : bool;
            afLock = bool2 == null ? state3A2.getAfLock() : bool2;
            if (bool3 == null) {
                awbLock = state3A2.getAwbLock();
                list4 = afRegions;
            } else {
                list4 = afRegions;
                awbLock = bool3;
            }
        } while (!otVar.a(state3A, state3A2.m908copy7jOEVJU(aeModeM909getAeModeO_cDUUs, afModeM910getAfMode32_E3BI, awbModeM911getAwbModeaLFtWSU, flashModeM912getFlashModecL19HE, aeRegions, list4, awbRegions, aeLock, afLock, awbLock)));
    }
}
