package androidx.compose.foundation.gestures;

import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.geometry.Rect;
import defpackage.a31;
import defpackage.aa4;
import defpackage.j59;
import defpackage.kx6;
import defpackage.nl3;
import defpackage.y74;
import defpackage.yt0;
import java.util.concurrent.CancellationException;

/* JADX INFO: loaded from: classes.dex */
public final class BringIntoViewRequestPriorityQueue {
    public static final int $stable = MutableVector.$stable;
    private final MutableVector<ContentInViewNode.Request> requests = new MutableVector<>(new ContentInViewNode.Request[16], 0);

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 enqueue$lambda$1(BringIntoViewRequestPriorityQueue bringIntoViewRequestPriorityQueue, ContentInViewNode.Request request, Throwable th) {
        bringIntoViewRequestPriorityQueue.requests.remove(request);
        return j59.a;
    }

    public final void cancelAndRemoveAll(Throwable th) {
        MutableVector<ContentInViewNode.Request> mutableVector = this.requests;
        int size = mutableVector.getSize();
        a31[] a31VarArr = new a31[size];
        for (int i = 0; i < size; i++) {
            a31VarArr[i] = mutableVector.content[i].getContinuation();
        }
        for (int i2 = 0; i2 < size; i2++) {
            a31VarArr[i2].d(th);
        }
        if (this.requests.getSize() == 0) {
            return;
        }
        InlineClassHelperKt.throwIllegalStateException("uncancelled requests present");
    }

    public final boolean enqueue(ContentInViewNode.Request request) {
        Rect rectInvoke = request.getCurrentBounds().invoke();
        int i = 0;
        if (rectInvoke == null) {
            request.getContinuation().resumeWith(j59.a);
            return false;
        }
        request.getContinuation().n(new yt0(i, this, request));
        y74 y74VarN = kx6.n(0, this.requests.getSize());
        int i2 = y74VarN.b;
        int i3 = y74VarN.c;
        if (i2 <= i3) {
            while (true) {
                Rect rectInvoke2 = this.requests.content[i3].getCurrentBounds().invoke();
                if (rectInvoke2 != null) {
                    Rect rectIntersect = rectInvoke.intersect(rectInvoke2);
                    if (!aa4.e(rectIntersect, rectInvoke)) {
                        if (!aa4.e(rectIntersect, rectInvoke2)) {
                            CancellationException cancellationException = new CancellationException("bringIntoView call interrupted by a newer, non-overlapping call");
                            int size = this.requests.getSize() - 1;
                            if (size <= i3) {
                                while (true) {
                                    this.requests.content[i3].getContinuation().d(cancellationException);
                                    if (size == i3) {
                                        break;
                                    }
                                    size++;
                                }
                            }
                        }
                    } else {
                        this.requests.add(i3 + 1, request);
                        return true;
                    }
                }
                if (i3 != i2) {
                    i3--;
                }
            }
        }
        this.requests.add(0, request);
        return true;
    }

    public final void forEachFromSmallest(nl3<? super Rect, j59> nl3Var) {
        MutableVector mutableVector = this.requests;
        int size = mutableVector.getSize() - 1;
        Object[] objArr = mutableVector.content;
        if (size < objArr.length) {
            while (size >= 0) {
                nl3Var.invoke(((ContentInViewNode.Request) objArr[size]).getCurrentBounds().invoke());
                size--;
            }
        }
    }

    public final int getSize() {
        return this.requests.getSize();
    }

    public final boolean isEmpty() {
        return this.requests.getSize() == 0;
    }

    public final void resumeAndRemoveAll() {
        y74 y74VarN = kx6.n(0, this.requests.getSize());
        int i = y74VarN.b;
        int i2 = y74VarN.c;
        if (i <= i2) {
            while (true) {
                this.requests.content[i].getContinuation().resumeWith(j59.a);
                if (i == i2) {
                    break;
                } else {
                    i++;
                }
            }
        }
        this.requests.clear();
    }

    public final void resumeAndRemoveWhile(nl3<? super Rect, Boolean> nl3Var) {
        while (this.requests.getSize() != 0 && nl3Var.invoke(((ContentInViewNode.Request) this.requests.last()).getCurrentBounds().invoke()).booleanValue()) {
            ((ContentInViewNode.Request) this.requests.removeAt(this.requests.getSize() - 1)).getContinuation().resumeWith(j59.a);
        }
    }
}
