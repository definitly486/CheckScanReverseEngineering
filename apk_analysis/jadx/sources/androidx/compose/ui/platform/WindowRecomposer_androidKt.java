package androidx.compose.ui.platform;

import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import android.view.View;
import androidx.collection.MutableScatterMap;
import androidx.collection.ScatterMapKt;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.runtime.MonotonicFrameClock;
import androidx.compose.runtime.PausableMonotonicFrameClock;
import androidx.compose.runtime.Recomposer;
import androidx.compose.ui.MotionDurationScale;
import androidx.compose.ui.R;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.core.os.HandlerCompat;
import androidx.core.viewtree.ViewTree;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewTreeLifecycleOwner;
import defpackage.ah;
import defpackage.av0;
import defpackage.bf3;
import defpackage.c32;
import defpackage.g02;
import defpackage.gx2;
import defpackage.h8;
import defpackage.j59;
import defpackage.jd8;
import defpackage.kz1;
import defpackage.l91;
import defpackage.me0;
import defpackage.mu0;
import defpackage.o22;
import defpackage.oi2;
import defpackage.qo2;
import defpackage.r07;
import defpackage.rm9;
import defpackage.tb7;
import defpackage.uy4;
import defpackage.w68;
import defpackage.y68;
import defpackage.z22;

/* JADX INFO: loaded from: classes2.dex */
public final class WindowRecomposer_androidKt {
    private static final MutableScatterMap<Context, y68<Float>> animationScale = ScatterMapKt.mutableScatterMapOf();

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v3, types: [o22] */
    /* JADX WARN: Type inference failed for: r3v5, types: [T, androidx.compose.ui.platform.MotionDurationScaleImpl] */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* JADX WARN: Type inference failed for: r6v3, types: [o22] */
    public static final Recomposer createLifecycleAwareWindowRecomposer(final View view, o22 o22Var, Lifecycle lifecycle) {
        final PausableMonotonicFrameClock pausableMonotonicFrameClock;
        o22 o22Var2;
        ?? motionDurationScaleImpl;
        if (o22Var.get(g02.a.b) == null || o22Var.get(MonotonicFrameClock.Key) == null) {
            o22Var = AndroidUiDispatcher.Companion.getCurrentThread().plus(o22Var);
        }
        MonotonicFrameClock monotonicFrameClock = (MonotonicFrameClock) o22Var.get(MonotonicFrameClock.Key);
        if (monotonicFrameClock != null) {
            pausableMonotonicFrameClock = new PausableMonotonicFrameClock(monotonicFrameClock);
            pausableMonotonicFrameClock.pause();
        } else {
            pausableMonotonicFrameClock = null;
        }
        final r07 r07Var = new r07();
        MotionDurationScale motionDurationScale = (MotionDurationScale) o22Var.get(MotionDurationScale.Key);
        ?? r3 = motionDurationScale;
        if (motionDurationScale == null) {
            motionDurationScaleImpl = new MotionDurationScaleImpl(view.getContext().getApplicationContext());
            r07Var.b = motionDurationScaleImpl;
        }
        if (pausableMonotonicFrameClock != null) {
            r3 = motionDurationScaleImpl;
            o22Var2 = pausableMonotonicFrameClock;
        } else {
            r3 = motionDurationScaleImpl;
            o22Var2 = gx2.b;
        }
        o22 o22VarPlus = o22Var.plus(o22Var2).plus(r3);
        final Recomposer recomposer = new Recomposer(o22VarPlus);
        recomposer.pauseCompositionFrameClock();
        final kz1 kz1VarA = z22.a(o22VarPlus);
        if (lifecycle == null) {
            LifecycleOwner lifecycleOwner = ViewTreeLifecycleOwner.get(view);
            lifecycle = lifecycleOwner != null ? lifecycleOwner.getLifecycle() : null;
        }
        if (lifecycle != null) {
            view.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: androidx.compose.ui.platform.WindowRecomposer_androidKt.createLifecycleAwareWindowRecomposer.1
                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewAttachedToWindow(View view2) {
                }

                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewDetachedFromWindow(View view2) {
                    view.removeOnAttachStateChangeListener(this);
                    recomposer.cancel();
                }
            });
            lifecycle.addObserver(new LifecycleEventObserver() { // from class: androidx.compose.ui.platform.WindowRecomposer_androidKt.createLifecycleAwareWindowRecomposer.2

                /* JADX INFO: renamed from: androidx.compose.ui.platform.WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2$WhenMappings */
                /* JADX INFO: loaded from: classes.dex */
                public static final /* synthetic */ class WhenMappings {
                    public static final /* synthetic */ int[] $EnumSwitchMapping$0;

                    static {
                        int[] iArr = new int[Lifecycle.Event.values().length];
                        try {
                            iArr[Lifecycle.Event.ON_CREATE.ordinal()] = 1;
                        } catch (NoSuchFieldError unused) {
                        }
                        try {
                            iArr[Lifecycle.Event.ON_START.ordinal()] = 2;
                        } catch (NoSuchFieldError unused2) {
                        }
                        try {
                            iArr[Lifecycle.Event.ON_STOP.ordinal()] = 3;
                        } catch (NoSuchFieldError unused3) {
                        }
                        try {
                            iArr[Lifecycle.Event.ON_DESTROY.ordinal()] = 4;
                        } catch (NoSuchFieldError unused4) {
                        }
                        try {
                            iArr[Lifecycle.Event.ON_PAUSE.ordinal()] = 5;
                        } catch (NoSuchFieldError unused5) {
                        }
                        try {
                            iArr[Lifecycle.Event.ON_RESUME.ordinal()] = 6;
                        } catch (NoSuchFieldError unused6) {
                        }
                        try {
                            iArr[Lifecycle.Event.ON_ANY.ordinal()] = 7;
                        } catch (NoSuchFieldError unused7) {
                        }
                        $EnumSwitchMapping$0 = iArr;
                    }
                }

                @Override // androidx.lifecycle.LifecycleEventObserver
                public void onStateChanged(LifecycleOwner lifecycleOwner2, Lifecycle.Event event) {
                    switch (WhenMappings.$EnumSwitchMapping$0[event.ordinal()]) {
                        case 1:
                            av0.c(kz1VarA, null, c32.UNDISPATCHED, new WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2$onStateChanged$1(r07Var, recomposer, lifecycleOwner2, this, null), 1);
                            break;
                        case 2:
                            PausableMonotonicFrameClock pausableMonotonicFrameClock2 = pausableMonotonicFrameClock;
                            if (pausableMonotonicFrameClock2 != null) {
                                pausableMonotonicFrameClock2.resume();
                            }
                            recomposer.resumeCompositionFrameClock();
                            break;
                        case 3:
                            recomposer.pauseCompositionFrameClock();
                            break;
                        case 4:
                            recomposer.cancel();
                            break;
                        case 5:
                        case 6:
                        case 7:
                            break;
                        default:
                            me0.e();
                            break;
                    }
                }
            });
            return recomposer;
        }
        InlineClassHelperKt.throwIllegalStateExceptionForNullCheck("ViewTreeLifecycleOwner not found from " + view);
        h8.d();
        return null;
    }

    public static /* synthetic */ Recomposer createLifecycleAwareWindowRecomposer$default(View view, o22 o22Var, Lifecycle lifecycle, int i, Object obj) {
        if ((i & 1) != 0) {
            o22Var = gx2.b;
        }
        if ((i & 2) != 0) {
            lifecycle = null;
        }
        return createLifecycleAwareWindowRecomposer(view, o22Var, lifecycle);
    }

    public static final CompositionContext findViewTreeCompositionContext(View view) {
        CompositionContext compositionContext = getCompositionContext(view);
        if (compositionContext != null) {
            return compositionContext;
        }
        Object parent = view.getParent();
        while (compositionContext == null && (parent instanceof View)) {
            View view2 = (View) parent;
            compositionContext = getCompositionContext(view2);
            parent = ViewTree.getParentOrViewTreeDisjointParent(view2);
        }
        return compositionContext;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r5v1, types: [androidx.compose.ui.platform.WindowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$contentObserver$1] */
    public static final y68<Float> getAnimationScaleFlowFor(Context context) {
        y68<Float> y68Var;
        MutableScatterMap<Context, y68<Float>> mutableScatterMap = animationScale;
        synchronized (mutableScatterMap) {
            try {
                y68<Float> y68VarD = mutableScatterMap.get(context);
                if (y68VarD == null) {
                    ContentResolver contentResolver = context.getContentResolver();
                    Uri uriFor = Settings.Global.getUriFor("animator_duration_scale");
                    final mu0 mu0VarA = l91.a(-1, null, null, 6);
                    final Handler handlerCreateAsync = HandlerCompat.createAsync(Looper.getMainLooper());
                    tb7 tb7Var = new tb7(new WindowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1(contentResolver, uriFor, new ContentObserver(handlerCreateAsync) { // from class: androidx.compose.ui.platform.WindowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$contentObserver$1
                        @Override // android.database.ContentObserver
                        public void onChange(boolean z, Uri uri) {
                            mu0VarA.mo0trySendJP2dKIU(j59.a);
                        }
                    }, mu0VarA, context, null));
                    jd8 jd8VarB = rm9.b();
                    oi2 oi2Var = qo2.a;
                    y68VarD = bf3.d(tb7Var, new kz1(o22.a.C0306a.d(jd8VarB, uy4.a)), new w68(0L, Long.MAX_VALUE), Float.valueOf(readAnimationScale(context)));
                    mutableScatterMap.set(context, y68VarD);
                }
                y68Var = y68VarD;
            } catch (Throwable th) {
                throw th;
            }
        }
        return y68Var;
    }

    public static final CompositionContext getCompositionContext(View view) {
        Object tag = view.getTag(R.id.androidx_compose_ui_view_composition_context);
        if (tag instanceof CompositionContext) {
            return (CompositionContext) tag;
        }
        return null;
    }

    public static final View getContentChild(View view) {
        Object parentOrViewTreeDisjointParent = ViewTree.getParentOrViewTreeDisjointParent(view);
        while (parentOrViewTreeDisjointParent instanceof View) {
            View view2 = (View) parentOrViewTreeDisjointParent;
            if (view2.getId() == 16908290) {
                break;
            }
            parentOrViewTreeDisjointParent = view2.getParent();
            view = view2;
        }
        return view;
    }

    public static final Recomposer getWindowRecomposer(View view) {
        if (!view.isAttachedToWindow()) {
            InlineClassHelperKt.throwIllegalStateException("Cannot locate windowRecomposer; View " + view + " is not attached to a window");
        }
        View contentChild = getContentChild(view);
        CompositionContext compositionContext = getCompositionContext(contentChild);
        if (compositionContext == null) {
            return WindowRecomposerPolicy.INSTANCE.createAndInstallWindowRecomposer$ui(contentChild);
        }
        if (compositionContext instanceof Recomposer) {
            return (Recomposer) compositionContext;
        }
        ah.f("root viewTreeParentCompositionContext is not a Recomposer");
        return null;
    }

    public static /* synthetic */ void getWindowRecomposer$annotations(View view) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float readAnimationScale(Context context) {
        return Settings.Global.getFloat(context.getContentResolver(), "animator_duration_scale", 1.0f);
    }

    public static final void setCompositionContext(View view, CompositionContext compositionContext) {
        view.setTag(R.id.androidx_compose_ui_view_composition_context, compositionContext);
    }
}
