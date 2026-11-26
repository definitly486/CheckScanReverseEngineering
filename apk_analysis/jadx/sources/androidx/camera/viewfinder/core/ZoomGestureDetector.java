package androidx.camera.viewfinder.core;

import android.content.Context;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import defpackage.jh2;
import defpackage.w65;

/* JADX INFO: loaded from: classes.dex */
public final class ZoomGestureDetector {
    private static final int ANCHORED_ZOOM_MODE_DOUBLE_TAP = 1;
    private static final int ANCHORED_ZOOM_MODE_NONE = 0;
    private static final int ANCHORED_ZOOM_MODE_STYLUS = 2;
    public static final Companion Companion = new Companion(null);
    private static final int DEFAULT_MIN_SPAN = 0;
    private static final float SCALE_FACTOR = 0.5f;
    private int anchoredZoomMode;
    private float anchoredZoomStartX;
    private float anchoredZoomStartY;
    private final Context context;
    private float currentSpan;
    private float currentSpanX;
    private float currentSpanY;
    private boolean eventBeforeOrAboveStartingGestureEvent;
    private long eventTime;
    private int focusX;
    private int focusY;
    private GestureDetector gestureDetector;
    private float initialSpan;
    private boolean isInProgress;
    private boolean isQuickZoomEnabled;
    private boolean isStylusZoomEnabled;
    private final OnZoomGestureListener listener;
    private final int minSpan;
    private long prevTime;
    private float previousSpan;
    private float previousSpanX;
    private float previousSpanY;
    private final int spanSlop;

    public interface OnZoomGestureListener {
        boolean onZoomEvent(ZoomEvent zoomEvent);
    }

    public ZoomGestureDetector(Context context, int i, int i2, OnZoomGestureListener onZoomGestureListener) {
        context.getClass();
        onZoomGestureListener.getClass();
        this.context = context;
        this.spanSlop = i;
        this.minSpan = i2;
        this.listener = onZoomGestureListener;
        this.isQuickZoomEnabled = true;
        this.isStylusZoomEnabled = true;
        this.gestureDetector = new GestureDetector(context, new GestureDetector.SimpleOnGestureListener() { // from class: androidx.camera.viewfinder.core.ZoomGestureDetector$gestureDetector$1
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
            public boolean onDoubleTap(MotionEvent motionEvent) {
                motionEvent.getClass();
                this.this$0.anchoredZoomStartX = motionEvent.getX();
                this.this$0.anchoredZoomStartY = motionEvent.getY();
                this.this$0.anchoredZoomMode = 1;
                return true;
            }
        });
    }

    private final float getIncrementalScaleFactor() {
        if (!inAnchoredZoomMode()) {
            float f = this.previousSpan;
            if (f > 0.0f) {
                return this.currentSpan / f;
            }
            return 1.0f;
        }
        boolean z = this.eventBeforeOrAboveStartingGestureEvent;
        boolean z2 = (z && this.currentSpan < this.previousSpan) || (!z && this.currentSpan > this.previousSpan);
        float fAbs = Math.abs(1.0f - (this.currentSpan / this.previousSpan)) * 0.5f;
        if (this.previousSpan <= this.spanSlop) {
            return 1.0f;
        }
        return z2 ? fAbs + 1.0f : 1.0f - fAbs;
    }

    private final boolean inAnchoredZoomMode() {
        return this.anchoredZoomMode != 0;
    }

    public final long getTimeDelta() {
        return this.eventTime - this.prevTime;
    }

    public final boolean isQuickZoomEnabled() {
        return this.isQuickZoomEnabled;
    }

    public final boolean isStylusZoomEnabled() {
        return this.isStylusZoomEnabled;
    }

    public final boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z;
        float f;
        float f2;
        motionEvent.getClass();
        this.eventTime = motionEvent.getEventTime();
        int actionMasked = motionEvent.getActionMasked();
        if (this.isQuickZoomEnabled) {
            this.gestureDetector.onTouchEvent(motionEvent);
        }
        int pointerCount = motionEvent.getPointerCount();
        boolean z2 = (motionEvent.getButtonState() & 32) != 0;
        boolean z3 = this.anchoredZoomMode == 2 && !z2;
        boolean z4 = actionMasked == 1 || actionMasked == 3 || z3;
        float f3 = 0.0f;
        if (actionMasked == 0 || z4) {
            if (this.isInProgress) {
                z = true;
                this.listener.onZoomEvent(new ZoomEvent.End(this.eventTime, this.focusX, this.focusY, getIncrementalScaleFactor()));
                this.isInProgress = false;
                this.initialSpan = 0.0f;
                this.anchoredZoomMode = 0;
            } else {
                z = true;
                if (inAnchoredZoomMode() && z4) {
                    this.isInProgress = false;
                    this.initialSpan = 0.0f;
                    this.anchoredZoomMode = 0;
                }
            }
            if (!z4) {
            }
            return z;
        }
        z = true;
        if (!this.isInProgress && this.isStylusZoomEnabled && !inAnchoredZoomMode() && !z4 && z2) {
            this.anchoredZoomStartX = motionEvent.getX();
            this.anchoredZoomStartY = motionEvent.getY();
            this.anchoredZoomMode = 2;
            this.initialSpan = 0.0f;
        }
        boolean z5 = (actionMasked == 0 || actionMasked == 6 || actionMasked == 5 || z3) ? z : false;
        boolean z6 = actionMasked == 6 ? z : false;
        int actionIndex = z6 ? motionEvent.getActionIndex() : -1;
        int i = z6 ? pointerCount - 1 : pointerCount;
        if (inAnchoredZoomMode()) {
            f2 = this.anchoredZoomStartX;
            f = this.anchoredZoomStartY;
            this.eventBeforeOrAboveStartingGestureEvent = motionEvent.getY() < f ? z : false;
        } else {
            float x = 0.0f;
            float y = 0.0f;
            for (int i2 = 0; i2 < pointerCount; i2++) {
                if (actionIndex != i2) {
                    x += motionEvent.getX(i2);
                    y += motionEvent.getY(i2);
                }
            }
            float f4 = i;
            float f5 = x / f4;
            f = y / f4;
            f2 = f5;
        }
        float fAbs = 0.0f;
        for (int i3 = 0; i3 < pointerCount; i3++) {
            if (actionIndex != i3) {
                float fAbs2 = Math.abs(motionEvent.getX(i3) - f2) + f3;
                fAbs = Math.abs(motionEvent.getY(i3) - f) + fAbs;
                f3 = fAbs2;
            }
        }
        float f6 = i;
        float f7 = (f3 / f6) * 2.0f;
        float f8 = (fAbs / f6) * 2.0f;
        float fHypot = inAnchoredZoomMode() ? f8 : (float) Math.hypot(f7, f8);
        boolean z7 = this.isInProgress;
        this.focusX = w65.b(f2);
        this.focusY = w65.b(f);
        if (!inAnchoredZoomMode() && this.isInProgress && (fHypot < this.minSpan || z5)) {
            this.listener.onZoomEvent(new ZoomEvent.End(this.eventTime, this.focusX, this.focusY, getIncrementalScaleFactor()));
            this.isInProgress = false;
            this.initialSpan = fHypot;
        }
        if (z5) {
            this.currentSpanX = f7;
            this.previousSpanX = f7;
            this.currentSpanY = f8;
            this.previousSpanY = f8;
            this.currentSpan = fHypot;
            this.previousSpan = fHypot;
            this.initialSpan = fHypot;
        }
        int i4 = inAnchoredZoomMode() ? this.spanSlop : this.minSpan;
        if (!this.isInProgress && fHypot >= i4 && (z7 || Math.abs(fHypot - this.initialSpan) > this.spanSlop)) {
            this.currentSpanX = f7;
            this.previousSpanX = f7;
            this.currentSpanY = f8;
            this.previousSpanY = f8;
            this.currentSpan = fHypot;
            this.previousSpan = fHypot;
            long j = this.eventTime;
            this.prevTime = j;
            this.isInProgress = this.listener.onZoomEvent(new ZoomEvent.Begin(j, this.focusX, this.focusY));
        }
        if (actionMasked == 2) {
            this.currentSpanX = f7;
            this.currentSpanY = f8;
            this.currentSpan = fHypot;
            if (this.isInProgress ? this.listener.onZoomEvent(new ZoomEvent.Move(this.eventTime, this.focusX, this.focusY, getIncrementalScaleFactor())) : z) {
                this.previousSpanX = this.currentSpanX;
                this.previousSpanY = this.currentSpanY;
                this.previousSpan = this.currentSpan;
                this.prevTime = this.eventTime;
            }
        }
        return z;
    }

    public final void setQuickZoomEnabled(boolean z) {
        this.isQuickZoomEnabled = z;
    }

    public final void setStylusZoomEnabled(boolean z) {
        this.isStylusZoomEnabled = z;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private Companion() {
        }
    }

    public static abstract class ZoomEvent {
        private final long eventTime;
        private final int focusX;
        private final int focusY;

        public static final class Begin extends ZoomEvent {
            public Begin(long j, int i, int i2) {
                super(j, i, i2, null);
            }
        }

        public static final class End extends ZoomEvent {
            private final float incrementalScaleFactor;

            public End(long j, int i, int i2, float f) {
                super(j, i, i2, null);
                this.incrementalScaleFactor = f;
            }

            public final float getIncrementalScaleFactor() {
                return this.incrementalScaleFactor;
            }
        }

        public static final class Move extends ZoomEvent {
            private final float incrementalScaleFactor;

            public Move(long j, int i, int i2, float f) {
                super(j, i, i2, null);
                this.incrementalScaleFactor = f;
            }

            public final float getIncrementalScaleFactor() {
                return this.incrementalScaleFactor;
            }
        }

        private ZoomEvent(long j, int i, int i2) {
            this.eventTime = j;
            this.focusX = i;
            this.focusY = i2;
        }

        public final long getEventTime() {
            return this.eventTime;
        }

        public final int getFocusX() {
            return this.focusX;
        }

        public final int getFocusY() {
            return this.focusY;
        }

        public /* synthetic */ ZoomEvent(long j, int i, int i2, jh2 jh2Var) {
            this(j, i, i2);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ZoomGestureDetector(Context context, OnZoomGestureListener onZoomGestureListener) {
        this(context, 0, 0, onZoomGestureListener, 6, null);
        context.getClass();
        onZoomGestureListener.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ZoomGestureDetector(Context context, int i, OnZoomGestureListener onZoomGestureListener) {
        this(context, i, 0, onZoomGestureListener, 4, null);
        context.getClass();
        onZoomGestureListener.getClass();
    }

    public /* synthetic */ ZoomGestureDetector(Context context, int i, int i2, OnZoomGestureListener onZoomGestureListener, int i3, jh2 jh2Var) {
        this(context, (i3 & 2) != 0 ? ViewConfiguration.get(context).getScaledTouchSlop() * 2 : i, (i3 & 4) != 0 ? 0 : i2, onZoomGestureListener);
    }
}
