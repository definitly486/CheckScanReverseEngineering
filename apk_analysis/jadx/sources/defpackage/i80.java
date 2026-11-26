package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewAnimationUtils;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import com.skydoves.balloon.databinding.BalloonLayoutBodyBinding;
import com.skydoves.balloon.databinding.BalloonLayoutOverlayBinding;
import com.skydoves.balloon.radius.RadiusLayout;
import com.skydoves.balloon.vectortext.VectorTextView;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public final class i80 implements DefaultLifecycleObserver {
    public final Context b;
    public final a c;
    public final BalloonLayoutBodyBinding d;
    public final PopupWindow e;
    public final PopupWindow f;
    public boolean g;
    public boolean h;
    public final cl4 i;
    public final cl4 j;
    public final cl4 k;

    public static final class a {
        public int d;
        public int e;
        public int f;
        public int g;
        public float r;
        public LifecycleOwner s;
        public final l80 t;
        public final o80 u;
        public final n80 v;
        public final boolean w;
        public final int x;
        public int a = Integer.MIN_VALUE;
        public final int b = new Point(Resources.getSystem().getDisplayMetrics().widthPixels, Resources.getSystem().getDisplayMetrics().heightPixels).x;
        public int c = Integer.MIN_VALUE;
        public int h = w65.b(TypedValue.applyDimension(1, 12.0f, Resources.getSystem().getDisplayMetrics()));
        public bs i = bs.ALIGN_BALLOON;
        public final as j = as.ALIGN_ANCHOR;
        public zr k = zr.BOTTOM;
        public int l = -16777216;
        public float m = TypedValue.applyDimension(1, 5.0f, Resources.getSystem().getDisplayMetrics());
        public CharSequence n = "";
        public int o = -1;
        public float p = 12.0f;
        public final o04 q = o04.START;

        public a(Context context) {
            w65.b(TypedValue.applyDimension(1, 28.0f, Resources.getSystem().getDisplayMetrics()));
            w65.b(TypedValue.applyDimension(1, 28.0f, Resources.getSystem().getDisplayMetrics()));
            w65.b(TypedValue.applyDimension(1, 8.0f, Resources.getSystem().getDisplayMetrics()));
            this.r = TypedValue.applyDimension(1, 2.0f, Resources.getSystem().getDisplayMetrics());
            q80 q80Var = q80.a;
            this.t = l80.FADE;
            this.u = o80.FADE;
            this.v = n80.NONE;
            boolean z = context.getResources().getConfiguration().getLayoutDirection() == 1;
            this.w = z;
            this.x = z ? -1 : 1;
        }

        public final void a() {
            this.h = w65.b(TypedValue.applyDimension(1, 8.0f, Resources.getSystem().getDisplayMetrics()));
        }

        public final void b() {
            this.m = TypedValue.applyDimension(1, 16.0f, Resources.getSystem().getDisplayMetrics());
        }

        public final void c() {
            this.r = w65.b(TypedValue.applyDimension(1, 3.0f, Resources.getSystem().getDisplayMetrics()));
        }

        public final void d() {
            this.c = w65.b(TypedValue.applyDimension(1, -2.14748365E9f, Resources.getSystem().getDisplayMetrics()));
        }

        public final void e() {
            this.d = w65.b(TypedValue.applyDimension(1, 8.0f, Resources.getSystem().getDisplayMetrics()));
            this.e = w65.b(TypedValue.applyDimension(1, 8.0f, Resources.getSystem().getDisplayMetrics()));
            this.f = w65.b(TypedValue.applyDimension(1, 8.0f, Resources.getSystem().getDisplayMetrics()));
            this.g = w65.b(TypedValue.applyDimension(1, 8.0f, Resources.getSystem().getDisplayMetrics()));
        }

        public final void f() {
            this.a = w65.b(TypedValue.applyDimension(1, 250.0f, Resources.getSystem().getDisplayMetrics()));
        }
    }

    public static final /* synthetic */ class b {
        public static final /* synthetic */ int[] a;
        public static final /* synthetic */ int[] b;
        public static final /* synthetic */ int[] c;
        public static final /* synthetic */ int[] d;
        public static final /* synthetic */ int[] e;
        public static final /* synthetic */ int[] f;
        public static final /* synthetic */ int[] g;

        static {
            int[] iArr = new int[zr.values().length];
            try {
                iArr[zr.BOTTOM.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[zr.TOP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[zr.START.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[zr.END.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            a = iArr;
            int[] iArr2 = new int[bs.values().length];
            try {
                iArr2[bs.ALIGN_ANCHOR.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[bs.ALIGN_BALLOON.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            b = iArr2;
            int[] iArr3 = new int[l80.values().length];
            try {
                iArr3[l80.ELASTIC.ordinal()] = 1;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr3[l80.CIRCULAR.ordinal()] = 2;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr3[l80.FADE.ordinal()] = 3;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr3[l80.OVERSHOOT.ordinal()] = 4;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr3[l80.NONE.ordinal()] = 5;
            } catch (NoSuchFieldError unused11) {
            }
            c = iArr3;
            int[] iArr4 = new int[o80.values().length];
            try {
                iArr4[o80.FADE.ordinal()] = 1;
            } catch (NoSuchFieldError unused12) {
            }
            d = iArr4;
            int[] iArr5 = new int[n80.values().length];
            try {
                iArr5[n80.HEARTBEAT.ordinal()] = 1;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr5[n80.SHAKE.ordinal()] = 2;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                iArr5[n80.BREATH.ordinal()] = 3;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                iArr5[n80.ROTATE.ordinal()] = 4;
            } catch (NoSuchFieldError unused16) {
            }
            e = iArr5;
            int[] iArr6 = new int[t86.values().length];
            try {
                iArr6[t86.DROPDOWN.ordinal()] = 1;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                iArr6[t86.ALIGNMENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                iArr6[t86.CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused19) {
            }
            f = iArr6;
            int[] iArr7 = new int[k80.values().length];
            try {
                iArr7[k80.TOP.ordinal()] = 1;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                iArr7[k80.BOTTOM.ordinal()] = 2;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                iArr7[k80.START.ordinal()] = 3;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                iArr7[k80.END.ordinal()] = 4;
            } catch (NoSuchFieldError unused23) {
            }
            g = iArr7;
            int[] iArr8 = new int[m80.values().length];
            try {
                iArr8[m80.TOP.ordinal()] = 1;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                iArr8[m80.BOTTOM.ordinal()] = 2;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                iArr8[m80.START.ordinal()] = 3;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                iArr8[m80.END.ordinal()] = 4;
            } catch (NoSuchFieldError unused27) {
            }
        }
    }

    public static final class c implements Runnable {
        public final /* synthetic */ View b;
        public final /* synthetic */ f80 c;

        public static final class a extends AnimatorListenerAdapter {
            public final /* synthetic */ f80 a;

            public a(f80 f80Var) {
                this.a = f80Var;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                animator.getClass();
                super.onAnimationEnd(animator);
                this.a.invoke();
            }
        }

        public c(View view, f80 f80Var) {
            this.b = view;
            this.c = f80Var;
        }

        @Override // java.lang.Runnable
        public final void run() {
            View view = this.b;
            if (view.isAttachedToWindow()) {
                Animator animatorCreateCircularReveal = ViewAnimationUtils.createCircularReveal(view, (view.getRight() + view.getLeft()) / 2, (view.getBottom() + view.getTop()) / 2, Math.max(view.getWidth(), view.getHeight()), 0.0f);
                animatorCreateCircularReveal.setDuration(500L);
                animatorCreateCircularReveal.start();
                animatorCreateCircularReveal.addListener(new a(this.c));
            }
        }
    }

    static {
        new fh8(new c80(0));
        new fh8(new d80(0));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public i80(Context context, a aVar) {
        Lifecycle lifecycle;
        this.b = context;
        this.c = aVar;
        BalloonLayoutBodyBinding balloonLayoutBodyBindingInflate = BalloonLayoutBodyBinding.inflate(LayoutInflater.from(context), null, false);
        balloonLayoutBodyBindingInflate.getClass();
        this.d = balloonLayoutBodyBindingInflate;
        BalloonLayoutOverlayBinding balloonLayoutOverlayBindingInflate = BalloonLayoutOverlayBinding.inflate(LayoutInflater.from(context), null, false);
        balloonLayoutOverlayBindingInflate.getClass();
        PopupWindow popupWindow = new PopupWindow(balloonLayoutBodyBindingInflate.getRoot(), -2, -2);
        this.e = popupWindow;
        this.f = new PopupWindow(balloonLayoutOverlayBindingInflate.getRoot(), -1, -1);
        po4 po4Var = po4.NONE;
        this.i = nm4.a(po4Var, new y70(0));
        this.j = nm4.a(po4Var, new b80(this, 0));
        this.k = nm4.a(po4Var, new jf(this, 2));
        RadiusLayout radiusLayout = balloonLayoutBodyBindingInflate.balloonCard;
        radiusLayout.setAlpha(1.0f);
        radiusLayout.setRadius(aVar.m);
        radiusLayout.setRadius(aVar.m);
        ViewCompat.setElevation(radiusLayout, aVar.r);
        radiusLayout.setDrawCustomShape(false);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(aVar.l);
        gradientDrawable.setCornerRadius(aVar.m);
        radiusLayout.setBackground(gradientDrawable);
        ViewCompat.setBackgroundTintList(radiusLayout, null);
        radiusLayout.setPadding(aVar.d, aVar.e, aVar.f, aVar.g);
        FrameLayout frameLayout = balloonLayoutBodyBindingInflate.balloonWrapper;
        ViewGroup.LayoutParams layoutParams = frameLayout.getLayoutParams();
        layoutParams.getClass();
        ((ViewGroup.MarginLayoutParams) layoutParams).setMargins(0, 0, 0, 0);
        frameLayout.setFocusable(false);
        frameLayout.setFocusableInTouchMode(false);
        frameLayout.setDefaultFocusHighlightEnabled(false);
        FrameLayout root = balloonLayoutBodyBindingInflate.getRoot();
        root.setFocusable(false);
        root.setFocusableInTouchMode(false);
        root.setDefaultFocusHighlightEnabled(false);
        RadiusLayout radiusLayout2 = balloonLayoutBodyBindingInflate.balloonCard;
        radiusLayout2.setFocusable(false);
        radiusLayout2.setFocusableInTouchMode(false);
        radiusLayout2.setDefaultFocusHighlightEnabled(false);
        popupWindow.setOutsideTouchable(true);
        popupWindow.setFocusable(true);
        popupWindow.setClippingEnabled(true);
        popupWindow.setBackgroundDrawable(new ColorDrawable(0));
        popupWindow.setElevation(aVar.r);
        popupWindow.setAttachedInDecor(true);
        VectorTextView vectorTextView = balloonLayoutBodyBindingInflate.balloonText;
        vectorTextView.getClass();
        vectorTextView.getContext().getClass();
        o04 o04Var = o04.START;
        w65.b(TypedValue.applyDimension(1, 28.0f, Resources.getSystem().getDisplayMetrics()));
        w65.b(TypedValue.applyDimension(1, 28.0f, Resources.getSystem().getDisplayMetrics()));
        w65.b(TypedValue.applyDimension(1, 8.0f, Resources.getSystem().getDisplayMetrics()));
        aVar.q.getClass();
        boolean z = aVar.w;
        gc9 gc9Var = vectorTextView.v;
        if (gc9Var != null) {
            gc9Var.e = z;
            ys8.a(vectorTextView, gc9Var);
        }
        VectorTextView vectorTextView2 = balloonLayoutBodyBindingInflate.balloonText;
        vectorTextView2.getClass();
        vectorTextView2.getContext().getClass();
        CharSequence charSequence = aVar.n;
        charSequence.getClass();
        float f = aVar.p;
        int i = aVar.o;
        vectorTextView2.setMovementMethod(null);
        vectorTextView2.setText(charSequence);
        vectorTextView2.setTextSize(f);
        vectorTextView2.setGravity(17);
        vectorTextView2.setTextColor(i);
        vectorTextView2.setIncludeFontPadding(true);
        vectorTextView2.setTypeface(vectorTextView2.getTypeface(), 0);
        RadiusLayout radiusLayout3 = balloonLayoutBodyBindingInflate.balloonCard;
        radiusLayout3.getClass();
        i(vectorTextView2, radiusLayout3);
        h();
        popupWindow.setOnDismissListener(new PopupWindow.OnDismissListener() { // from class: h80
            @Override // android.widget.PopupWindow.OnDismissListener
            public final void onDismiss() {
                i80 i80Var = this.b;
                FrameLayout frameLayout2 = i80Var.d.balloon;
                Animation animation = frameLayout2.getAnimation();
                if (animation != null) {
                    animation.cancel();
                    animation.reset();
                }
                frameLayout2.clearAnimation();
                i80Var.c();
            }
        });
        popupWindow.setTouchInterceptor(new j80(this));
        balloonLayoutOverlayBindingInflate.getRoot().setOnClickListener(new View.OnClickListener() { // from class: g80
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.b.c();
            }
        });
        FrameLayout root2 = balloonLayoutBodyBindingInflate.getRoot();
        root2.getClass();
        a(root2);
        LifecycleOwner lifecycleOwner = aVar.s;
        if (lifecycleOwner == null && (context instanceof LifecycleOwner)) {
            LifecycleOwner lifecycleOwner2 = (LifecycleOwner) context;
            aVar.s = lifecycleOwner2;
            lifecycleOwner2.getLifecycle().addObserver(this);
        } else {
            if (lifecycleOwner == null || (lifecycle = lifecycleOwner.getLifecycle()) == null) {
                return;
            }
            lifecycle.addObserver(this);
        }
    }

    public static void a(ViewGroup viewGroup) {
        viewGroup.setFitsSystemWindows(false);
        y74 y74VarN = kx6.n(0, viewGroup.getChildCount());
        ArrayList<View> arrayList = new ArrayList(kn1.q(y74VarN, 10));
        x74 it = y74VarN.iterator();
        while (it.d) {
            arrayList.add(viewGroup.getChildAt(it.nextInt()));
        }
        for (View view : arrayList) {
            view.setFitsSystemWindows(false);
            if (view instanceof ViewGroup) {
                a((ViewGroup) view);
            }
        }
    }

    public static void j(i80 i80Var, View view) {
        view.getClass();
        v80 v80Var = new v80(view, k80.BOTTOM);
        View view2 = v80Var.a;
        if (i80Var.b(view2)) {
            view2.post(new e80(i80Var, view2, v80Var));
        }
    }

    public final boolean b(View view) {
        if (this.g || this.h) {
            return false;
        }
        Activity activityA = oy1.a(this.b);
        if ((activityA == null || !activityA.isFinishing()) && this.e.getContentView().getParent() == null && view.isAttachedToWindow()) {
            return view.getWindowToken().isBinderAlive();
        }
        return false;
    }

    public final void c() {
        if (this.g) {
            f80 f80Var = new f80(this, 0);
            if (this.c.t != l80.CIRCULAR) {
                f80Var.invoke();
                return;
            }
            View contentView = this.e.getContentView();
            contentView.getClass();
            contentView.post(new c(contentView, f80Var));
        }
    }

    public final float d(View view) {
        BalloonLayoutBodyBinding balloonLayoutBodyBinding = this.d;
        FrameLayout frameLayout = balloonLayoutBodyBinding.balloonContent;
        frameLayout.getClass();
        int i = tm1.b(frameLayout).x;
        int i2 = tm1.b(view).x;
        a aVar = this.c;
        float f = (aVar.h * 2.5f) + 0.0f;
        float fG = ((g() - f) - 0.0f) - 0.0f;
        float f2 = aVar.h * 0.5f;
        int i3 = b.b[aVar.i.ordinal()];
        if (i3 != 1) {
            if (i3 == 2) {
                return (balloonLayoutBodyBinding.balloonWrapper.getWidth() * 0.5f) - f2;
            }
            me0.e();
            return 0.0f;
        }
        if (view.getWidth() + i2 >= i) {
            if (g() + i >= i2) {
                float f3 = i2;
                float f4 = i;
                float width = (((view.getWidth() * 0.5f) + f3) - f4) - f2;
                float width2 = ((view.getWidth() * 0.5f) + f3) - f2;
                if (width2 <= f4) {
                    return 0.0f;
                }
                if (width2 > f4 && view.getWidth() <= g()) {
                    return width2 - f4;
                }
                if (width > aVar.h * 2) {
                    if (width <= g() - (aVar.h * 2)) {
                        return width;
                    }
                }
            }
            return fG;
        }
        return f;
    }

    public final float e(View view) {
        int i;
        view.getClass();
        Rect rect = new Rect();
        Context context = view.getContext();
        context.getClass();
        Activity activityA = oy1.a(context);
        if (activityA != null) {
            activityA.getWindow().getDecorView().getWindowVisibleDisplayFrame(rect);
            i = rect.top;
        } else {
            i = 0;
        }
        BalloonLayoutBodyBinding balloonLayoutBodyBinding = this.d;
        FrameLayout frameLayout = balloonLayoutBodyBinding.balloonContent;
        frameLayout.getClass();
        int i2 = tm1.b(frameLayout).y - i;
        int i3 = tm1.b(view).y - i;
        a aVar = this.c;
        float f = (aVar.h * 2.5f) + 0.0f;
        float f2 = ((f() - f) - 0.0f) - 0.0f;
        float f3 = aVar.h * 0.5f;
        int i4 = b.b[aVar.i.ordinal()];
        if (i4 != 1) {
            if (i4 == 2) {
                return (balloonLayoutBodyBinding.balloonWrapper.getHeight() * 0.5f) - f3;
            }
            me0.e();
            return 0.0f;
        }
        if (view.getHeight() + i3 >= i2) {
            if (f() + i2 >= i3) {
                float height = (((view.getHeight() * 0.5f) + i3) - i2) - f3;
                if (height > aVar.h * 2) {
                    if (height <= f() - (aVar.h * 2)) {
                        return height;
                    }
                }
            }
            return f2;
        }
        return f;
    }

    public final int f() {
        int i = this.c.c;
        return i != Integer.MIN_VALUE ? i : this.d.getRoot().getMeasuredHeight();
    }

    public final int g() {
        int i = new Point(Resources.getSystem().getDisplayMetrics().widthPixels, Resources.getSystem().getDisplayMetrics().heightPixels).x;
        a aVar = this.c;
        int i2 = aVar.a;
        if (i2 == Integer.MIN_VALUE) {
            int iF = kx6.f(this.d.getRoot().getMeasuredWidth(), 0, aVar.b);
            if (iF <= i) {
                return iF;
            }
        } else if (i2 <= i) {
            return i2;
        }
        return i;
    }

    public final void h() {
        a aVar = this.c;
        int i = (int) aVar.r;
        FrameLayout frameLayout = this.d.balloonContent;
        int i2 = b.a[aVar.k.ordinal()];
        if (i2 == 1 || i2 == 2) {
            int i3 = aVar.h - 1;
            frameLayout.setPadding(i, i3, i, i3 < i ? i : i3);
        } else if (i2 != 3 && i2 != 4) {
            me0.e();
        } else {
            int i4 = aVar.h - 1;
            frameLayout.setPadding(i4, i, i4, i);
        }
    }

    /* JADX WARN: Code duplicated, block: B:48:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:53:0x00ef A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:54:0x00f1  */
    public final void i(TextView textView, View view) {
        int intrinsicWidth;
        int compoundPaddingEnd;
        int i;
        int i2;
        int i3;
        int iMeasureText = (int) textView.getPaint().measureText(textView.getText().toString());
        Drawable[] compoundDrawablesRelative = textView.getCompoundDrawablesRelative();
        compoundDrawablesRelative.getClass();
        int intrinsicWidth2 = 0;
        if (compoundDrawablesRelative[0] == null && compoundDrawablesRelative[2] == null) {
            Drawable[] compoundDrawables = textView.getCompoundDrawables();
            compoundDrawables.getClass();
            if (compoundDrawables[0] != null || compoundDrawables[2] != null) {
                Drawable[] compoundDrawables2 = textView.getCompoundDrawables();
                compoundDrawables2.getClass();
                Drawable drawable = compoundDrawables2[0];
                int intrinsicHeight = drawable != null ? drawable.getIntrinsicHeight() : 0;
                Drawable drawable2 = compoundDrawables2[2];
                int intrinsicHeight2 = drawable2 != null ? drawable2.getIntrinsicHeight() : 0;
                if (intrinsicHeight < intrinsicHeight2) {
                    intrinsicHeight = intrinsicHeight2;
                }
                textView.setMinHeight(intrinsicHeight);
                Drawable[] compoundDrawables3 = textView.getCompoundDrawables();
                compoundDrawables3.getClass();
                Drawable drawable3 = compoundDrawables3[0];
                intrinsicWidth = drawable3 != null ? drawable3.getIntrinsicWidth() : 0;
                Drawable drawable4 = compoundDrawables3[2];
                if (drawable4 != null) {
                    intrinsicWidth2 = drawable4.getIntrinsicWidth();
                }
            }
            compoundPaddingEnd = textView.getCompoundPaddingEnd() + textView.getCompoundPaddingStart() + iMeasureText;
            i = new Point(Resources.getSystem().getDisplayMetrics().widthPixels, Resources.getSystem().getDisplayMetrics().heightPixels).x;
            int paddingRight = view.getPaddingRight() + view.getPaddingLeft();
            a aVar = this.c;
            int i4 = (aVar.h * 2) + paddingRight;
            i2 = aVar.b - i4;
            if (i2 > i) {
                i2 = i;
            }
            i3 = aVar.a;
            if (i3 == Integer.MIN_VALUE && i3 <= i) {
                compoundPaddingEnd = i3 - i4;
            } else if (compoundPaddingEnd > i2) {
                compoundPaddingEnd = i2;
            }
            textView.setMaxWidth(compoundPaddingEnd);
        }
        Drawable[] compoundDrawablesRelative2 = textView.getCompoundDrawablesRelative();
        compoundDrawablesRelative2.getClass();
        Drawable drawable5 = compoundDrawablesRelative2[0];
        int intrinsicHeight3 = drawable5 != null ? drawable5.getIntrinsicHeight() : 0;
        Drawable drawable6 = compoundDrawablesRelative2[2];
        int intrinsicHeight4 = drawable6 != null ? drawable6.getIntrinsicHeight() : 0;
        if (intrinsicHeight3 < intrinsicHeight4) {
            intrinsicHeight3 = intrinsicHeight4;
        }
        textView.setMinHeight(intrinsicHeight3);
        Drawable[] compoundDrawablesRelative3 = textView.getCompoundDrawablesRelative();
        compoundDrawablesRelative3.getClass();
        Drawable drawable7 = compoundDrawablesRelative3[0];
        intrinsicWidth = drawable7 != null ? drawable7.getIntrinsicWidth() : 0;
        Drawable drawable8 = compoundDrawablesRelative3[2];
        if (drawable8 != null) {
            intrinsicWidth2 = drawable8.getIntrinsicWidth();
        }
        iMeasureText += intrinsicWidth2 + intrinsicWidth;
        compoundPaddingEnd = textView.getCompoundPaddingEnd() + textView.getCompoundPaddingStart() + iMeasureText;
        i = new Point(Resources.getSystem().getDisplayMetrics().widthPixels, Resources.getSystem().getDisplayMetrics().heightPixels).x;
        int paddingRight2 = view.getPaddingRight() + view.getPaddingLeft();
        a aVar2 = this.c;
        int i5 = (aVar2.h * 2) + paddingRight2;
        i2 = aVar2.b - i5;
        if (i2 > i) {
            i2 = i;
        }
        i3 = aVar2.a;
        if (i3 == Integer.MIN_VALUE) {
            if (compoundPaddingEnd > i2) {
                compoundPaddingEnd = i2;
            }
        } else if (compoundPaddingEnd > i2) {
            compoundPaddingEnd = i2;
        }
        textView.setMaxWidth(compoundPaddingEnd);
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final void onDestroy(LifecycleOwner lifecycleOwner) {
        Lifecycle lifecycle;
        lifecycleOwner.getClass();
        super.onDestroy(lifecycleOwner);
        this.h = true;
        this.f.dismiss();
        this.e.dismiss();
        LifecycleOwner lifecycleOwner2 = this.c.s;
        if (lifecycleOwner2 == null || (lifecycle = lifecycleOwner2.getLifecycle()) == null) {
            return;
        }
        lifecycle.removeObserver(this);
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final void onPause(LifecycleOwner lifecycleOwner) {
        lifecycleOwner.getClass();
        super.onPause(lifecycleOwner);
    }
}
