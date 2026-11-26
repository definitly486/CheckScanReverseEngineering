package defpackage;

import androidx.compose.foundation.lazy.layout.AndroidPrefetchScheduler;
import androidx.compose.foundation.lazy.layout.PriorityTask;
import java.util.Comparator;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class lj implements Comparator {
    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return AndroidPrefetchScheduler.prefetchRequests$lambda$0((PriorityTask) obj, (PriorityTask) obj2);
    }
}
