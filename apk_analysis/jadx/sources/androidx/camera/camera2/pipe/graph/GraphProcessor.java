package androidx.camera.camera2.pipe.graph;

import androidx.camera.camera2.pipe.GraphState;
import androidx.camera.camera2.pipe.Request;
import defpackage.y68;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public interface GraphProcessor {
    void abort();

    void close();

    y68<GraphState> getGraphState();

    Request getRepeatingRequest();

    void invalidate();

    void setRepeatingRequest(Request request);

    boolean submit(Request request);

    boolean submit(List<Request> list);

    boolean trigger(Map<?, ? extends Object> map);

    void update3AParameters(Map<?, ? extends Object> map);

    void updateGraphParameters(Map<?, ? extends Object> map);

    void updateRequestListeners(List<? extends Request.Listener> list);
}
