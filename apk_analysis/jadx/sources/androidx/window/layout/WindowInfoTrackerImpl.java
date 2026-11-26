package androidx.window.layout;

import android.app.Activity;
import android.content.Context;
import androidx.compose.ui.spatial.RectListKt;
import androidx.core.util.Consumer;
import androidx.window.WindowSdkExtensions;
import androidx.window.layout.adapter.WindowBackend;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.hd3;
import defpackage.j59;
import defpackage.ll3;
import defpackage.o86;
import defpackage.oi2;
import defpackage.pg8;
import defpackage.qo2;
import defpackage.r57;
import defpackage.s0;
import defpackage.sg6;
import defpackage.ud3;
import defpackage.ug6;
import defpackage.uy4;
import defpackage.wy0;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class WindowInfoTrackerImpl implements WindowInfoTracker {
    private final WindowBackend windowBackend;
    private final WindowMetricsCalculator windowMetricsCalculator;
    private final WindowSdkExtensions windowSdkExtensions;

    /* JADX INFO: renamed from: androidx.window.layout.WindowInfoTrackerImpl$windowLayoutInfo$1, reason: invalid class name */
    @bd2(c = "androidx.window.layout.WindowInfoTrackerImpl$windowLayoutInfo$1", f = "WindowInfoTrackerImpl.kt", l = {52}, m = "invokeSuspend")
    public static final class AnonymousClass1 extends pg8 implements bm3<ug6<? super WindowLayoutInfo>, e02<? super j59>, Object> {
        final /* synthetic */ Context $context;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Context context, e02<? super AnonymousClass1> e02Var) {
            super(2, e02Var);
            this.$context = context;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final j59 invokeSuspend$lambda$1(WindowInfoTrackerImpl windowInfoTrackerImpl, Consumer consumer) {
            windowInfoTrackerImpl.windowBackend.unregisterLayoutChangeCallback(consumer);
            return j59.a;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            AnonymousClass1 anonymousClass1 = WindowInfoTrackerImpl.this.new AnonymousClass1(this.$context, e02Var);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // defpackage.bm3
        public final Object invoke(ug6<? super WindowLayoutInfo> ug6Var, e02<? super j59> e02Var) {
            return ((AnonymousClass1) create(ug6Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v1, types: [androidx.core.util.Consumer, androidx.window.layout.a] */
        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                final ug6 ug6Var = (ug6) this.L$0;
                final ?? r1 = new Consumer() { // from class: androidx.window.layout.a
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj2) {
                        ug6Var.mo0trySendJP2dKIU((WindowLayoutInfo) obj2);
                    }
                };
                WindowInfoTrackerImpl.this.windowBackend.registerLayoutChangeCallback(this.$context, new o86(), r1);
                final WindowInfoTrackerImpl windowInfoTrackerImpl = WindowInfoTrackerImpl.this;
                ll3 ll3Var = new ll3() { // from class: androidx.window.layout.b
                    @Override // defpackage.ll3
                    public final Object invoke() {
                        return WindowInfoTrackerImpl.AnonymousClass1.invokeSuspend$lambda$1(windowInfoTrackerImpl, r1);
                    }
                };
                this.label = 1;
                if (sg6.a(ug6Var, ll3Var, this) == a32Var) {
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

    /* JADX INFO: renamed from: androidx.window.layout.WindowInfoTrackerImpl$windowLayoutInfo$2, reason: invalid class name */
    @bd2(c = "androidx.window.layout.WindowInfoTrackerImpl$windowLayoutInfo$2", f = "WindowInfoTrackerImpl.kt", l = {RectListKt.BitOffsetForGesturable}, m = "invokeSuspend")
    public static final class AnonymousClass2 extends pg8 implements bm3<ug6<? super WindowLayoutInfo>, e02<? super j59>, Object> {
        final /* synthetic */ Activity $activity;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(Activity activity, e02<? super AnonymousClass2> e02Var) {
            super(2, e02Var);
            this.$activity = activity;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final j59 invokeSuspend$lambda$1(WindowInfoTrackerImpl windowInfoTrackerImpl, Consumer consumer) {
            windowInfoTrackerImpl.windowBackend.unregisterLayoutChangeCallback(consumer);
            return j59.a;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            AnonymousClass2 anonymousClass2 = WindowInfoTrackerImpl.this.new AnonymousClass2(this.$activity, e02Var);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // defpackage.bm3
        public final Object invoke(ug6<? super WindowLayoutInfo> ug6Var, e02<? super j59> e02Var) {
            return ((AnonymousClass2) create(ug6Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v1, types: [androidx.core.util.Consumer, androidx.window.layout.c] */
        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                final ug6 ug6Var = (ug6) this.L$0;
                final ?? r1 = new Consumer() { // from class: androidx.window.layout.c
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj2) {
                        ug6Var.mo0trySendJP2dKIU((WindowLayoutInfo) obj2);
                    }
                };
                WindowInfoTrackerImpl.this.windowBackend.registerLayoutChangeCallback(this.$activity, new o86(), r1);
                final WindowInfoTrackerImpl windowInfoTrackerImpl = WindowInfoTrackerImpl.this;
                ll3 ll3Var = new ll3() { // from class: androidx.window.layout.d
                    @Override // defpackage.ll3
                    public final Object invoke() {
                        return WindowInfoTrackerImpl.AnonymousClass2.invokeSuspend$lambda$1(windowInfoTrackerImpl, r1);
                    }
                };
                this.label = 1;
                if (sg6.a(ug6Var, ll3Var, this) == a32Var) {
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

    public WindowInfoTrackerImpl(WindowMetricsCalculator windowMetricsCalculator, WindowBackend windowBackend, WindowSdkExtensions windowSdkExtensions) {
        windowMetricsCalculator.getClass();
        windowBackend.getClass();
        windowSdkExtensions.getClass();
        this.windowMetricsCalculator = windowMetricsCalculator;
        this.windowBackend = windowBackend;
        this.windowSdkExtensions = windowSdkExtensions;
    }

    @Override // androidx.window.layout.WindowInfoTracker
    public WindowLayoutInfo getCurrentWindowLayoutInfo(Context context) {
        context.getClass();
        this.windowSdkExtensions.requireExtensionVersion$window_release(9);
        return this.windowBackend.getCurrentWindowLayoutInfo(context);
    }

    @Override // androidx.window.layout.WindowInfoTracker
    public List<SupportedPosture> getSupportedPostures() {
        this.windowSdkExtensions.requireExtensionVersion$window_release(6);
        return this.windowBackend.getSupportedPostures();
    }

    @Override // androidx.window.layout.WindowInfoTracker
    public hd3<WindowLayoutInfo> windowLayoutInfo(Context context) {
        context.getClass();
        wy0 wy0VarA = s0.a(new AnonymousClass1(context, null));
        oi2 oi2Var = qo2.a;
        return ud3.b(wy0VarA, uy4.a);
    }

    @Override // androidx.window.layout.WindowInfoTracker
    public hd3<WindowLayoutInfo> windowLayoutInfo(Activity activity) {
        activity.getClass();
        wy0 wy0VarA = s0.a(new AnonymousClass2(activity, null));
        oi2 oi2Var = qo2.a;
        return ud3.b(wy0VarA, uy4.a);
    }
}
