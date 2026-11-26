package androidx.paging;

import defpackage.a32;
import defpackage.ah;
import defpackage.av0;
import defpackage.e02;
import defpackage.j59;
import defpackage.me0;
import defpackage.o22;
import defpackage.r57;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes3.dex */
public final class AsyncPagingDataDiffer$presenter$1<T> extends PagingDataPresenter<T> {
    final /* synthetic */ AsyncPagingDataDiffer<T> this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AsyncPagingDataDiffer$presenter$1(AsyncPagingDataDiffer<T> asyncPagingDataDiffer, o22 o22Var) {
        super(o22Var, null, 2, null);
        this.this$0 = asyncPagingDataDiffer;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // androidx.paging.PagingDataPresenter
    public Object presentPagingDataEvent(PagingDataEvent<T> pagingDataEvent, e02<? super j59> e02Var) throws Throwable {
        AsyncPagingDataDiffer$presenter$1$presentPagingDataEvent$1 asyncPagingDataDiffer$presenter$1$presentPagingDataEvent$1;
        AsyncPagingDataDiffer<T> asyncPagingDataDiffer;
        PagingDataEvent.Refresh refresh;
        if (e02Var instanceof AsyncPagingDataDiffer$presenter$1$presentPagingDataEvent$1) {
            asyncPagingDataDiffer$presenter$1$presentPagingDataEvent$1 = (AsyncPagingDataDiffer$presenter$1$presentPagingDataEvent$1) e02Var;
            int i = asyncPagingDataDiffer$presenter$1$presentPagingDataEvent$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                asyncPagingDataDiffer$presenter$1$presentPagingDataEvent$1.label = i - Integer.MIN_VALUE;
            } else {
                asyncPagingDataDiffer$presenter$1$presentPagingDataEvent$1 = new AsyncPagingDataDiffer$presenter$1$presentPagingDataEvent$1(this, e02Var);
            }
        } else {
            asyncPagingDataDiffer$presenter$1$presentPagingDataEvent$1 = new AsyncPagingDataDiffer$presenter$1$presentPagingDataEvent$1(this, e02Var);
        }
        Object obj = asyncPagingDataDiffer$presenter$1$presentPagingDataEvent$1.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = asyncPagingDataDiffer$presenter$1$presentPagingDataEvent$1.label;
        if (i2 == 0) {
            r57.b(obj);
            if (pagingDataEvent instanceof PagingDataEvent.Refresh) {
                AsyncPagingDataDiffer<T> asyncPagingDataDiffer2 = this.this$0;
                PagingDataEvent.Refresh refresh2 = (PagingDataEvent.Refresh) pagingDataEvent;
                if (refresh2.getPreviousList().getSize() == 0) {
                    if (refresh2.getNewList().getSize() > 0) {
                        ((AsyncPagingDataDiffer) asyncPagingDataDiffer2).updateCallback.onInserted(0, refresh2.getNewList().getSize());
                    }
                } else if (refresh2.getNewList().getSize() != 0) {
                    ((AsyncPagingDataDiffer) asyncPagingDataDiffer2).previousPresenter.set(refresh2.getPreviousList());
                    try {
                        o22 o22Var = ((AsyncPagingDataDiffer) asyncPagingDataDiffer2).workerDispatcher;
                        AsyncPagingDataDiffer$presenter$1$presentPagingDataEvent$2$diffResult$1 asyncPagingDataDiffer$presenter$1$presentPagingDataEvent$2$diffResult$1 = new AsyncPagingDataDiffer$presenter$1$presentPagingDataEvent$2$diffResult$1(refresh2, asyncPagingDataDiffer2, null);
                        asyncPagingDataDiffer$presenter$1$presentPagingDataEvent$1.L$0 = pagingDataEvent;
                        asyncPagingDataDiffer$presenter$1$presentPagingDataEvent$1.L$1 = asyncPagingDataDiffer2;
                        asyncPagingDataDiffer$presenter$1$presentPagingDataEvent$1.L$2 = refresh2;
                        asyncPagingDataDiffer$presenter$1$presentPagingDataEvent$1.label = 1;
                        Object objD = av0.d(o22Var, asyncPagingDataDiffer$presenter$1$presentPagingDataEvent$2$diffResult$1, asyncPagingDataDiffer$presenter$1$presentPagingDataEvent$1);
                        if (objD == a32Var) {
                            return a32Var;
                        }
                        asyncPagingDataDiffer = asyncPagingDataDiffer2;
                        obj = objD;
                        refresh = refresh2;
                    } catch (Throwable th) {
                        th = th;
                        asyncPagingDataDiffer = asyncPagingDataDiffer2;
                        ((AsyncPagingDataDiffer) asyncPagingDataDiffer).previousPresenter.set(null);
                        throw th;
                    }
                } else if (refresh2.getPreviousList().getSize() > 0) {
                    ((AsyncPagingDataDiffer) asyncPagingDataDiffer2).updateCallback.onRemoved(0, refresh2.getPreviousList().getSize());
                }
            } else if (pagingDataEvent instanceof PagingDataEvent.Prepend) {
                AsyncPagingDataDiffer<T> asyncPagingDataDiffer3 = this.this$0;
                PagingDataEvent.Prepend prepend = (PagingDataEvent.Prepend) pagingDataEvent;
                int size = prepend.getInserted().size();
                int iMin = Math.min(prepend.getOldPlaceholdersBefore(), size);
                int oldPlaceholdersBefore = prepend.getOldPlaceholdersBefore() - iMin;
                int i3 = size - iMin;
                if (iMin > 0) {
                    ((AsyncPagingDataDiffer) asyncPagingDataDiffer3).updateCallback.onChanged(oldPlaceholdersBefore, iMin, null);
                }
                if (i3 > 0) {
                    ((AsyncPagingDataDiffer) asyncPagingDataDiffer3).updateCallback.onInserted(0, i3);
                }
                int newPlaceholdersBefore = (prepend.getNewPlaceholdersBefore() - prepend.getOldPlaceholdersBefore()) + iMin;
                if (newPlaceholdersBefore > 0) {
                    ((AsyncPagingDataDiffer) asyncPagingDataDiffer3).updateCallback.onInserted(0, newPlaceholdersBefore);
                } else if (newPlaceholdersBefore < 0) {
                    ((AsyncPagingDataDiffer) asyncPagingDataDiffer3).updateCallback.onRemoved(0, -newPlaceholdersBefore);
                }
            } else if (pagingDataEvent instanceof PagingDataEvent.Append) {
                AsyncPagingDataDiffer<T> asyncPagingDataDiffer4 = this.this$0;
                PagingDataEvent.Append append = (PagingDataEvent.Append) pagingDataEvent;
                int size2 = append.getInserted().size();
                int iMin2 = Math.min(append.getOldPlaceholdersAfter(), size2);
                int startIndex = append.getStartIndex();
                int i4 = size2 - iMin2;
                int i5 = startIndex + iMin2;
                if (iMin2 > 0) {
                    ((AsyncPagingDataDiffer) asyncPagingDataDiffer4).updateCallback.onChanged(startIndex, iMin2, null);
                }
                if (i4 > 0) {
                    ((AsyncPagingDataDiffer) asyncPagingDataDiffer4).updateCallback.onInserted(i5, i4);
                }
                int newPlaceholdersAfter = (append.getNewPlaceholdersAfter() - append.getOldPlaceholdersAfter()) + iMin2;
                int newPlaceholdersAfter2 = append.getNewPlaceholdersAfter() + append.getStartIndex() + size2;
                if (newPlaceholdersAfter > 0) {
                    ((AsyncPagingDataDiffer) asyncPagingDataDiffer4).updateCallback.onInserted(newPlaceholdersAfter2 - newPlaceholdersAfter, newPlaceholdersAfter);
                } else if (newPlaceholdersAfter < 0) {
                    ((AsyncPagingDataDiffer) asyncPagingDataDiffer4).updateCallback.onRemoved(newPlaceholdersAfter2, -newPlaceholdersAfter);
                }
            } else if (pagingDataEvent instanceof PagingDataEvent.DropPrepend) {
                AsyncPagingDataDiffer<T> asyncPagingDataDiffer5 = this.this$0;
                PagingDataEvent.DropPrepend dropPrepend = (PagingDataEvent.DropPrepend) pagingDataEvent;
                int newPlaceholdersBefore2 = (dropPrepend.getNewPlaceholdersBefore() - dropPrepend.getDropCount()) - dropPrepend.getOldPlaceholdersBefore();
                if (newPlaceholdersBefore2 > 0) {
                    ((AsyncPagingDataDiffer) asyncPagingDataDiffer5).updateCallback.onInserted(0, newPlaceholdersBefore2);
                } else if (newPlaceholdersBefore2 < 0) {
                    ((AsyncPagingDataDiffer) asyncPagingDataDiffer5).updateCallback.onRemoved(0, -newPlaceholdersBefore2);
                }
                int iMax = Math.max(0, dropPrepend.getOldPlaceholdersBefore() + newPlaceholdersBefore2);
                int newPlaceholdersBefore3 = dropPrepend.getNewPlaceholdersBefore() - iMax;
                if (newPlaceholdersBefore3 > 0) {
                    ((AsyncPagingDataDiffer) asyncPagingDataDiffer5).updateCallback.onChanged(iMax, newPlaceholdersBefore3, null);
                }
            } else {
                if (!(pagingDataEvent instanceof PagingDataEvent.DropAppend)) {
                    me0.e();
                    return null;
                }
                AsyncPagingDataDiffer<T> asyncPagingDataDiffer6 = this.this$0;
                PagingDataEvent.DropAppend dropAppend = (PagingDataEvent.DropAppend) pagingDataEvent;
                int newPlaceholdersAfter3 = (dropAppend.getNewPlaceholdersAfter() - dropAppend.getDropCount()) - dropAppend.getOldPlaceholdersAfter();
                int newPlaceholdersAfter4 = dropAppend.getNewPlaceholdersAfter() + dropAppend.getStartIndex();
                if (newPlaceholdersAfter3 > 0) {
                    ((AsyncPagingDataDiffer) asyncPagingDataDiffer6).updateCallback.onInserted(newPlaceholdersAfter4 - newPlaceholdersAfter3, newPlaceholdersAfter3);
                } else if (newPlaceholdersAfter3 < 0) {
                    ((AsyncPagingDataDiffer) asyncPagingDataDiffer6).updateCallback.onRemoved(newPlaceholdersAfter4, -newPlaceholdersAfter3);
                }
                int newPlaceholdersAfter5 = (dropAppend.getNewPlaceholdersAfter() - dropAppend.getOldPlaceholdersAfter()) + (newPlaceholdersAfter3 < 0 ? Math.min(dropAppend.getOldPlaceholdersAfter(), -newPlaceholdersAfter3) : 0);
                if (newPlaceholdersAfter5 > 0) {
                    ((AsyncPagingDataDiffer) asyncPagingDataDiffer6).updateCallback.onChanged(dropAppend.getStartIndex(), newPlaceholdersAfter5, null);
                }
            }
            return j59.a;
        }
        if (i2 != 1) {
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        refresh = (PagingDataEvent.Refresh) asyncPagingDataDiffer$presenter$1$presentPagingDataEvent$1.L$2;
        asyncPagingDataDiffer = (AsyncPagingDataDiffer) asyncPagingDataDiffer$presenter$1$presentPagingDataEvent$1.L$1;
        try {
            r57.b(obj);
        } catch (Throwable th2) {
            th = th2;
            ((AsyncPagingDataDiffer) asyncPagingDataDiffer).previousPresenter.set(null);
            throw th;
        }
        PlaceholderPaddedDiffResult placeholderPaddedDiffResult = (PlaceholderPaddedDiffResult) obj;
        ((AsyncPagingDataDiffer) asyncPagingDataDiffer).previousPresenter.set(null);
        PlaceholderPaddedListDiffHelperKt.dispatchDiff(refresh.getPreviousList(), ((AsyncPagingDataDiffer) asyncPagingDataDiffer).updateCallback, refresh.getNewList(), placeholderPaddedDiffResult);
        int iTransformAnchorIndex = PlaceholderPaddedListDiffHelperKt.transformAnchorIndex(refresh.getPreviousList(), placeholderPaddedDiffResult, refresh.getNewList(), ((AsyncPagingDataDiffer) asyncPagingDataDiffer).lastAccessedIndex);
        ((AsyncPagingDataDiffer) asyncPagingDataDiffer).lastAccessedIndex = iTransformAnchorIndex;
        get(iTransformAnchorIndex);
        return j59.a;
    }
}
