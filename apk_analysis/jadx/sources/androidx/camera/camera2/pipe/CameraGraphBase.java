package androidx.camera.camera2.pipe;

import android.hardware.camera2.params.MeteringRectangle;
import android.view.Surface;
import androidx.camera.camera2.pipe.CameraGraph.Session;
import defpackage.dm3;
import defpackage.e02;
import defpackage.hd3;
import defpackage.mk2;
import defpackage.n1;
import defpackage.nl3;
import defpackage.y22;
import defpackage.y68;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface CameraGraphBase<TSession extends CameraGraph.Session> extends AutoCloseable {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: lock3A-vIrNa9k$default, reason: not valid java name */
    static /* synthetic */ mk2 m347lock3AvIrNa9k$default(CameraGraphBase cameraGraphBase, AeMode aeMode, AfMode afMode, AwbMode awbMode, List list, List list2, List list3, Lock3ABehavior lock3ABehavior, Lock3ABehavior lock3ABehavior2, Lock3ABehavior lock3ABehavior3, AeMode aeMode2, nl3 nl3Var, nl3 nl3Var2, int i, long j, long j2, int i2, Object obj) {
        if (obj == null) {
            return cameraGraphBase.mo348lock3AvIrNa9k((i2 & 1) != 0 ? null : aeMode, (i2 & 2) != 0 ? null : afMode, (i2 & 4) != 0 ? null : awbMode, (i2 & 8) != 0 ? null : list, (i2 & 16) != 0 ? null : list2, (i2 & 32) != 0 ? null : list3, (i2 & 64) != 0 ? null : lock3ABehavior, (i2 & 128) != 0 ? null : lock3ABehavior2, (i2 & 256) != 0 ? null : lock3ABehavior3, (i2 & 512) != 0 ? null : aeMode2, (i2 & 1024) != 0 ? null : nl3Var, (i2 & 2048) == 0 ? nl3Var2 : null, (i2 & 4096) != 0 ? 60 : i, (i2 & 8192) != 0 ? 3000000000L : j, (i2 & 16384) != 0 ? 3000000000L : j2);
        }
        n1.e("Super calls with default arguments not supported in this target, function: lock3A-vIrNa9k");
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ mk2 unlock3A$default(CameraGraphBase cameraGraphBase, Boolean bool, Boolean bool2, Boolean bool3, nl3 nl3Var, int i, long j, int i2, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: unlock3A");
            return null;
        }
        if ((i2 & 1) != 0) {
            bool = null;
        }
        if ((i2 & 2) != 0) {
            bool2 = null;
        }
        if ((i2 & 4) != 0) {
            bool3 = null;
        }
        if ((i2 & 8) != 0) {
            nl3Var = null;
        }
        if ((i2 & 16) != 0) {
            i = 60;
        }
        if ((i2 & 32) != 0) {
            j = CameraGraph.Constants3A.DEFAULT_TIME_LIMIT_NS;
        }
        return cameraGraphBase.unlock3A(bool, bool2, bool3, nl3Var, i, j);
    }

    Object acquireSession(e02<? super TSession> e02Var);

    TSession acquireSessionOrNull();

    y68<GraphState> getGraphState();

    CameraGraphId getId();

    hd3<FrameInfo> getLatestFrameInfo();

    hd3<FrameNumber> getLatestFrameNumber();

    RequestListeners getListeners();

    Parameters getParameters();

    StreamGraph getStreams();

    boolean isForeground();

    /* JADX INFO: renamed from: lock3A-vIrNa9k, reason: not valid java name */
    mk2<Result3A> mo348lock3AvIrNa9k(AeMode aeMode, AfMode afMode, AwbMode awbMode, List<MeteringRectangle> list, List<MeteringRectangle> list2, List<MeteringRectangle> list3, Lock3ABehavior lock3ABehavior, Lock3ABehavior lock3ABehavior2, Lock3ABehavior lock3ABehavior3, AeMode aeMode2, nl3<? super FrameMetadata, Boolean> nl3Var, nl3<? super FrameMetadata, Boolean> nl3Var2, int i, long j, long j2);

    void setForeground(boolean z);

    /* JADX INFO: renamed from: setSurface-NYG5g8E, reason: not valid java name */
    void mo349setSurfaceNYG5g8E(int i, Surface surface);

    void start();

    void stop();

    mk2<Result3A> unlock3A(Boolean bool, Boolean bool2, Boolean bool3, nl3<? super FrameMetadata, Boolean> nl3Var, int i, long j);

    /* JADX INFO: renamed from: updateAudioRestrictionMode-LwUUkyU, reason: not valid java name */
    void mo350updateAudioRestrictionModeLwUUkyU(int i);

    <T> Object useSession(dm3<? super y22, ? super TSession, ? super e02<? super T>, ? extends Object> dm3Var, e02<? super T> e02Var);

    <T> mk2<T> useSessionIn(y22 y22Var, dm3<? super y22, ? super TSession, ? super e02<? super T>, ? extends Object> dm3Var);
}
