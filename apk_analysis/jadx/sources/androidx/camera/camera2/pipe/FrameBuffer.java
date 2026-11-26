package androidx.camera.camera2.pipe;

import defpackage.nl3;
import defpackage.y68;
import defpackage.ys7;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public interface FrameBuffer extends AutoCloseable {
    @Override // java.lang.AutoCloseable
    void close();

    int getCapacity();

    ys7<FrameReference> getFrameFlow();

    Map<Object, Object> getParameters();

    y68<Integer> getSize();

    Set<StreamId> getStreams();

    List<FrameReference> peekAllReferences();

    FrameReference peekFirstReference();

    FrameReference peekLastReference();

    List<Frame> removeAllFrameReferencesAndAcquire(nl3<? super FrameReference, Boolean> nl3Var);

    List<FrameReference> removeAllReferences();

    Frame removeFirstFrameReferenceAndAcquire(nl3<? super FrameReference, Boolean> nl3Var);

    FrameReference removeFirstReference();

    Frame removeLastFrameReferenceAndAcquire(nl3<? super FrameReference, Boolean> nl3Var);

    FrameReference removeLastReference();

    void setCapacity(int i);
}
