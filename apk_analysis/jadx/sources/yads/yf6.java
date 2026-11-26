package yads;

import android.view.View;
import android.view.ViewGroupOverlay;
import android.widget.ImageView;
import androidx.transition.R;
import androidx.transition.Transition;
import androidx.transition.TransitionListenerAdapter;

/* JADX INFO: loaded from: classes6.dex */
public final class yf6 extends TransitionListenerAdapter {
    public final /* synthetic */ View a;
    public final /* synthetic */ ViewGroupOverlay b;
    public final /* synthetic */ ImageView c;

    public yf6(View view, ViewGroupOverlay viewGroupOverlay, ImageView imageView) {
        this.a = view;
        this.b = viewGroupOverlay;
        this.c = imageView;
    }

    @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
    public final void onTransitionEnd(Transition transition) {
        this.a.setTag(R.id.save_overlay_view, null);
        this.a.setVisibility(0);
        this.b.remove(this.c);
        transition.removeListener(this);
    }

    @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
    public final void onTransitionPause(Transition transition) {
        this.b.remove(this.c);
    }

    @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
    public final void onTransitionResume(Transition transition) {
        if (this.c.getParent() == null) {
            this.b.add(this.c);
        }
    }

    @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
    public final void onTransitionStart(Transition transition) {
        this.a.setVisibility(4);
    }
}
