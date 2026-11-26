package androidx.compose.foundation.gestures;

import androidx.compose.foundation.MutatePriority;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.input.nestedscroll.NestedScrollSource;
import androidx.compose.ui.unit.IntOffset;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.ll3;
import defpackage.mb4;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.pib;
import defpackage.qb4;
import defpackage.r57;
import defpackage.y22;
import java.util.concurrent.CancellationException;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.compose.foundation.gestures.ContentInViewNode$launchAnimation$2", f = "ContentInViewNode.kt", l = {212}, m = "invokeSuspend", v = 1)
public final class ContentInViewNode$launchAnimation$2 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    final /* synthetic */ UpdatableAnimationState $animationState;
    final /* synthetic */ BringIntoViewSpec $bringIntoViewSpec;
    final /* synthetic */ long $viewportAdjustmentForReverseScroll;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ ContentInViewNode this$0;

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.ContentInViewNode$launchAnimation$2$1, reason: invalid class name */
    @bd2(c = "androidx.compose.foundation.gestures.ContentInViewNode$launchAnimation$2$1", f = "ContentInViewNode.kt", l = {219}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1 extends pg8 implements bm3<NestedScrollScope, e02<? super j59>, Object> {
        final /* synthetic */ mb4 $animationJob;
        final /* synthetic */ UpdatableAnimationState $animationState;
        final /* synthetic */ BringIntoViewSpec $bringIntoViewSpec;
        final /* synthetic */ long $viewportAdjustmentForReverseScroll;
        private /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ ContentInViewNode this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(UpdatableAnimationState updatableAnimationState, ContentInViewNode contentInViewNode, BringIntoViewSpec bringIntoViewSpec, long j, mb4 mb4Var, e02<? super AnonymousClass1> e02Var) {
            super(2, e02Var);
            this.$animationState = updatableAnimationState;
            this.this$0 = contentInViewNode;
            this.$bringIntoViewSpec = bringIntoViewSpec;
            this.$viewportAdjustmentForReverseScroll = j;
            this.$animationJob = mb4Var;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final j59 invokeSuspend$lambda$0(ContentInViewNode contentInViewNode, UpdatableAnimationState updatableAnimationState, mb4 mb4Var, NestedScrollScope nestedScrollScope, float f) {
            float f2 = contentInViewNode.reverseDirection ? 1.0f : -1.0f;
            ScrollingLogic scrollingLogic = contentInViewNode.scrollingLogic;
            float fM1619toFloatk4lQ0M = scrollingLogic.m1619toFloatk4lQ0M(scrollingLogic.m1617reverseIfNeededMKHz9U(nestedScrollScope.mo1559scrollByOzD1aCk(scrollingLogic.m1617reverseIfNeededMKHz9U(scrollingLogic.m1620toOffsettuRUvjQ(f2 * f)), NestedScrollSource.Companion.m7438getUserInputWNlRxjI()))) * f2;
            if (Math.abs(fM1619toFloatk4lQ0M) < Math.abs(f)) {
                mb4Var.cancel(pib.a("Scroll animation cancelled because scroll was not consumed (" + fM1619toFloatk4lQ0M + " < " + f + ')', null));
            }
            return j59.a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final j59 invokeSuspend$lambda$1(ContentInViewNode contentInViewNode, UpdatableAnimationState updatableAnimationState, BringIntoViewSpec bringIntoViewSpec) {
            ContentInViewNode contentInViewNode2;
            Rect rect;
            boolean zM1464isMaxVisibleEQwtKw$default;
            BringIntoViewRequestPriorityQueue bringIntoViewRequestPriorityQueue = contentInViewNode.bringIntoViewRequests;
            while (true) {
                if (bringIntoViewRequestPriorityQueue.requests.getSize() == 0) {
                    contentInViewNode2 = contentInViewNode;
                    break;
                }
                Rect rectInvoke = ((ContentInViewNode.Request) bringIntoViewRequestPriorityQueue.requests.last()).getCurrentBounds().invoke();
                if (rectInvoke == null) {
                    contentInViewNode2 = contentInViewNode;
                    zM1464isMaxVisibleEQwtKw$default = true;
                } else {
                    contentInViewNode2 = contentInViewNode;
                    zM1464isMaxVisibleEQwtKw$default = ContentInViewNode.m1464isMaxVisibleEQwtKw$default(contentInViewNode2, rectInvoke, 0L, 0L, 3, null);
                }
                if (!zM1464isMaxVisibleEQwtKw$default) {
                    break;
                }
                ((ContentInViewNode.Request) bringIntoViewRequestPriorityQueue.requests.removeAt(bringIntoViewRequestPriorityQueue.requests.getSize() - 1)).getContinuation().resumeWith(j59.a);
                contentInViewNode = contentInViewNode2;
            }
            if (contentInViewNode2.trackingFocusedChild && (rect = (Rect) contentInViewNode2.getFocusedRect.invoke()) != null && ContentInViewNode.m1464isMaxVisibleEQwtKw$default(contentInViewNode2, rect, 0L, 0L, 3, null)) {
                contentInViewNode2.trackingFocusedChild = false;
            }
            updatableAnimationState.setValue(contentInViewNode2.m1460calculateScrollDeltaI_oMVgE(bringIntoViewSpec, IntOffset.Companion.m9181getZeronOccac()));
            return j59.a;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$animationState, this.this$0, this.$bringIntoViewSpec, this.$viewportAdjustmentForReverseScroll, this.$animationJob, e02Var);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // defpackage.bm3
        public final Object invoke(NestedScrollScope nestedScrollScope, e02<? super j59> e02Var) {
            return ((AnonymousClass1) create(nestedScrollScope, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                final NestedScrollScope nestedScrollScope = (NestedScrollScope) this.L$0;
                this.$animationState.setValue(this.this$0.m1460calculateScrollDeltaI_oMVgE(this.$bringIntoViewSpec, this.$viewportAdjustmentForReverseScroll));
                final UpdatableAnimationState updatableAnimationState = this.$animationState;
                final ContentInViewNode contentInViewNode = this.this$0;
                final mb4 mb4Var = this.$animationJob;
                nl3<? super Float, j59> nl3Var = new nl3() { // from class: androidx.compose.foundation.gestures.h
                    @Override // defpackage.nl3
                    public final Object invoke(Object obj2) {
                        return ContentInViewNode$launchAnimation$2.AnonymousClass1.invokeSuspend$lambda$0(contentInViewNode, updatableAnimationState, mb4Var, nestedScrollScope, ((Float) obj2).floatValue());
                    }
                };
                final BringIntoViewSpec bringIntoViewSpec = this.$bringIntoViewSpec;
                ll3<j59> ll3Var = new ll3() { // from class: androidx.compose.foundation.gestures.i
                    @Override // defpackage.ll3
                    public final Object invoke() {
                        return ContentInViewNode$launchAnimation$2.AnonymousClass1.invokeSuspend$lambda$1(contentInViewNode, updatableAnimationState, bringIntoViewSpec);
                    }
                };
                this.label = 1;
                if (updatableAnimationState.animateToZero(nl3Var, ll3Var, this) == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            return j59.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ContentInViewNode$launchAnimation$2(ContentInViewNode contentInViewNode, UpdatableAnimationState updatableAnimationState, BringIntoViewSpec bringIntoViewSpec, long j, e02<? super ContentInViewNode$launchAnimation$2> e02Var) {
        super(2, e02Var);
        this.this$0 = contentInViewNode;
        this.$animationState = updatableAnimationState;
        this.$bringIntoViewSpec = bringIntoViewSpec;
        this.$viewportAdjustmentForReverseScroll = j;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        ContentInViewNode$launchAnimation$2 contentInViewNode$launchAnimation$2 = new ContentInViewNode$launchAnimation$2(this.this$0, this.$animationState, this.$bringIntoViewSpec, this.$viewportAdjustmentForReverseScroll, e02Var);
        contentInViewNode$launchAnimation$2.L$0 = obj;
        return contentInViewNode$launchAnimation$2;
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((ContentInViewNode$launchAnimation$2) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        CancellationException cancellationException = null;
        try {
            try {
                if (i == 0) {
                    r57.b(obj);
                    mb4 mb4VarF = qb4.f(((y22) this.L$0).getCoroutineContext());
                    this.this$0.isAnimationRunning = true;
                    ScrollingLogic scrollingLogic = this.this$0.scrollingLogic;
                    MutatePriority mutatePriority = MutatePriority.Default;
                    AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$animationState, this.this$0, this.$bringIntoViewSpec, this.$viewportAdjustmentForReverseScroll, mb4VarF, null);
                    this.label = 1;
                    if (scrollingLogic.scroll(mutatePriority, anonymousClass1, this) == a32Var) {
                        return a32Var;
                    }
                } else {
                    if (i != 1) {
                        ah.f("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    r57.b(obj);
                }
                this.this$0.bringIntoViewRequests.resumeAndRemoveAll();
                this.this$0.isAnimationRunning = false;
                this.this$0.bringIntoViewRequests.cancelAndRemoveAll(null);
                this.this$0.trackingFocusedChild = false;
                return j59.a;
            } catch (CancellationException e) {
                cancellationException = e;
                throw cancellationException;
            }
        } catch (Throwable th) {
            this.this$0.isAnimationRunning = false;
            this.this$0.bringIntoViewRequests.cancelAndRemoveAll(cancellationException);
            this.this$0.trackingFocusedChild = false;
            throw th;
        }
    }
}
