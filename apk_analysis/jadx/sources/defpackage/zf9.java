package defpackage;

import androidx.webkit.WebStorageCompat;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class zf9 implements Executor {
    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        WebStorageCompat.lambda$deleteBrowsingData$0(runnable);
    }
}
