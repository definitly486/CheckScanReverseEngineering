package androidx.lifecycle;

import android.app.Application;

/* JADX INFO: loaded from: classes3.dex */
public class AndroidViewModel extends ViewModel {
    private final Application application;

    public AndroidViewModel(Application application) {
        application.getClass();
        this.application = application;
    }

    public <T extends Application> T getApplication() {
        T t = (T) this.application;
        t.getClass();
        return t;
    }
}
