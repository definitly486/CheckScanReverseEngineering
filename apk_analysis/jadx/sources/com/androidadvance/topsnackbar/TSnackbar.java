package com.androidadvance.topsnackbar;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewPropertyAnimatorListenerAdapter;
import com.google.android.material.behavior.SwipeDismissBehavior;
import com.warefly.checkscan.R;
import defpackage.ii8;
import defpackage.ji8;
import defpackage.sm;
import defpackage.sw6;

/* JADX INFO: loaded from: classes3.dex */
public final class TSnackbar {
    public static final Handler e = new Handler(Looper.getMainLooper(), new a());
    public final ViewGroup a;
    public final SnackbarLayout b;
    public int c;
    public final b d = new b();

    public static class a implements Handler.Callback {
        /* JADX WARN: Code restructure failed: missing block: B:13:0x002f, code lost:
        
            if (((com.google.android.material.behavior.SwipeDismissBehavior) r2).getDragState() != 0) goto L17;
         */
        @Override // android.os.Handler.Callback
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final boolean handleMessage(Message message) {
            int i = message.what;
            if (i != 0) {
                if (i != 1) {
                    return false;
                }
                TSnackbar tSnackbar = (TSnackbar) message.obj;
                int i2 = message.arg1;
                SnackbarLayout snackbarLayout = tSnackbar.b;
                if (snackbarLayout.getVisibility() == 0) {
                    ViewGroup.LayoutParams layoutParams = snackbarLayout.getLayoutParams();
                    if (layoutParams instanceof CoordinatorLayout.LayoutParams) {
                        CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) layoutParams).getBehavior();
                        if (behavior instanceof SwipeDismissBehavior) {
                        }
                    }
                    ViewCompat.animate(snackbarLayout).translationY(-snackbarLayout.getHeight()).setInterpolator(sm.a).setDuration(250L).setListener(new e(tSnackbar, i2)).start();
                    return true;
                }
                tSnackbar.d();
                return true;
            }
            TSnackbar tSnackbar2 = (TSnackbar) message.obj;
            SnackbarLayout snackbarLayout2 = tSnackbar2.b;
            if (snackbarLayout2.getParent() == null) {
                ViewGroup.LayoutParams layoutParams2 = snackbarLayout2.getLayoutParams();
                if (layoutParams2 instanceof CoordinatorLayout.LayoutParams) {
                    d dVar = tSnackbar2.new d();
                    dVar.setStartAlphaSwipeDistance(0.1f);
                    dVar.setEndAlphaSwipeDistance(0.6f);
                    dVar.setSwipeDirection(0);
                    dVar.setListener(new com.androidadvance.topsnackbar.b(tSnackbar2));
                    ((CoordinatorLayout.LayoutParams) layoutParams2).setBehavior(dVar);
                }
                tSnackbar2.a.addView(snackbarLayout2);
            }
            snackbarLayout2.setOnAttachStateChangeListener(new com.androidadvance.topsnackbar.c(tSnackbar2));
            if (ViewCompat.isLaidOut(snackbarLayout2)) {
                tSnackbar2.a();
                return true;
            }
            snackbarLayout2.setOnLayoutChangeListener(new com.androidadvance.topsnackbar.d(tSnackbar2));
            return true;
        }
    }

    public class b implements com.androidadvance.topsnackbar.a.b {
        public b() {
        }

        @Override // com.androidadvance.topsnackbar.a.b
        public final void dismiss(int i) {
            Handler handler = TSnackbar.e;
            handler.sendMessage(handler.obtainMessage(1, i, 0, TSnackbar.this));
        }

        @Override // com.androidadvance.topsnackbar.a.b
        public final void show() {
            Handler handler = TSnackbar.e;
            handler.sendMessage(handler.obtainMessage(0, TSnackbar.this));
        }
    }

    public class c extends ViewPropertyAnimatorListenerAdapter {
        public c() {
        }

        @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
        public final void onAnimationEnd(View view) {
            com.androidadvance.topsnackbar.a aVarC = com.androidadvance.topsnackbar.a.c();
            b bVar = TSnackbar.this.d;
            synchronized (aVarC.a) {
                try {
                    if (aVarC.d(bVar)) {
                        aVarC.e(aVarC.c);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
        public final void onAnimationStart(View view) {
            SnackbarLayout snackbarLayout = TSnackbar.this.b;
            snackbarLayout.b.setAlpha(0.0f);
            ViewCompat.animate(snackbarLayout.b).alpha(1.0f).setDuration(180L).setStartDelay(70L).start();
            if (snackbarLayout.c.getVisibility() == 0) {
                snackbarLayout.c.setAlpha(0.0f);
                ViewCompat.animate(snackbarLayout.c).alpha(1.0f).setDuration(180L).setStartDelay(70L).start();
            }
        }
    }

    public final class d extends SwipeDismissBehavior<SnackbarLayout> {
        public d() {
        }

        @Override // com.google.android.material.behavior.SwipeDismissBehavior
        public final boolean canSwipeDismissView(View view) {
            return view instanceof SnackbarLayout;
        }

        @Override // com.google.android.material.behavior.SwipeDismissBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final boolean onInterceptTouchEvent(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
            SnackbarLayout snackbarLayout = (SnackbarLayout) view;
            TSnackbar tSnackbar = TSnackbar.this;
            if (coordinatorLayout.isPointInChildBounds(snackbarLayout, (int) motionEvent.getX(), (int) motionEvent.getY())) {
                int actionMasked = motionEvent.getActionMasked();
                if (actionMasked == 0) {
                    com.androidadvance.topsnackbar.a.c().b(tSnackbar.d);
                } else if (actionMasked == 1 || actionMasked == 3) {
                    com.androidadvance.topsnackbar.a aVarC = com.androidadvance.topsnackbar.a.c();
                    b bVar = tSnackbar.d;
                    synchronized (aVarC.a) {
                        try {
                            if (aVarC.d(bVar)) {
                                aVarC.e(aVarC.c);
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
            }
            return super.onInterceptTouchEvent(coordinatorLayout, snackbarLayout, motionEvent);
        }
    }

    public TSnackbar(ViewGroup viewGroup) {
        this.a = viewGroup;
        this.b = (SnackbarLayout) LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.tsnackbar_layout, viewGroup, false);
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0061 A[EDGE_INSN: B:25:0x004c->B:31:0x0061 BREAK  A[LOOP:1: B:21:0x0042->B:30:0x005e], EDGE_INSN: B:48:0x0061->B:31:0x0061 BREAK  A[LOOP:1: B:21:0x0042->B:30:0x005e], PHI: r2
      0x0061: PHI (r2v2 android.view.ViewGroup) = 
      (r2v1 android.view.ViewGroup)
      (r2v1 android.view.ViewGroup)
      (r2v1 android.view.ViewGroup)
      (r2v1 android.view.ViewGroup)
      (r2v1 android.view.ViewGroup)
      (r2v1 android.view.ViewGroup)
      (r2v5 android.view.ViewGroup)
     binds: [B:17:0x002e, B:19:0x003b, B:46:0x0061, B:25:0x004c, B:48:0x0061, B:15:0x0026, B:11:0x001c] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:33:0x0069  */
    /* JADX WARN: Code duplicated, block: B:34:0x006c  */
    /* JADX WARN: Code duplicated, block: B:42:0x006f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:45:? A[LOOP:0: B:3:0x0004->B:45:?, LOOP_END, SYNTHETIC] */
    public static TSnackbar c(View view, CharSequence charSequence, int i) {
        ViewGroup viewGroup;
        Object parent;
        ViewGroup viewGroup2 = null;
        while (!(view instanceof CoordinatorLayout)) {
            if (view instanceof FrameLayout) {
                if (view.getId() == 16908290) {
                    viewGroup = (ViewGroup) view;
                } else {
                    viewGroup2 = (ViewGroup) view;
                    parent = view.getParent();
                    if (parent instanceof View) {
                        view = (View) parent;
                    } else {
                        view = null;
                    }
                    if (view == null) {
                        viewGroup = viewGroup2;
                    }
                }
            } else if (((view instanceof Toolbar) || (view instanceof android.widget.Toolbar)) && (view.getParent() instanceof ViewGroup)) {
                ViewGroup viewGroup3 = (ViewGroup) view.getParent();
                if (viewGroup3.getChildCount() > 1) {
                    int childCount = viewGroup3.getChildCount();
                    int i2 = 0;
                    while (i2 < childCount) {
                        if (viewGroup3.getChildAt(i2) != view) {
                            i2++;
                        } else if (i2 < childCount - 1) {
                            while (i2 < childCount) {
                                i2++;
                                View childAt = viewGroup3.getChildAt(i2);
                                if (childAt instanceof ViewGroup) {
                                    viewGroup = (ViewGroup) childAt;
                                }
                            }
                            break;
                        }
                    }
                    parent = view.getParent();
                    if (parent instanceof View) {
                        view = (View) parent;
                    } else {
                        view = null;
                    }
                    if (view == null) {
                        viewGroup = viewGroup2;
                    }
                } else {
                    parent = view.getParent();
                    if (parent instanceof View) {
                        view = (View) parent;
                    } else {
                        view = null;
                    }
                    if (view == null) {
                        viewGroup = viewGroup2;
                    }
                }
            } else {
                parent = view.getParent();
                if (parent instanceof View) {
                    view = (View) parent;
                } else {
                    view = null;
                }
                if (view == null) {
                    viewGroup = viewGroup2;
                }
            }
            TSnackbar tSnackbar = new TSnackbar(viewGroup);
            tSnackbar.b.getMessageView().setText(charSequence);
            tSnackbar.c = i;
            return tSnackbar;
        }
        viewGroup = (ViewGroup) view;
        TSnackbar tSnackbar2 = new TSnackbar(viewGroup);
        tSnackbar2.b.getMessageView().setText(charSequence);
        tSnackbar2.c = i;
        return tSnackbar2;
    }

    public final void a() {
        SnackbarLayout snackbarLayout = this.b;
        snackbarLayout.setTranslationY(-snackbarLayout.getHeight());
        ViewCompat.animate(snackbarLayout).translationY(0.0f).setInterpolator(sm.a).setDuration(250L).setListener(new c()).start();
    }

    public final void b(int i) {
        com.androidadvance.topsnackbar.a aVarC = com.androidadvance.topsnackbar.a.c();
        b bVar = this.d;
        synchronized (aVarC.a) {
            try {
                if (aVarC.d(bVar)) {
                    com.androidadvance.topsnackbar.a.a(aVarC.c, i);
                } else {
                    com.androidadvance.topsnackbar.a.c cVar = aVarC.d;
                    if (cVar != null && cVar.a.get() == bVar) {
                        com.androidadvance.topsnackbar.a.a(aVarC.d, i);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void d() {
        com.androidadvance.topsnackbar.a aVarC = com.androidadvance.topsnackbar.a.c();
        b bVar = this.d;
        synchronized (aVarC.a) {
            try {
                if (aVarC.d(bVar)) {
                    aVarC.c = null;
                    com.androidadvance.topsnackbar.a.c cVar = aVarC.d;
                    if (cVar != null && cVar != null) {
                        aVarC.c = cVar;
                        aVarC.d = null;
                        com.androidadvance.topsnackbar.a.b bVar2 = cVar.a.get();
                        if (bVar2 != null) {
                            bVar2.show();
                        } else {
                            aVarC.c = null;
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        ViewParent parent = this.b.getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(this.b);
        }
    }

    public final void e(CharSequence charSequence, View.OnClickListener onClickListener) {
        Button actionView = this.b.getActionView();
        if (TextUtils.isEmpty(charSequence)) {
            actionView.setVisibility(8);
            actionView.setOnClickListener(null);
        } else {
            actionView.setVisibility(0);
            actionView.setText(charSequence);
            actionView.setOnClickListener(new ii8(this, onClickListener));
        }
    }

    public final void f() {
        com.androidadvance.topsnackbar.a aVarC = com.androidadvance.topsnackbar.a.c();
        int i = this.c;
        b bVar = this.d;
        synchronized (aVarC.a) {
            try {
                if (aVarC.d(bVar)) {
                    com.androidadvance.topsnackbar.a.c cVar = aVarC.c;
                    cVar.b = i;
                    aVarC.b.removeCallbacksAndMessages(cVar);
                    aVarC.e(aVarC.c);
                    return;
                }
                com.androidadvance.topsnackbar.a.c cVar2 = aVarC.d;
                if (cVar2 != null && cVar2.a.get() == bVar) {
                    aVarC.d.b = i;
                } else {
                    aVarC.d = new com.androidadvance.topsnackbar.a.c(i, bVar);
                }
                com.androidadvance.topsnackbar.a.c cVar3 = aVarC.c;
                if (cVar3 == null || !com.androidadvance.topsnackbar.a.a(cVar3, 4)) {
                    aVarC.c = null;
                    com.androidadvance.topsnackbar.a.c cVar4 = aVarC.d;
                    if (cVar4 != null) {
                        aVarC.c = cVar4;
                        aVarC.d = null;
                        com.androidadvance.topsnackbar.a.b bVar2 = cVar4.a.get();
                        if (bVar2 != null) {
                            bVar2.show();
                        } else {
                            aVarC.c = null;
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static class SnackbarLayout extends LinearLayout {
        public TextView b;
        public Button c;
        public final int d;
        public final int e;
        public b f;
        public a g;

        public interface a {
        }

        public interface b {
        }

        public SnackbarLayout(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, sw6.a);
            this.d = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, -1);
            this.e = typedArrayObtainStyledAttributes.getDimensionPixelSize(7, -1);
            if (typedArrayObtainStyledAttributes.hasValue(6)) {
                ViewCompat.setElevation(this, typedArrayObtainStyledAttributes.getDimensionPixelSize(6, 0));
            }
            typedArrayObtainStyledAttributes.recycle();
            setClickable(true);
            LayoutInflater.from(context).inflate(R.layout.tsnackbar_layout_include, this);
            ViewCompat.setAccessibilityLiveRegion(this, 1);
        }

        public final boolean a(int i, int i2, int i3) {
            boolean z;
            if (i != getOrientation()) {
                setOrientation(i);
                z = true;
            } else {
                z = false;
            }
            if (this.b.getPaddingTop() == i2 && this.b.getPaddingBottom() == i3) {
                return z;
            }
            TextView textView = this.b;
            if (ViewCompat.isPaddingRelative(textView)) {
                ViewCompat.setPaddingRelative(textView, ViewCompat.getPaddingStart(textView), i2, ViewCompat.getPaddingEnd(textView), i3);
                return true;
            }
            textView.setPadding(textView.getPaddingLeft(), i2, textView.getPaddingRight(), i3);
            return true;
        }

        public Button getActionView() {
            return this.c;
        }

        public TextView getMessageView() {
            return this.b;
        }

        @Override // android.view.ViewGroup, android.view.View
        public final void onAttachedToWindow() {
            super.onAttachedToWindow();
            a aVar = this.g;
            if (aVar != null) {
                aVar.getClass();
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        public final void onDetachedFromWindow() {
            boolean z;
            super.onDetachedFromWindow();
            a aVar = this.g;
            if (aVar != null) {
                com.androidadvance.topsnackbar.c cVar = (com.androidadvance.topsnackbar.c) aVar;
                TSnackbar tSnackbar = cVar.a;
                com.androidadvance.topsnackbar.a aVarC = com.androidadvance.topsnackbar.a.c();
                b bVar = tSnackbar.d;
                synchronized (aVarC.a) {
                    z = true;
                    if (!aVarC.d(bVar)) {
                        com.androidadvance.topsnackbar.a.c cVar2 = aVarC.d;
                        if (!(cVar2 != null && cVar2.a.get() == bVar)) {
                            z = false;
                        }
                    }
                }
                if (z) {
                    TSnackbar.e.post(new ji8(cVar));
                }
            }
        }

        @Override // android.view.View
        public final void onFinishInflate() {
            super.onFinishInflate();
            this.b = (TextView) findViewById(R.id.snackbar_text);
            this.c = (Button) findViewById(R.id.snackbar_action);
        }

        @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
        public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            b bVar = this.f;
            if (bVar != null) {
                TSnackbar tSnackbar = ((com.androidadvance.topsnackbar.d) bVar).a;
                tSnackbar.a();
                tSnackbar.b.setOnLayoutChangeListener(null);
            }
        }

        @Override // android.widget.LinearLayout, android.view.View
        public final void onMeasure(int i, int i2) {
            int i3;
            super.onMeasure(i, i2);
            int i4 = this.d;
            if (i4 > 0 && getMeasuredWidth() > i4) {
                i = View.MeasureSpec.makeMeasureSpec(i4, 1073741824);
                super.onMeasure(i, i2);
            }
            int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.design_snackbar_padding_vertical_2lines);
            int dimensionPixelSize2 = getResources().getDimensionPixelSize(R.dimen.design_snackbar_padding_vertical);
            boolean z = this.b.getLayout().getLineCount() > 1;
            if (!z || (i3 = this.e) <= 0 || this.c.getMeasuredWidth() <= i3) {
                if (!z) {
                    dimensionPixelSize = dimensionPixelSize2;
                }
                if (!a(0, dimensionPixelSize, dimensionPixelSize)) {
                    return;
                }
            } else if (!a(1, dimensionPixelSize, dimensionPixelSize - dimensionPixelSize2)) {
                return;
            }
            super.onMeasure(i, i2);
        }

        public void setOnAttachStateChangeListener(a aVar) {
            this.g = aVar;
        }

        public void setOnLayoutChangeListener(b bVar) {
            this.f = bVar;
        }

        public SnackbarLayout(Context context) {
            this(context, null);
        }
    }
}
