package androidx.camera.camera2.pipe;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface RequestListeners {
    void add(Request.Listener listener);

    void addAll(List<? extends Request.Listener> list);

    void remove(Request.Listener listener);

    void removeAll(List<? extends Request.Listener> list);
}
