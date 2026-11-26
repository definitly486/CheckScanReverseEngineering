package yads;

import android.content.Context;
import android.database.ContentObserver;
import android.media.AudioManager;
import android.os.Handler;
import androidx.media3.common.MimeTypes;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes6.dex */
public final class aq6 extends ContentObserver {
    public final Handler a;
    public final Context b;
    public final AudioManager c;
    public final wo6 d;
    public final oq6 e;
    public final AtomicReference f;
    public final AtomicBoolean g;
    public final ExecutorService h;

    public aq6(Handler handler, Context context, wo6 wo6Var, oq6 oq6Var) {
        super(handler);
        this.f = new AtomicReference(Float.valueOf(-1.0f));
        this.g = new AtomicBoolean(false);
        this.h = Executors.newSingleThreadExecutor();
        this.a = handler;
        this.b = context;
        this.c = (AudioManager) context.getSystemService(MimeTypes.BASE_TYPE_AUDIO);
        this.d = wo6Var;
        this.e = oq6Var;
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        if (this.g.getAndSet(true)) {
            return;
        }
        this.h.submit(new wp6(this));
    }
}
