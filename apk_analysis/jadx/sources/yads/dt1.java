package yads;

import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerViewAccessibilityDelegate;

/* JADX INFO: loaded from: classes6.dex */
public final class dt1 extends RecyclerViewAccessibilityDelegate {
    public final /* synthetic */ RecyclerView a;
    public final /* synthetic */ et1 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public dt1(RecyclerView recyclerView, et1 et1Var) {
        super(recyclerView);
        this.a = recyclerView;
        this.b = et1Var;
    }

    @Override // androidx.core.view.AccessibilityDelegateCompat
    public final boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
        int childAdapterPosition;
        if (accessibilityEvent.getEventType() == 32768) {
            et1 et1Var = this.b;
            int i = et1.k;
            View view2 = view;
            while (true) {
                if (!defpackage.aa4.e(view2, et1Var.h())) {
                    if (view2 instanceof pi2) {
                        break;
                    }
                    Object parent = view2.getParent();
                    view2 = parent instanceof View ? (View) parent : null;
                    if (view2 == null) {
                    }
                }
                view2 = null;
                break;
            }
            if (view2 != null && this.b.a.getCurrentItem() != (childAdapterPosition = this.a.getChildAdapterPosition(view2)) && childAdapterPosition != -1) {
                this.a.performAccessibilityAction(childAdapterPosition > this.b.a.getCurrentItem() ? 4096 : 8192, null);
            }
        }
        return super.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
    }
}
