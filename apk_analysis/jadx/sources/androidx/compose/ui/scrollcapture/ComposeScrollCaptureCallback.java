package androidx.compose.ui.scrollcapture;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.os.CancellationSignal;
import android.view.ScrollCaptureCallback;
import android.view.ScrollCaptureSession;
import android.view.View;
import androidx.compose.runtime.MonotonicFrameClockKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.RectHelper_androidKt;
import androidx.compose.ui.semantics.SemanticsNode;
import androidx.compose.ui.unit.IntRect;
import androidx.core.internal.view.SupportMenu;
import androidx.media3.extractor.ts.TsExtractor;
import defpackage.a32;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.dx6;
import defpackage.e02;
import defpackage.eo5;
import defpackage.f02;
import defpackage.gh4;
import defpackage.j59;
import defpackage.kz1;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.r57;
import defpackage.w65;
import defpackage.xp;
import defpackage.y22;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes2.dex */
public final class ComposeScrollCaptureCallback implements ScrollCaptureCallback {
    public static final int $stable = 8;
    private final View composeView;
    private final y22 coroutineScope;
    private final ScrollCaptureSessionListener listener;
    private final SemanticsNode node;
    private int requestCount;
    private final RelativeScroller scrollTracker;
    private final IntRect viewportBoundsInWindow;

    public interface ScrollCaptureSessionListener {
        void onSessionEnded();

        void onSessionStarted();
    }

    /* JADX INFO: renamed from: androidx.compose.ui.scrollcapture.ComposeScrollCaptureCallback$onScrollCaptureEnd$1, reason: invalid class name */
    @bd2(c = "androidx.compose.ui.scrollcapture.ComposeScrollCaptureCallback$onScrollCaptureEnd$1", f = "ComposeScrollCaptureCallback.android.kt", l = {TsExtractor.TS_PACKET_SIZE}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        final /* synthetic */ Runnable $onReady;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Runnable runnable, e02<? super AnonymousClass1> e02Var) {
            super(2, e02Var);
            this.$onReady = runnable;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return ComposeScrollCaptureCallback.this.new AnonymousClass1(this.$onReady, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((AnonymousClass1) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                RelativeScroller relativeScroller = ComposeScrollCaptureCallback.this.scrollTracker;
                this.label = 1;
                if (relativeScroller.scrollTo(0.0f, this) == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            ComposeScrollCaptureCallback.this.listener.onSessionEnded();
            this.$onReady.run();
            return j59.a;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.ui.scrollcapture.ComposeScrollCaptureCallback$onScrollCaptureImageRequest$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.compose.ui.scrollcapture.ComposeScrollCaptureCallback$onScrollCaptureImageRequest$1", f = "ComposeScrollCaptureCallback.android.kt", l = {120}, m = "invokeSuspend", v = 1)
    public static final class C06521 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        final /* synthetic */ Rect $captureArea;
        final /* synthetic */ Consumer<Rect> $onComplete;
        final /* synthetic */ ScrollCaptureSession $session;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C06521(ScrollCaptureSession scrollCaptureSession, Rect rect, Consumer<Rect> consumer, e02<? super C06521> e02Var) {
            super(2, e02Var);
            this.$session = scrollCaptureSession;
            this.$captureArea = rect;
            this.$onComplete = consumer;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return ComposeScrollCaptureCallback.this.new C06521(this.$session, this.$captureArea, this.$onComplete, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((C06521) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                ComposeScrollCaptureCallback composeScrollCaptureCallback = ComposeScrollCaptureCallback.this;
                ScrollCaptureSession scrollCaptureSession = this.$session;
                IntRect composeIntRect = RectHelper_androidKt.toComposeIntRect(this.$captureArea);
                this.label = 1;
                obj = composeScrollCaptureCallback.onScrollCaptureImageRequest(scrollCaptureSession, composeIntRect, this);
                if (obj == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            this.$onComplete.accept(RectHelper_androidKt.toAndroidRect((IntRect) obj));
            return j59.a;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.ui.scrollcapture.ComposeScrollCaptureCallback$onScrollCaptureImageRequest$2, reason: invalid class name */
    @bd2(c = "androidx.compose.ui.scrollcapture.ComposeScrollCaptureCallback", f = "ComposeScrollCaptureCallback.android.kt", l = {134, 137}, m = "onScrollCaptureImageRequest", v = 1)
    public static final class AnonymousClass2 extends f02 {
        int I$0;
        int I$1;
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        public AnonymousClass2(e02<? super AnonymousClass2> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ComposeScrollCaptureCallback.this.onScrollCaptureImageRequest(null, null, this);
        }
    }

    public ComposeScrollCaptureCallback(SemanticsNode semanticsNode, IntRect intRect, y22 y22Var, ScrollCaptureSessionListener scrollCaptureSessionListener, View view) {
        this.node = semanticsNode;
        this.viewportBoundsInWindow = intRect;
        this.listener = scrollCaptureSessionListener;
        this.composeView = view;
        this.coroutineScope = new kz1(y22Var.getCoroutineContext().plus(DisableAnimationMotionDurationScale.INSTANCE));
        this.scrollTracker = new RelativeScroller(intRect.getHeight(), new ComposeScrollCaptureCallback$scrollTracker$1(this, null));
    }

    private final void drawDebugBackground(Canvas canvas) {
        Color.Companion companion = Color.Companion;
        dx6.b.getClass();
        canvas.drawColor(ColorKt.m6286toArgb8_81llA(Color.Companion.m6256hslJlNiLsg$default(companion, 360.0f * dx6.c.b().nextFloat(), 0.75f, 0.5f, 1.0f, null, 16, null)));
    }

    private final void drawDebugOverlay(Canvas canvas) {
        Paint paint = new Paint();
        paint.setColor(SupportMenu.CATEGORY_MASK);
        paint.setTextSize(48.0f);
        canvas.drawCircle(0.0f, 0.0f, 20.0f, paint);
        canvas.drawCircle(canvas.getWidth(), 0.0f, 20.0f, paint);
        canvas.drawCircle(canvas.getWidth(), canvas.getHeight(), 20.0f, paint);
        canvas.drawCircle(0.0f, canvas.getHeight(), 20.0f, paint);
        canvas.drawText(String.valueOf(this.requestCount), canvas.getWidth() / 2.0f, canvas.getHeight() / 2.0f, paint);
        this.requestCount++;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:25:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:27:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object onScrollCaptureImageRequest(ScrollCaptureSession scrollCaptureSession, IntRect intRect, e02<? super IntRect> e02Var) {
        AnonymousClass2 anonymousClass2;
        int top;
        int bottom;
        IntRect intRect2;
        int i;
        ScrollCaptureSession scrollCaptureSession2;
        int i2;
        int iMapOffsetToViewport;
        int iMapOffsetToViewport2;
        IntRect intRectCopy$default;
        Canvas canvasLockHardwareCanvas;
        if (e02Var instanceof AnonymousClass2) {
            anonymousClass2 = (AnonymousClass2) e02Var;
            int i3 = anonymousClass2.label;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                anonymousClass2.label = i3 - Integer.MIN_VALUE;
            } else {
                anonymousClass2 = new AnonymousClass2(e02Var);
            }
        } else {
            anonymousClass2 = new AnonymousClass2(e02Var);
        }
        Object obj = anonymousClass2.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i4 = anonymousClass2.label;
        if (i4 == 0) {
            r57.b(obj);
            top = intRect.getTop();
            bottom = intRect.getBottom();
            RelativeScroller relativeScroller = this.scrollTracker;
            anonymousClass2.L$0 = scrollCaptureSession;
            anonymousClass2.L$1 = intRect;
            anonymousClass2.I$0 = top;
            anonymousClass2.I$1 = bottom;
            anonymousClass2.label = 1;
            if (relativeScroller.scrollRangeToCenter(top, bottom, anonymousClass2) != a32Var) {
            }
            return a32Var;
        }
        if (i4 == 1) {
            int i5 = anonymousClass2.I$1;
            int i6 = anonymousClass2.I$0;
            IntRect intRect3 = (IntRect) anonymousClass2.L$1;
            ScrollCaptureSession scrollCaptureSessionC = xp.c(anonymousClass2.L$0);
            r57.b(obj);
            top = i6;
            intRect = intRect3;
            bottom = i5;
            scrollCaptureSession = scrollCaptureSessionC;
        } else {
            if (i4 != 2) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            i2 = anonymousClass2.I$1;
            i = anonymousClass2.I$0;
            IntRect intRect4 = (IntRect) anonymousClass2.L$1;
            ScrollCaptureSession scrollCaptureSessionC2 = xp.c(anonymousClass2.L$0);
            r57.b(obj);
            scrollCaptureSession2 = scrollCaptureSessionC2;
            intRect2 = intRect4;
        }
        iMapOffsetToViewport = this.scrollTracker.mapOffsetToViewport(i);
        iMapOffsetToViewport2 = this.scrollTracker.mapOffsetToViewport(i2);
        intRectCopy$default = IntRect.copy$default(intRect2, 0, iMapOffsetToViewport, 0, iMapOffsetToViewport2, 5, null);
        if (iMapOffsetToViewport == iMapOffsetToViewport2) {
            return IntRect.Companion.getZero();
        }
        canvasLockHardwareCanvas = scrollCaptureSession2.getSurface().lockHardwareCanvas();
        try {
            canvasLockHardwareCanvas.save();
            canvasLockHardwareCanvas.translate(-intRectCopy$default.getLeft(), -intRectCopy$default.getTop());
            canvasLockHardwareCanvas.translate(-this.viewportBoundsInWindow.getLeft(), -this.viewportBoundsInWindow.getTop());
            this.composeView.getRootView().draw(canvasLockHardwareCanvas);
            return intRectCopy$default.translate(0, w65.b(this.scrollTracker.getScrollAmount()));
        } finally {
            scrollCaptureSession2.getSurface().unlockCanvasAndPost(canvasLockHardwareCanvas);
        }
        AnonymousClass3 anonymousClass3 = AnonymousClass3.INSTANCE;
        anonymousClass2.L$0 = scrollCaptureSession;
        anonymousClass2.L$1 = intRect;
        anonymousClass2.I$0 = top;
        anonymousClass2.I$1 = bottom;
        anonymousClass2.label = 2;
        if (MonotonicFrameClockKt.withFrameNanos(anonymousClass3, anonymousClass2) != a32Var) {
            intRect2 = intRect;
            i = top;
            scrollCaptureSession2 = scrollCaptureSession;
            i2 = bottom;
            iMapOffsetToViewport = this.scrollTracker.mapOffsetToViewport(i);
            iMapOffsetToViewport2 = this.scrollTracker.mapOffsetToViewport(i2);
            intRectCopy$default = IntRect.copy$default(intRect2, 0, iMapOffsetToViewport, 0, iMapOffsetToViewport2, 5, null);
            if (iMapOffsetToViewport == iMapOffsetToViewport2) {
                return IntRect.Companion.getZero();
            }
            canvasLockHardwareCanvas = scrollCaptureSession2.getSurface().lockHardwareCanvas();
            canvasLockHardwareCanvas.save();
            canvasLockHardwareCanvas.translate(-intRectCopy$default.getLeft(), -intRectCopy$default.getTop());
            canvasLockHardwareCanvas.translate(-this.viewportBoundsInWindow.getLeft(), -this.viewportBoundsInWindow.getTop());
            this.composeView.getRootView().draw(canvasLockHardwareCanvas);
            return intRectCopy$default.translate(0, w65.b(this.scrollTracker.getScrollAmount()));
        }
        return a32Var;
    }

    public void onScrollCaptureEnd(Runnable runnable) {
        av0.c(this.coroutineScope, eo5.c, null, new AnonymousClass1(runnable, null), 2);
    }

    public void onScrollCaptureSearch(CancellationSignal cancellationSignal, Consumer<Rect> consumer) {
        consumer.accept(RectHelper_androidKt.toAndroidRect(this.viewportBoundsInWindow));
    }

    public void onScrollCaptureStart(ScrollCaptureSession scrollCaptureSession, CancellationSignal cancellationSignal, Runnable runnable) {
        this.scrollTracker.reset();
        this.requestCount = 0;
        this.listener.onSessionStarted();
        runnable.run();
    }

    /* JADX INFO: renamed from: androidx.compose.ui.scrollcapture.ComposeScrollCaptureCallback$onScrollCaptureImageRequest$3, reason: invalid class name */
    public static final class AnonymousClass3 extends gh4 implements nl3<Long, j59> {
        public static final AnonymousClass3 INSTANCE = new AnonymousClass3();

        public AnonymousClass3() {
            super(1);
        }

        @Override // defpackage.nl3
        public /* bridge */ /* synthetic */ j59 invoke(Long l) {
            invoke(l.longValue());
            return j59.a;
        }

        public final void invoke(long j) {
        }
    }

    public void onScrollCaptureImageRequest(ScrollCaptureSession scrollCaptureSession, CancellationSignal cancellationSignal, Rect rect, Consumer<Rect> consumer) {
        ComposeScrollCaptureCallback_androidKt.launchWithCancellationSignal(this.coroutineScope, cancellationSignal, new C06521(scrollCaptureSession, rect, consumer, null));
    }
}
