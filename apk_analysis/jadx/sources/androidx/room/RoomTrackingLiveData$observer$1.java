package androidx.room;

import androidx.arch.core.executor.ArchTaskExecutor;
import defpackage.xl;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public final class RoomTrackingLiveData$observer$1 extends InvalidationTracker.Observer {
    final /* synthetic */ RoomTrackingLiveData<T> this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RoomTrackingLiveData$observer$1(String[] strArr, RoomTrackingLiveData<T> roomTrackingLiveData) {
        super(strArr);
        this.this$0 = roomTrackingLiveData;
    }

    @Override // androidx.room.InvalidationTracker.Observer
    public void onInvalidated(Set<String> set) {
        set.getClass();
        ArchTaskExecutor.getInstance().executeOnMainThread(new xl(this.this$0, 3));
    }
}
