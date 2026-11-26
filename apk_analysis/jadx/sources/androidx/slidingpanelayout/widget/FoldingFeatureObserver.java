package androidx.slidingpanelayout.widget;

import android.app.Activity;
import androidx.media3.extractor.ts.TsExtractor;
import androidx.window.layout.DisplayFeature;
import androidx.window.layout.FoldingFeature;
import androidx.window.layout.WindowInfoTracker;
import androidx.window.layout.WindowLayoutInfo;
import defpackage.a32;
import defpackage.ah;
import defpackage.aq5;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.f02;
import defpackage.hd3;
import defpackage.id3;
import defpackage.j59;
import defpackage.mb4;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;
import defpackage.z22;
import defpackage.zd3;
import java.util.Iterator;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes3.dex */
public final class FoldingFeatureObserver {
    private final Executor executor;
    private mb4 job;
    private OnFoldingFeatureChangeListener onFoldingFeatureChangeListener;
    private final WindowInfoTracker windowInfoTracker;

    public interface OnFoldingFeatureChangeListener {
        void onFoldingFeatureChange(FoldingFeature foldingFeature);
    }

    /* JADX INFO: renamed from: androidx.slidingpanelayout.widget.FoldingFeatureObserver$registerLayoutStateChangeCallback$1, reason: invalid class name */
    @bd2(c = "androidx.slidingpanelayout.widget.FoldingFeatureObserver$registerLayoutStateChangeCallback$1", f = "FoldingFeatureObserver.kt", l = {97}, m = "invokeSuspend")
    public static final class AnonymousClass1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        final /* synthetic */ Activity $activity;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Activity activity, e02<? super AnonymousClass1> e02Var) {
            super(2, e02Var);
            this.$activity = activity;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return FoldingFeatureObserver.this.new AnonymousClass1(this.$activity, e02Var);
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
                final hd3<WindowLayoutInfo> hd3VarWindowLayoutInfo = FoldingFeatureObserver.this.windowInfoTracker.windowLayoutInfo(this.$activity);
                final FoldingFeatureObserver foldingFeatureObserver = FoldingFeatureObserver.this;
                hd3 hd3VarC = zd3.c(new hd3<FoldingFeature>() { // from class: androidx.slidingpanelayout.widget.FoldingFeatureObserver$registerLayoutStateChangeCallback$1$invokeSuspend$$inlined$mapNotNull$1

                    /* JADX INFO: renamed from: androidx.slidingpanelayout.widget.FoldingFeatureObserver$registerLayoutStateChangeCallback$1$invokeSuspend$$inlined$mapNotNull$1$2, reason: invalid class name */
                    public static final class AnonymousClass2 implements id3<WindowLayoutInfo> {
                        final /* synthetic */ id3 $this_unsafeFlow$inlined;
                        final /* synthetic */ FoldingFeatureObserver this$0;

                        /* JADX INFO: renamed from: androidx.slidingpanelayout.widget.FoldingFeatureObserver$registerLayoutStateChangeCallback$1$invokeSuspend$$inlined$mapNotNull$1$2$1, reason: invalid class name */
                        @bd2(c = "androidx.slidingpanelayout.widget.FoldingFeatureObserver$registerLayoutStateChangeCallback$1$invokeSuspend$$inlined$mapNotNull$1$2", f = "FoldingFeatureObserver.kt", l = {TsExtractor.TS_STREAM_TYPE_DTS}, m = "emit")
                        public static final class AnonymousClass1 extends f02 {
                            Object L$0;
                            int label;
                            /* synthetic */ Object result;

                            public AnonymousClass1(e02 e02Var) {
                                super(e02Var);
                            }

                            @Override // defpackage.cd0
                            public final Object invokeSuspend(Object obj) {
                                this.result = obj;
                                this.label |= Integer.MIN_VALUE;
                                return AnonymousClass2.this.emit(null, this);
                            }
                        }

                        public AnonymousClass2(id3 id3Var, FoldingFeatureObserver foldingFeatureObserver) {
                            this.$this_unsafeFlow$inlined = id3Var;
                            this.this$0 = foldingFeatureObserver;
                        }

                        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
                        @Override // defpackage.id3
                        public Object emit(WindowLayoutInfo windowLayoutInfo, e02 e02Var) {
                            AnonymousClass1 anonymousClass1;
                            if (e02Var instanceof AnonymousClass1) {
                                anonymousClass1 = (AnonymousClass1) e02Var;
                                int i = anonymousClass1.label;
                                if ((i & Integer.MIN_VALUE) != 0) {
                                    anonymousClass1.label = i - Integer.MIN_VALUE;
                                } else {
                                    anonymousClass1 = new AnonymousClass1(e02Var);
                                }
                            } else {
                                anonymousClass1 = new AnonymousClass1(e02Var);
                            }
                            Object obj = anonymousClass1.result;
                            a32 a32Var = a32.COROUTINE_SUSPENDED;
                            int i2 = anonymousClass1.label;
                            if (i2 == 0) {
                                r57.b(obj);
                                id3 id3Var = this.$this_unsafeFlow$inlined;
                                FoldingFeature foldingFeature = this.this$0.getFoldingFeature(windowLayoutInfo);
                                if (foldingFeature != null) {
                                    anonymousClass1.label = 1;
                                    if (id3Var.emit(foldingFeature, anonymousClass1) == a32Var) {
                                        return a32Var;
                                    }
                                }
                            } else {
                                if (i2 != 1) {
                                    ah.f("call to 'resume' before 'invoke' with coroutine");
                                    return null;
                                }
                                r57.b(obj);
                            }
                            return j59.a;
                        }
                    }

                    @Override // defpackage.hd3
                    public Object collect(id3<? super FoldingFeature> id3Var, e02 e02Var) {
                        Object objCollect = hd3VarWindowLayoutInfo.collect(new AnonymousClass2(id3Var, foldingFeatureObserver), e02Var);
                        return objCollect == a32.COROUTINE_SUSPENDED ? objCollect : j59.a;
                    }
                });
                final FoldingFeatureObserver foldingFeatureObserver2 = FoldingFeatureObserver.this;
                id3<FoldingFeature> id3Var = new id3<FoldingFeature>() { // from class: androidx.slidingpanelayout.widget.FoldingFeatureObserver$registerLayoutStateChangeCallback$1$invokeSuspend$$inlined$collect$1
                    @Override // defpackage.id3
                    public Object emit(FoldingFeature foldingFeature, e02<? super j59> e02Var) {
                        j59 j59Var;
                        FoldingFeature foldingFeature2 = foldingFeature;
                        FoldingFeatureObserver.OnFoldingFeatureChangeListener onFoldingFeatureChangeListener = foldingFeatureObserver2.onFoldingFeatureChangeListener;
                        if (onFoldingFeatureChangeListener == null) {
                            j59Var = null;
                        } else {
                            onFoldingFeatureChangeListener.onFoldingFeatureChange(foldingFeature2);
                            j59Var = j59.a;
                        }
                        return j59Var == a32.COROUTINE_SUSPENDED ? j59Var : j59.a;
                    }
                };
                this.label = 1;
                if (hd3VarC.collect(id3Var, this) == a32Var) {
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

    public FoldingFeatureObserver(WindowInfoTracker windowInfoTracker, Executor executor) {
        windowInfoTracker.getClass();
        executor.getClass();
        this.windowInfoTracker = windowInfoTracker;
        this.executor = executor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final FoldingFeature getFoldingFeature(WindowLayoutInfo windowLayoutInfo) {
        Object next;
        Iterator<T> it = windowLayoutInfo.getDisplayFeatures().iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!(((DisplayFeature) next) instanceof FoldingFeature));
        if (next instanceof FoldingFeature) {
            return (FoldingFeature) next;
        }
        return null;
    }

    public final void registerLayoutStateChangeCallback(Activity activity) {
        activity.getClass();
        mb4 mb4Var = this.job;
        if (mb4Var != null) {
            mb4Var.cancel(null);
        }
        this.job = av0.c(z22.a(aq5.x(this.executor)), null, null, new AnonymousClass1(activity, null), 3);
    }

    public final void setOnFoldingFeatureChangeListener(OnFoldingFeatureChangeListener onFoldingFeatureChangeListener) {
        onFoldingFeatureChangeListener.getClass();
        this.onFoldingFeatureChangeListener = onFoldingFeatureChangeListener;
    }

    public final void unregisterLayoutStateChangeCallback() {
        mb4 mb4Var = this.job;
        if (mb4Var == null) {
            return;
        }
        mb4Var.cancel(null);
    }
}
