package androidx.compose.foundation.gestures;

import androidx.compose.foundation.ComposeFoundationFlags;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.HistoricalChange;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerEventType;
import androidx.compose.ui.input.pointer.PointerEvent_androidKt;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerInputScope;
import defpackage.a32;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.f02;
import defpackage.f57;
import defpackage.j59;
import defpackage.mg6;
import defpackage.nl3;
import defpackage.o22;
import defpackage.qn1;
import defpackage.x81;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class TransformableKt {
    public static final float SCROLL_FACTOR = 545.0f;

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TransformableKt$detectNonTouchGestures$2, reason: invalid class name */
    @bd2(c = "androidx.compose.foundation.gestures.TransformableKt$detectNonTouchGestures$2", f = "Transformable.kt", l = {288, 315, 331, 349}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass2 extends f57 implements bm3<AwaitPointerEventScope, e02<? super j59>, Object> {
        final /* synthetic */ x81<TransformEvent> $channel;
        final /* synthetic */ o22 $currentContext;
        final /* synthetic */ ScrollConfig $scrollConfig;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(o22 o22Var, ScrollConfig scrollConfig, x81<TransformEvent> x81Var, e02<? super AnonymousClass2> e02Var) {
            super(2, e02Var);
            this.$currentContext = o22Var;
            this.$scrollConfig = scrollConfig;
            this.$channel = x81Var;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final boolean invokeSuspend$lambda$0(PointerInputChange pointerInputChange) {
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final boolean invokeSuspend$lambda$1(PointerInputChange pointerInputChange) {
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final boolean invokeSuspend$lambda$3(PointerInputChange pointerInputChange) {
            return true;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$currentContext, this.$scrollConfig, this.$channel, e02Var);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // defpackage.bm3
        public final Object invoke(AwaitPointerEventScope awaitPointerEventScope, e02<? super j59> e02Var) {
            return ((AnonymousClass2) create(awaitPointerEventScope, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Code duplicated, block: B:29:0x0063  */
        /* JADX WARN: Code duplicated, block: B:30:0x0065 A[Catch: all -> 0x0021, PHI: r2 r9
          0x0065: PHI (r2v8 androidx.compose.ui.input.pointer.AwaitPointerEventScope) = 
          (r2v10 androidx.compose.ui.input.pointer.AwaitPointerEventScope)
          (r2v16 androidx.compose.ui.input.pointer.AwaitPointerEventScope)
         binds: [B:28:0x0061, B:23:0x0047] A[DONT_GENERATE, DONT_INLINE]
          0x0065: PHI (r9v10 java.lang.Object) = (r9v12 java.lang.Object), (r9v22 java.lang.Object) binds: [B:28:0x0061, B:23:0x0047] A[DONT_GENERATE, DONT_INLINE], TryCatch #0 {all -> 0x0021, blocks: (B:9:0x001a, B:55:0x0154, B:57:0x015c, B:52:0x0127, B:27:0x0059, B:30:0x0065, B:35:0x007d, B:36:0x0088, B:39:0x00c8, B:41:0x00d2, B:43:0x00d9, B:44:0x00e5, B:47:0x010c, B:49:0x0114, B:51:0x011b, B:60:0x016a, B:61:0x0171, B:16:0x002e, B:19:0x0039, B:22:0x0044), top: B:66:0x000c }] */
        /* JADX WARN: Code duplicated, block: B:32:0x0077 A[ADDED_TO_REGION] */
        /* JADX WARN: Code duplicated, block: B:35:0x007d A[Catch: all -> 0x0021, TryCatch #0 {all -> 0x0021, blocks: (B:9:0x001a, B:55:0x0154, B:57:0x015c, B:52:0x0127, B:27:0x0059, B:30:0x0065, B:35:0x007d, B:36:0x0088, B:39:0x00c8, B:41:0x00d2, B:43:0x00d9, B:44:0x00e5, B:47:0x010c, B:49:0x0114, B:51:0x011b, B:60:0x016a, B:61:0x0171, B:16:0x002e, B:19:0x0039, B:22:0x0044), top: B:66:0x000c }] */
        /* JADX WARN: Code duplicated, block: B:38:0x00c6  */
        /* JADX WARN: Code duplicated, block: B:39:0x00c8 A[Catch: all -> 0x0021, PHI: r2 r9
          0x00c8: PHI (r2v6 androidx.compose.ui.input.pointer.AwaitPointerEventScope) = 
          (r2v7 androidx.compose.ui.input.pointer.AwaitPointerEventScope)
          (r2v18 androidx.compose.ui.input.pointer.AwaitPointerEventScope)
         binds: [B:37:0x00c4, B:20:0x003c] A[DONT_GENERATE, DONT_INLINE]
          0x00c8: PHI (r9v5 java.lang.Object) = (r9v9 java.lang.Object), (r9v23 java.lang.Object) binds: [B:37:0x00c4, B:20:0x003c] A[DONT_GENERATE, DONT_INLINE], TryCatch #0 {all -> 0x0021, blocks: (B:9:0x001a, B:55:0x0154, B:57:0x015c, B:52:0x0127, B:27:0x0059, B:30:0x0065, B:35:0x007d, B:36:0x0088, B:39:0x00c8, B:41:0x00d2, B:43:0x00d9, B:44:0x00e5, B:47:0x010c, B:49:0x0114, B:51:0x011b, B:60:0x016a, B:61:0x0171, B:16:0x002e, B:19:0x0039, B:22:0x0044), top: B:66:0x000c }] */
        /* JADX WARN: Code duplicated, block: B:41:0x00d2 A[Catch: all -> 0x0021, TryCatch #0 {all -> 0x0021, blocks: (B:9:0x001a, B:55:0x0154, B:57:0x015c, B:52:0x0127, B:27:0x0059, B:30:0x0065, B:35:0x007d, B:36:0x0088, B:39:0x00c8, B:41:0x00d2, B:43:0x00d9, B:44:0x00e5, B:47:0x010c, B:49:0x0114, B:51:0x011b, B:60:0x016a, B:61:0x0171, B:16:0x002e, B:19:0x0039, B:22:0x0044), top: B:66:0x000c }] */
        /* JADX WARN: Code duplicated, block: B:42:0x00d7  */
        /* JADX WARN: Code duplicated, block: B:43:0x00d9 A[Catch: all -> 0x0021, TryCatch #0 {all -> 0x0021, blocks: (B:9:0x001a, B:55:0x0154, B:57:0x015c, B:52:0x0127, B:27:0x0059, B:30:0x0065, B:35:0x007d, B:36:0x0088, B:39:0x00c8, B:41:0x00d2, B:43:0x00d9, B:44:0x00e5, B:47:0x010c, B:49:0x0114, B:51:0x011b, B:60:0x016a, B:61:0x0171, B:16:0x002e, B:19:0x0039, B:22:0x0044), top: B:66:0x000c }] */
        /* JADX WARN: Code duplicated, block: B:50:0x0119 A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:51:0x011b A[Catch: all -> 0x0021, TryCatch #0 {all -> 0x0021, blocks: (B:9:0x001a, B:55:0x0154, B:57:0x015c, B:52:0x0127, B:27:0x0059, B:30:0x0065, B:35:0x007d, B:36:0x0088, B:39:0x00c8, B:41:0x00d2, B:43:0x00d9, B:44:0x00e5, B:47:0x010c, B:49:0x0114, B:51:0x011b, B:60:0x016a, B:61:0x0171, B:16:0x002e, B:19:0x0039, B:22:0x0044), top: B:66:0x000c }] */
        /* JADX WARN: Code duplicated, block: B:59:0x0161 A[PHI: r2
          0x0161: PHI (r2v12 androidx.compose.ui.input.pointer.AwaitPointerEventScope) = 
          (r2v4 androidx.compose.ui.input.pointer.AwaitPointerEventScope)
          (r2v6 androidx.compose.ui.input.pointer.AwaitPointerEventScope)
          (r2v14 androidx.compose.ui.input.pointer.AwaitPointerEventScope)
         binds: [B:48:0x0112, B:40:0x00d0, B:56:0x015a] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Code duplicated, block: B:60:0x016a A[Catch: all -> 0x0021, TRY_ENTER, TryCatch #0 {all -> 0x0021, blocks: (B:9:0x001a, B:55:0x0154, B:57:0x015c, B:52:0x0127, B:27:0x0059, B:30:0x0065, B:35:0x007d, B:36:0x0088, B:39:0x00c8, B:41:0x00d2, B:43:0x00d9, B:44:0x00e5, B:47:0x010c, B:49:0x0114, B:51:0x011b, B:60:0x016a, B:61:0x0171, B:16:0x002e, B:19:0x0039, B:22:0x0044), top: B:66:0x000c }] */
        /* JADX WARN: Code duplicated, block: B:64:0x017a  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x0079 -> B:27:0x0059). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x00d0 -> B:59:0x0161). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x00d2 -> B:36:0x0088). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:48:0x0112 -> B:59:0x0161). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:49:0x0114 -> B:44:0x00e5). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:53:0x0151 -> B:55:0x0154). Please report as a decompilation issue!!! */
        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        @Override // defpackage.cd0
        public final java.lang.Object invokeSuspend(java.lang.Object r21) {
            /*
                Method dump skipped, instruction units count: 381
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.TransformableKt.AnonymousClass2.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TransformableKt$detectZoom$1, reason: invalid class name */
    @bd2(c = "androidx.compose.foundation.gestures.TransformableKt", f = "Transformable.kt", l = {461, 463, 521}, m = "detectZoom", v = 1)
    public static final class AnonymousClass1 extends f02 {
        float F$0;
        float F$1;
        float F$2;
        int I$0;
        int I$1;
        int I$2;
        long J$0;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        boolean Z$0;
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(e02<? super AnonymousClass1> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return TransformableKt.detectZoom(null, false, null, null, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Offset consumePointerEventAsCtrlScrollOrNull(AwaitPointerEventScope awaitPointerEventScope, PointerEvent pointerEvent, ScrollConfig scrollConfig) {
        long jM6003getZeroF1C5BW0;
        PointerInputChange pointerInputChange;
        if (PointerEvent_androidKt.m7533isCtrlPressed5xRPYO0(pointerEvent.m7501getKeyboardModifiersk7X9c1A())) {
            int iM7502getType7fucELk = pointerEvent.m7502getType7fucELk();
            PointerEventType.Companion companion = PointerEventType.Companion;
            if (PointerEventType.m7509equalsimpl0(iM7502getType7fucELk, companion.m7524getScroll7fucELk()) || PointerEventType.m7509equalsimpl0(pointerEvent.m7502getType7fucELk(), companion.m7518getPanStart7fucELk()) || PointerEventType.m7509equalsimpl0(pointerEvent.m7502getType7fucELk(), companion.m7517getPanMove7fucELk()) || PointerEventType.m7509equalsimpl0(pointerEvent.m7502getType7fucELk(), companion.m7516getPanEnd7fucELk())) {
                long jMo1454calculateMouseWheelScroll8xgXZGE = scrollConfig.mo1454calculateMouseWheelScroll8xgXZGE(awaitPointerEventScope, pointerEvent, awaitPointerEventScope.mo7454getSizeYbymL2g());
                if (!ComposeFoundationFlags.isTrackpadGestureHandlingEnabled || (pointerInputChange = (PointerInputChange) qn1.V(pointerEvent.getChanges())) == null) {
                    jM6003getZeroF1C5BW0 = Offset.Companion.m6003getZeroF1C5BW0();
                } else {
                    long jM5979constructorimpl = Offset.m5979constructorimpl(pointerInputChange.m7568getPanOffsetF1C5BW0() ^ (-9223372034707292160L));
                    List<HistoricalChange> historical = pointerInputChange.getHistorical();
                    Offset offsetM5976boximpl = Offset.m5976boximpl(Offset.Companion.m6003getZeroF1C5BW0());
                    int size = historical.size();
                    for (int i = 0; i < size; i++) {
                        offsetM5976boximpl = Offset.m5976boximpl(Offset.m5991minusMKHz9U(offsetM5976boximpl.m5997unboximpl(), historical.get(i).m7469getPanOffsetF1C5BW0()));
                    }
                    jM6003getZeroF1C5BW0 = Offset.m5992plusMKHz9U(jM5979constructorimpl, offsetM5976boximpl.m5997unboximpl());
                }
                long jM5992plusMKHz9U = Offset.m5992plusMKHz9U(jMo1454calculateMouseWheelScroll8xgXZGE, jM6003getZeroF1C5BW0);
                if (Offset.m5984equalsimpl0(jM5992plusMKHz9U, Offset.Companion.m6003getZeroF1C5BW0())) {
                    return null;
                }
                List<PointerInputChange> changes = pointerEvent.getChanges();
                int size2 = changes.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    changes.get(i2).consume();
                }
                return Offset.m5976boximpl(jM5992plusMKHz9U);
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Offset consumePointerEventAsPanOrNull(AwaitPointerEventScope awaitPointerEventScope, PointerEvent pointerEvent) {
        long jM6003getZeroF1C5BW0;
        if (ComposeFoundationFlags.isTrackpadGestureHandlingEnabled) {
            int iM7502getType7fucELk = pointerEvent.m7502getType7fucELk();
            PointerEventType.Companion companion = PointerEventType.Companion;
            if (PointerEventType.m7509equalsimpl0(iM7502getType7fucELk, companion.m7518getPanStart7fucELk()) || PointerEventType.m7509equalsimpl0(pointerEvent.m7502getType7fucELk(), companion.m7517getPanMove7fucELk()) || PointerEventType.m7509equalsimpl0(pointerEvent.m7502getType7fucELk(), companion.m7516getPanEnd7fucELk())) {
                PointerInputChange pointerInputChange = (PointerInputChange) qn1.V(pointerEvent.getChanges());
                if (pointerInputChange != null) {
                    long jM5979constructorimpl = Offset.m5979constructorimpl(pointerInputChange.m7568getPanOffsetF1C5BW0() ^ (-9223372034707292160L));
                    List<HistoricalChange> historical = pointerInputChange.getHistorical();
                    Offset offsetM5976boximpl = Offset.m5976boximpl(Offset.Companion.m6003getZeroF1C5BW0());
                    int size = historical.size();
                    for (int i = 0; i < size; i++) {
                        offsetM5976boximpl = Offset.m5976boximpl(Offset.m5991minusMKHz9U(offsetM5976boximpl.m5997unboximpl(), historical.get(i).m7469getPanOffsetF1C5BW0()));
                    }
                    jM6003getZeroF1C5BW0 = Offset.m5992plusMKHz9U(jM5979constructorimpl, offsetM5976boximpl.m5997unboximpl());
                } else {
                    jM6003getZeroF1C5BW0 = Offset.Companion.m6003getZeroF1C5BW0();
                }
                if (Offset.m5984equalsimpl0(jM6003getZeroF1C5BW0, Offset.Companion.m6003getZeroF1C5BW0())) {
                    return null;
                }
                List<PointerInputChange> changes = pointerEvent.getChanges();
                int size2 = changes.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    changes.get(i2).consume();
                }
                return Offset.m5976boximpl(jM6003getZeroF1C5BW0);
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Float consumePointerEventAsScaleOrNull(AwaitPointerEventScope awaitPointerEventScope, PointerEvent pointerEvent) {
        if (ComposeFoundationFlags.isTrackpadGestureHandlingEnabled) {
            int iM7502getType7fucELk = pointerEvent.m7502getType7fucELk();
            PointerEventType.Companion companion = PointerEventType.Companion;
            if (PointerEventType.m7509equalsimpl0(iM7502getType7fucELk, companion.m7523getScaleStart7fucELk()) || PointerEventType.m7509equalsimpl0(pointerEvent.m7502getType7fucELk(), companion.m7521getScaleChange7fucELk()) || PointerEventType.m7509equalsimpl0(pointerEvent.m7502getType7fucELk(), companion.m7522getScaleEnd7fucELk())) {
                List<PointerInputChange> changes = pointerEvent.getChanges();
                int size = changes.size();
                float f = 1.0f;
                int i = 0;
                while (i < size) {
                    PointerInputChange pointerInputChange = changes.get(i);
                    float scaleFactor = pointerInputChange.getScaleFactor() * f;
                    List<HistoricalChange> historical = pointerInputChange.getHistorical();
                    int size2 = historical.size();
                    for (int i2 = 0; i2 < size2; i2++) {
                        scaleFactor *= historical.get(i2).getScaleFactor();
                    }
                    i++;
                    f = scaleFactor;
                }
                if (f == 1.0f) {
                    return null;
                }
                List<PointerInputChange> changes2 = pointerEvent.getChanges();
                int size3 = changes2.size();
                for (int i3 = 0; i3 < size3; i3++) {
                    changes2.get(i3).consume();
                }
                return Float.valueOf(f);
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object detectNonTouchGestures(PointerInputScope pointerInputScope, x81<TransformEvent> x81Var, ScrollConfig scrollConfig, e02<? super j59> e02Var) {
        Object objAwaitPointerEventScope = pointerInputScope.awaitPointerEventScope(new AnonymousClass2(e02Var.getContext(), scrollConfig, x81Var, null), e02Var);
        return objAwaitPointerEventScope == a32.COROUTINE_SUSPENDED ? objAwaitPointerEventScope : j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:124:0x0153 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:125:0x01ad A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:29:0x0143  */
    /* JADX WARN: Code duplicated, block: B:32:0x0150 A[LOOP:2: B:28:0x0141->B:32:0x0150, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:35:0x0157  */
    /* JADX WARN: Code duplicated, block: B:37:0x0167  */
    /* JADX WARN: Code duplicated, block: B:8:0x0016  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:101:0x02e2 -> B:102:0x02f4). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final java.lang.Object detectZoom(androidx.compose.ui.input.pointer.AwaitPointerEventScope r32, boolean r33, defpackage.x81<androidx.compose.foundation.gestures.TransformEvent> r34, defpackage.nl3<? super androidx.compose.ui.geometry.Offset, java.lang.Boolean> r35, defpackage.e02<? super defpackage.j59> r36) {
        /*
            Method dump skipped, instruction units count: 847
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.TransformableKt.detectZoom(androidx.compose.ui.input.pointer.AwaitPointerEventScope, boolean, x81, nl3, e02):java.lang.Object");
    }

    public static final Modifier transformable(Modifier modifier, TransformableState transformableState, boolean z, boolean z2) {
        return transformable(modifier, transformableState, new mg6(2), z, z2);
    }

    public static /* synthetic */ Modifier transformable$default(Modifier modifier, TransformableState transformableState, boolean z, boolean z2, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        if ((i & 4) != 0) {
            z2 = true;
        }
        return transformable(modifier, transformableState, z, z2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean transformable$lambda$0(Offset offset) {
        return true;
    }

    public static final Modifier transformable(Modifier modifier, TransformableState transformableState, nl3<? super Offset, Boolean> nl3Var, boolean z, boolean z2) {
        return modifier.then(new TransformableElement(transformableState, nl3Var, z, z2));
    }

    public static /* synthetic */ Modifier transformable$default(Modifier modifier, TransformableState transformableState, nl3 nl3Var, boolean z, boolean z2, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        if ((i & 8) != 0) {
            z2 = true;
        }
        return transformable(modifier, transformableState, nl3Var, z, z2);
    }
}
