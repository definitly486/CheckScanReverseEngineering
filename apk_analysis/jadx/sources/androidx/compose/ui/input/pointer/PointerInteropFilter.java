package androidx.compose.ui.input.pointer;

import android.view.MotionEvent;
import defpackage.aa4;
import defpackage.g03;
import defpackage.h03;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class PointerInteropFilter implements PointerInputModifier {
    public static final int $stable = 0;
    private boolean disallowIntercept;
    public nl3<? super MotionEvent, Boolean> onTouchEvent;
    private final PointerInputFilter pointerInputFilter = new PointerInteropFilter$pointerInputFilter$1(this);
    private RequestDisallowInterceptTouchEvent requestDisallowInterceptTouchEvent;

    public enum DispatchToViewState {
        Unknown,
        Dispatching,
        NotDispatching;

        private static final /* synthetic */ g03 $ENTRIES = h03.a(values());

        public static g03<DispatchToViewState> getEntries() {
            return $ENTRIES;
        }
    }

    public static /* synthetic */ void getPointerInputFilter$annotations() {
    }

    public final boolean getDisallowIntercept$ui() {
        return this.disallowIntercept;
    }

    public final nl3<MotionEvent, Boolean> getOnTouchEvent() {
        nl3 nl3Var = this.onTouchEvent;
        if (nl3Var != null) {
            return nl3Var;
        }
        aa4.j("onTouchEvent");
        throw null;
    }

    @Override // androidx.compose.ui.input.pointer.PointerInputModifier
    public PointerInputFilter getPointerInputFilter() {
        return this.pointerInputFilter;
    }

    public final RequestDisallowInterceptTouchEvent getRequestDisallowInterceptTouchEvent() {
        return this.requestDisallowInterceptTouchEvent;
    }

    public final void setDisallowIntercept$ui(boolean z) {
        this.disallowIntercept = z;
    }

    public final void setOnTouchEvent(nl3<? super MotionEvent, Boolean> nl3Var) {
        this.onTouchEvent = nl3Var;
    }

    public final void setRequestDisallowInterceptTouchEvent(RequestDisallowInterceptTouchEvent requestDisallowInterceptTouchEvent) {
        RequestDisallowInterceptTouchEvent requestDisallowInterceptTouchEvent2 = this.requestDisallowInterceptTouchEvent;
        if (requestDisallowInterceptTouchEvent2 != null) {
            requestDisallowInterceptTouchEvent2.setPointerInteropFilter$ui(null);
        }
        this.requestDisallowInterceptTouchEvent = requestDisallowInterceptTouchEvent;
        if (requestDisallowInterceptTouchEvent != null) {
            requestDisallowInterceptTouchEvent.setPointerInteropFilter$ui(this);
        }
    }
}
