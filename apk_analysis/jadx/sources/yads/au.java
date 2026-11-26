package yads;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes6.dex */
public final class au {
    public final ExecutorService a;
    public final ju b;
    public final Handler c;

    public au() {
        ExecutorService executorServiceNewSingleThreadExecutor = Executors.newSingleThreadExecutor();
        ju juVar = new ju();
        Handler handler = new Handler(Looper.getMainLooper());
        this.a = executorServiceNewSingleThreadExecutor;
        this.b = juVar;
        this.c = handler;
    }
}
