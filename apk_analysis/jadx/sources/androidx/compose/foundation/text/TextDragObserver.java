package androidx.compose.foundation.text;

import androidx.compose.foundation.text.selection.SelectionAdjustment;

/* JADX INFO: loaded from: classes.dex */
public interface TextDragObserver {
    void onCancel();

    /* JADX INFO: renamed from: onDown-k-4lQ0M, reason: not valid java name */
    void mo2596onDownk4lQ0M(long j);

    /* JADX INFO: renamed from: onDrag-k-4lQ0M, reason: not valid java name */
    void mo2597onDragk4lQ0M(long j);

    /* JADX INFO: renamed from: onStart-3MmeM6k, reason: not valid java name */
    void mo2598onStart3MmeM6k(long j, SelectionAdjustment selectionAdjustment);

    void onStop();

    void onUp();
}
