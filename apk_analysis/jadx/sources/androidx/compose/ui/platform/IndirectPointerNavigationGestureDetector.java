package androidx.compose.ui.platform;

import android.content.Context;
import android.view.GestureDetector;
import android.view.MotionEvent;
import androidx.compose.ui.focus.FocusDirection;
import androidx.compose.ui.input.indirect.AndroidIndirectPointerEvent_androidKt;
import androidx.compose.ui.input.indirect.IndirectPointerEvent;
import androidx.compose.ui.input.indirect.IndirectPointerEventPrimaryDirectionalMotionAxis;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class IndirectPointerNavigationGestureDetector {
    public static final int $stable = 8;
    private final GestureDetector gestureDetector;
    private boolean ignoreCurrentGestureStream;
    private final nl3<FocusDirection, j59> onMoveFocus;
    private int primaryDirectionalMotionAxis = IndirectPointerEventPrimaryDirectionalMotionAxis.Companion.m7059getNonenZO2Niw();

    /* JADX WARN: Multi-variable type inference failed */
    public IndirectPointerNavigationGestureDetector(Context context, nl3<? super FocusDirection, j59> nl3Var) {
        this.onMoveFocus = nl3Var;
        this.gestureDetector = new GestureDetector(context, new GestureDetector.OnGestureListener() { // from class: androidx.compose.ui.platform.IndirectPointerNavigationGestureDetector$gestureDetector$1
            @Override // android.view.GestureDetector.OnGestureListener
            public boolean onDown(MotionEvent motionEvent) {
                return true;
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                if (this.this$0.ignoreCurrentGestureStream) {
                    return true;
                }
                int iM8199getPrimaryDirectionalMotionAxisnZO2Niw = this.this$0.m8199getPrimaryDirectionalMotionAxisnZO2Niw();
                IndirectPointerEventPrimaryDirectionalMotionAxis.Companion companion = IndirectPointerEventPrimaryDirectionalMotionAxis.Companion;
                if (IndirectPointerEventPrimaryDirectionalMotionAxis.m7055equalsimpl0(iM8199getPrimaryDirectionalMotionAxisnZO2Niw, companion.m7060getXnZO2Niw())) {
                    if (Math.abs(f) > Math.abs(f2)) {
                        this.this$0.onMoveFocus.invoke(FocusDirection.m5859boximpl(f > 0.0f ? FocusDirection.Companion.m5870getNextdhqQ8s() : FocusDirection.Companion.m5871getPreviousdhqQ8s()));
                    }
                } else if (IndirectPointerEventPrimaryDirectionalMotionAxis.m7055equalsimpl0(this.this$0.m8199getPrimaryDirectionalMotionAxisnZO2Niw(), companion.m7061getYnZO2Niw()) && Math.abs(f2) > Math.abs(f)) {
                    this.this$0.onMoveFocus.invoke(FocusDirection.m5859boximpl(f2 > 0.0f ? FocusDirection.Companion.m5870getNextdhqQ8s() : FocusDirection.Companion.m5871getPreviousdhqQ8s()));
                }
                return true;
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public void onLongPress(MotionEvent motionEvent) {
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                return true;
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public void onShowPress(MotionEvent motionEvent) {
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public boolean onSingleTapUp(MotionEvent motionEvent) {
                return true;
            }
        });
    }

    public final void cancelCurrentEventStream() {
        this.primaryDirectionalMotionAxis = IndirectPointerEventPrimaryDirectionalMotionAxis.Companion.m7059getNonenZO2Niw();
        this.ignoreCurrentGestureStream = true;
    }

    /* JADX INFO: renamed from: getPrimaryDirectionalMotionAxis-nZO2Niw, reason: not valid java name */
    public final int m8199getPrimaryDirectionalMotionAxisnZO2Niw() {
        return this.primaryDirectionalMotionAxis;
    }

    public final boolean onIndirectPointerEvent(IndirectPointerEvent indirectPointerEvent, boolean z) {
        MotionEvent nativeEvent = AndroidIndirectPointerEvent_androidKt.getNativeEvent(indirectPointerEvent);
        int action = nativeEvent.getAction();
        if (action == 0) {
            this.primaryDirectionalMotionAxis = indirectPointerEvent.mo7048getPrimaryDirectionalMotionAxisnZO2Niw();
            this.ignoreCurrentGestureStream = false;
        } else if ((action == 1 || action == 2) && z) {
            cancelCurrentEventStream();
        }
        return this.gestureDetector.onTouchEvent(nativeEvent);
    }

    /* JADX INFO: renamed from: setPrimaryDirectionalMotionAxis-WQKaTuc, reason: not valid java name */
    public final void m8200setPrimaryDirectionalMotionAxisWQKaTuc(int i) {
        this.primaryDirectionalMotionAxis = i;
    }
}
