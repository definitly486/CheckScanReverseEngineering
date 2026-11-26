package androidx.camera.camera2.pipe.graph;

import android.hardware.camera2.params.MeteringRectangle;
import androidx.camera.camera2.pipe.AeMode;
import androidx.camera.camera2.pipe.AfMode;
import androidx.camera.camera2.pipe.AwbMode;
import androidx.camera.camera2.pipe.FlashMode;
import defpackage.aa4;
import defpackage.jh2;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class State3A {
    private final Boolean aeLock;
    private final AeMode aeMode;
    private final List<MeteringRectangle> aeRegions;
    private final Boolean afLock;
    private final AfMode afMode;
    private final List<MeteringRectangle> afRegions;
    private final Boolean awbLock;
    private final AwbMode awbMode;
    private final List<MeteringRectangle> awbRegions;
    private final FlashMode flashMode;

    public /* synthetic */ State3A(AeMode aeMode, AfMode afMode, AwbMode awbMode, FlashMode flashMode, List list, List list2, List list3, Boolean bool, Boolean bool2, Boolean bool3, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? null : aeMode, (i & 2) != 0 ? null : afMode, (i & 4) != 0 ? null : awbMode, (i & 8) != 0 ? null : flashMode, (i & 16) != 0 ? null : list, (i & 32) != 0 ? null : list2, (i & 64) != 0 ? null : list3, (i & 128) != 0 ? null : bool, (i & 256) != 0 ? null : bool2, (i & 512) != 0 ? null : bool3, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: copy-7jOEVJU$default, reason: not valid java name */
    public static /* synthetic */ State3A m903copy7jOEVJU$default(State3A state3A, AeMode aeMode, AfMode afMode, AwbMode awbMode, FlashMode flashMode, List list, List list2, List list3, Boolean bool, Boolean bool2, Boolean bool3, int i, Object obj) {
        if ((i & 1) != 0) {
            aeMode = state3A.aeMode;
        }
        if ((i & 2) != 0) {
            afMode = state3A.afMode;
        }
        if ((i & 4) != 0) {
            awbMode = state3A.awbMode;
        }
        if ((i & 8) != 0) {
            flashMode = state3A.flashMode;
        }
        if ((i & 16) != 0) {
            list = state3A.aeRegions;
        }
        if ((i & 32) != 0) {
            list2 = state3A.afRegions;
        }
        if ((i & 64) != 0) {
            list3 = state3A.awbRegions;
        }
        if ((i & 128) != 0) {
            bool = state3A.aeLock;
        }
        if ((i & 256) != 0) {
            bool2 = state3A.afLock;
        }
        if ((i & 512) != 0) {
            bool3 = state3A.awbLock;
        }
        Boolean bool4 = bool2;
        Boolean bool5 = bool3;
        List list4 = list3;
        Boolean bool6 = bool;
        List list5 = list;
        List list6 = list2;
        return state3A.m908copy7jOEVJU(aeMode, afMode, awbMode, flashMode, list5, list6, list4, bool6, bool4, bool5);
    }

    /* JADX INFO: renamed from: component1-O_cDUUs, reason: not valid java name */
    public final AeMode m904component1O_cDUUs() {
        return this.aeMode;
    }

    public final Boolean component10() {
        return this.awbLock;
    }

    /* JADX INFO: renamed from: component2-32_E3BI, reason: not valid java name */
    public final AfMode m905component232_E3BI() {
        return this.afMode;
    }

    /* JADX INFO: renamed from: component3-aLFtWSU, reason: not valid java name */
    public final AwbMode m906component3aLFtWSU() {
        return this.awbMode;
    }

    /* JADX INFO: renamed from: component4-cL-19HE, reason: not valid java name */
    public final FlashMode m907component4cL19HE() {
        return this.flashMode;
    }

    public final List<MeteringRectangle> component5() {
        return this.aeRegions;
    }

    public final List<MeteringRectangle> component6() {
        return this.afRegions;
    }

    public final List<MeteringRectangle> component7() {
        return this.awbRegions;
    }

    public final Boolean component8() {
        return this.aeLock;
    }

    public final Boolean component9() {
        return this.afLock;
    }

    /* JADX INFO: renamed from: copy-7jOEVJU, reason: not valid java name */
    public final State3A m908copy7jOEVJU(AeMode aeMode, AfMode afMode, AwbMode awbMode, FlashMode flashMode, List<MeteringRectangle> list, List<MeteringRectangle> list2, List<MeteringRectangle> list3, Boolean bool, Boolean bool2, Boolean bool3) {
        return new State3A(aeMode, afMode, awbMode, flashMode, list, list2, list3, bool, bool2, bool3, null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof State3A)) {
            return false;
        }
        State3A state3A = (State3A) obj;
        return aa4.e(this.aeMode, state3A.aeMode) && aa4.e(this.afMode, state3A.afMode) && aa4.e(this.awbMode, state3A.awbMode) && aa4.e(this.flashMode, state3A.flashMode) && aa4.e(this.aeRegions, state3A.aeRegions) && aa4.e(this.afRegions, state3A.afRegions) && aa4.e(this.awbRegions, state3A.awbRegions) && aa4.e(this.aeLock, state3A.aeLock) && aa4.e(this.afLock, state3A.afLock) && aa4.e(this.awbLock, state3A.awbLock);
    }

    public final Boolean getAeLock() {
        return this.aeLock;
    }

    /* JADX INFO: renamed from: getAeMode-O_cDUUs, reason: not valid java name */
    public final AeMode m909getAeModeO_cDUUs() {
        return this.aeMode;
    }

    public final List<MeteringRectangle> getAeRegions() {
        return this.aeRegions;
    }

    public final Boolean getAfLock() {
        return this.afLock;
    }

    /* JADX INFO: renamed from: getAfMode-32_E3BI, reason: not valid java name */
    public final AfMode m910getAfMode32_E3BI() {
        return this.afMode;
    }

    public final List<MeteringRectangle> getAfRegions() {
        return this.afRegions;
    }

    public final Boolean getAwbLock() {
        return this.awbLock;
    }

    /* JADX INFO: renamed from: getAwbMode-aLFtWSU, reason: not valid java name */
    public final AwbMode m911getAwbModeaLFtWSU() {
        return this.awbMode;
    }

    public final List<MeteringRectangle> getAwbRegions() {
        return this.awbRegions;
    }

    /* JADX INFO: renamed from: getFlashMode-cL-19HE, reason: not valid java name */
    public final FlashMode m912getFlashModecL19HE() {
        return this.flashMode;
    }

    public int hashCode() {
        AeMode aeMode = this.aeMode;
        int iM109hashCodeimpl = (aeMode == null ? 0 : AeMode.m109hashCodeimpl(aeMode.m112unboximpl())) * 31;
        AfMode afMode = this.afMode;
        int iM127hashCodeimpl = (iM109hashCodeimpl + (afMode == null ? 0 : AfMode.m127hashCodeimpl(afMode.m131unboximpl()))) * 31;
        AwbMode awbMode = this.awbMode;
        int iM154hashCodeimpl = (iM127hashCodeimpl + (awbMode == null ? 0 : AwbMode.m154hashCodeimpl(awbMode.m157unboximpl()))) * 31;
        FlashMode flashMode = this.flashMode;
        int iM416hashCodeimpl = (iM154hashCodeimpl + (flashMode == null ? 0 : FlashMode.m416hashCodeimpl(flashMode.m418unboximpl()))) * 31;
        List<MeteringRectangle> list = this.aeRegions;
        int iHashCode = (iM416hashCodeimpl + (list == null ? 0 : list.hashCode())) * 31;
        List<MeteringRectangle> list2 = this.afRegions;
        int iHashCode2 = (iHashCode + (list2 == null ? 0 : list2.hashCode())) * 31;
        List<MeteringRectangle> list3 = this.awbRegions;
        int iHashCode3 = (iHashCode2 + (list3 == null ? 0 : list3.hashCode())) * 31;
        Boolean bool = this.aeLock;
        int iHashCode4 = (iHashCode3 + (bool == null ? 0 : bool.hashCode())) * 31;
        Boolean bool2 = this.afLock;
        int iHashCode5 = (iHashCode4 + (bool2 == null ? 0 : bool2.hashCode())) * 31;
        Boolean bool3 = this.awbLock;
        return iHashCode5 + (bool3 != null ? bool3.hashCode() : 0);
    }

    public String toString() {
        return "State3A(aeMode=" + this.aeMode + ", afMode=" + this.afMode + ", awbMode=" + this.awbMode + ", flashMode=" + this.flashMode + ", aeRegions=" + this.aeRegions + ", afRegions=" + this.afRegions + ", awbRegions=" + this.awbRegions + ", aeLock=" + this.aeLock + ", afLock=" + this.afLock + ", awbLock=" + this.awbLock + ')';
    }

    private State3A(AeMode aeMode, AfMode afMode, AwbMode awbMode, FlashMode flashMode, List<MeteringRectangle> list, List<MeteringRectangle> list2, List<MeteringRectangle> list3, Boolean bool, Boolean bool2, Boolean bool3) {
        this.aeMode = aeMode;
        this.afMode = afMode;
        this.awbMode = awbMode;
        this.flashMode = flashMode;
        this.aeRegions = list;
        this.afRegions = list2;
        this.awbRegions = list3;
        this.aeLock = bool;
        this.afLock = bool2;
        this.awbLock = bool3;
    }

    public /* synthetic */ State3A(AeMode aeMode, AfMode afMode, AwbMode awbMode, FlashMode flashMode, List list, List list2, List list3, Boolean bool, Boolean bool2, Boolean bool3, jh2 jh2Var) {
        this(aeMode, afMode, awbMode, flashMode, list, list2, list3, bool, bool2, bool3);
    }
}
