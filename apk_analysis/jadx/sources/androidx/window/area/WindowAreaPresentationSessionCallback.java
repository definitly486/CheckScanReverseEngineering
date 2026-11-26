package androidx.window.area;

/* JADX INFO: loaded from: classes3.dex */
public interface WindowAreaPresentationSessionCallback {
    void onContainerVisibilityChanged(boolean z);

    void onSessionEnded(Throwable th);

    void onSessionStarted(WindowAreaSessionPresenter windowAreaSessionPresenter);
}
