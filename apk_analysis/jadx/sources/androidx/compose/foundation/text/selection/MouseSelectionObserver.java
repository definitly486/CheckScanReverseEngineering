package androidx.compose.foundation.text.selection;

/* JADX INFO: loaded from: classes.dex */
public interface MouseSelectionObserver {
    /* JADX INFO: renamed from: onDrag-3MmeM6k */
    boolean mo2884onDrag3MmeM6k(long j, SelectionAdjustment selectionAdjustment);

    void onDragDone();

    /* JADX INFO: renamed from: onExtend-k-4lQ0M */
    boolean mo2885onExtendk4lQ0M(long j);

    /* JADX INFO: renamed from: onExtendDrag-k-4lQ0M */
    boolean mo2886onExtendDragk4lQ0M(long j);

    /* JADX INFO: renamed from: onStart-9KIMszo */
    boolean mo2887onStart9KIMszo(long j, SelectionAdjustment selectionAdjustment, int i);
}
