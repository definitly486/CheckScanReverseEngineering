package androidx.compose.foundation.text.input.internal;

import android.os.Build;
import android.view.inputmethod.CursorAnchorInfo;
import androidx.compose.foundation.text.input.TextFieldCharSequence;
import androidx.compose.foundation.text.selection.SelectionManagerKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.AndroidMatrixConversions_androidKt;
import androidx.compose.ui.graphics.Matrix;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.media3.muxer.WebmConstants;
import defpackage.a32;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.c32;
import defpackage.cf3;
import defpackage.e02;
import defpackage.id3;
import defpackage.ie3;
import defpackage.j59;
import defpackage.km1;
import defpackage.ll3;
import defpackage.mb4;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;

/* JADX INFO: loaded from: classes.dex */
public final class CursorAnchorInfoController {
    public static final int $stable = 8;
    private final ComposeInputMethodManager composeImm;
    private boolean hasPendingImmediateRequest;
    private boolean includeCharacterBounds;
    private boolean includeEditorBounds;
    private boolean includeInsertionMarker;
    private boolean includeLineBounds;
    private boolean monitorEnabled;
    private mb4 monitorJob;
    private final y22 monitorScope;
    private final TransformedTextFieldState textFieldState;
    private final TextLayoutState textLayoutState;
    private final CursorAnchorInfo.Builder builder = new CursorAnchorInfo.Builder();
    private final float[] matrix = Matrix.m6476constructorimpl$default(null, 1, null);
    private final android.graphics.Matrix androidMatrix = new android.graphics.Matrix();

    /* JADX INFO: renamed from: androidx.compose.foundation.text.input.internal.CursorAnchorInfoController$startOrStopMonitoring$1, reason: invalid class name */
    @bd2(c = "androidx.compose.foundation.text.input.internal.CursorAnchorInfoController$startOrStopMonitoring$1", f = "CursorAnchorInfoController.android.kt", l = {WebmConstants.MkvEbmlElement.FLAG_INTERLACED}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        int label;

        public AnonymousClass1(e02<? super AnonymousClass1> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return CursorAnchorInfoController.this.new AnonymousClass1(e02Var);
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
                final CursorAnchorInfoController cursorAnchorInfoController = CursorAnchorInfoController.this;
                ie3 ie3VarA = km1.a(SnapshotStateKt.snapshotFlow(new ll3() { // from class: androidx.compose.foundation.text.input.internal.g
                    @Override // defpackage.ll3
                    public final Object invoke() {
                        return CursorAnchorInfoController.access$calculateCursorAnchorInfo(cursorAnchorInfoController);
                    }
                }), 1);
                final CursorAnchorInfoController cursorAnchorInfoController2 = CursorAnchorInfoController.this;
                id3 id3Var = new id3() { // from class: androidx.compose.foundation.text.input.internal.CursorAnchorInfoController.startOrStopMonitoring.1.2
                    public final Object emit(CursorAnchorInfo cursorAnchorInfo, e02<? super j59> e02Var) {
                        cursorAnchorInfoController2.composeImm.updateCursorAnchorInfo(cursorAnchorInfo);
                        return j59.a;
                    }

                    @Override // defpackage.id3
                    public /* bridge */ /* synthetic */ Object emit(Object obj2, e02 e02Var) {
                        return emit((CursorAnchorInfo) obj2, (e02<? super j59>) e02Var);
                    }
                };
                this.label = 1;
                Object objCollect = ie3VarA.collect(new cf3.a(id3Var), this);
                if (objCollect != a32Var) {
                    objCollect = j59.a;
                }
                if (objCollect == a32Var) {
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

    public CursorAnchorInfoController(TransformedTextFieldState transformedTextFieldState, TextLayoutState textLayoutState, ComposeInputMethodManager composeInputMethodManager, y22 y22Var) {
        this.textFieldState = transformedTextFieldState;
        this.textLayoutState = textLayoutState;
        this.composeImm = composeInputMethodManager;
        this.monitorScope = y22Var;
    }

    public static final /* synthetic */ CursorAnchorInfo access$calculateCursorAnchorInfo(CursorAnchorInfoController cursorAnchorInfoController) {
        return cursorAnchorInfoController.calculateCursorAnchorInfo();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final CursorAnchorInfo calculateCursorAnchorInfo() {
        LayoutCoordinates coreNodeCoordinates;
        LayoutCoordinates decoratorNodeCoordinates;
        TextLayoutResult layoutResult;
        LayoutCoordinates textLayoutNodeCoordinates = this.textLayoutState.getTextLayoutNodeCoordinates();
        if (textLayoutNodeCoordinates != null) {
            if (!textLayoutNodeCoordinates.isAttached()) {
                textLayoutNodeCoordinates = null;
            }
            if (textLayoutNodeCoordinates != null && (coreNodeCoordinates = this.textLayoutState.getCoreNodeCoordinates()) != null) {
                if (!coreNodeCoordinates.isAttached()) {
                    coreNodeCoordinates = null;
                }
                if (coreNodeCoordinates != null && (decoratorNodeCoordinates = this.textLayoutState.getDecoratorNodeCoordinates()) != null) {
                    if (!decoratorNodeCoordinates.isAttached()) {
                        decoratorNodeCoordinates = null;
                    }
                    if (decoratorNodeCoordinates == null || (layoutResult = this.textLayoutState.getLayoutResult()) == null) {
                        return null;
                    }
                    TextFieldCharSequence visualText = this.textFieldState.getVisualText();
                    Matrix.m6485resetimpl(this.matrix);
                    textLayoutNodeCoordinates.mo7718transformToScreen58bKbWc(this.matrix);
                    AndroidMatrixConversions_androidKt.m6099setFromEL8BTi8(this.androidMatrix, this.matrix);
                    Rect rectVisibleBounds = SelectionManagerKt.visibleBounds(coreNodeCoordinates);
                    Offset.Companion companion = Offset.Companion;
                    return CursorAnchorInfoBuilder_androidKt.m2702buildvxqZcH0(this.builder, visualText, visualText.m2665getSelectiond9O1mEE(), visualText.m2664getCompositionMzsxiRA(), layoutResult, this.androidMatrix, rectVisibleBounds.m6024translatek4lQ0M(textLayoutNodeCoordinates.mo7711localPositionOfR5De75A(coreNodeCoordinates, companion.m6003getZeroF1C5BW0())), SelectionManagerKt.visibleBounds(decoratorNodeCoordinates).m6024translatek4lQ0M(textLayoutNodeCoordinates.mo7711localPositionOfR5De75A(decoratorNodeCoordinates, companion.m6003getZeroF1C5BW0())), this.includeInsertionMarker, this.includeCharacterBounds, this.includeEditorBounds, this.includeLineBounds);
                }
            }
        }
        return null;
    }

    private final void startOrStopMonitoring() {
        boolean z = this.monitorEnabled;
        mb4 mb4Var = this.monitorJob;
        if (!z) {
            if (mb4Var != null) {
                mb4Var.cancel(null);
            }
            this.monitorJob = null;
        } else if (mb4Var == null || !mb4Var.isActive()) {
            this.monitorJob = av0.c(this.monitorScope, null, c32.UNDISPATCHED, new AnonymousClass1(null), 1);
        }
    }

    public final void requestUpdates(int i) {
        CursorAnchorInfoController cursorAnchorInfoController;
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5 = false;
        boolean z6 = (i & 1) != 0;
        boolean z7 = (i & 2) != 0;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 33) {
            boolean z8 = (i & 16) != 0;
            boolean z9 = (i & 8) != 0;
            boolean z10 = (i & 4) != 0;
            if (i2 >= 34 && (i & 32) != 0) {
                z5 = true;
            }
            if (z8 || z9 || z10 || z5) {
                z2 = z5;
                z = z10;
                z4 = z9;
                z3 = z8;
                cursorAnchorInfoController = this;
            } else {
                cursorAnchorInfoController = this;
                if (i2 >= 34) {
                    z3 = true;
                    z4 = true;
                    z = true;
                    z2 = true;
                } else {
                    z2 = z5;
                    z3 = true;
                    z4 = true;
                    z = true;
                }
            }
        } else {
            cursorAnchorInfoController = this;
            z = false;
            z2 = false;
            z3 = true;
            z4 = true;
        }
        cursorAnchorInfoController.requestUpdates(z6, z7, z3, z4, z, z2);
    }

    private final void requestUpdates(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6) {
        this.includeInsertionMarker = z3;
        this.includeCharacterBounds = z4;
        this.includeEditorBounds = z5;
        this.includeLineBounds = z6;
        if (z) {
            this.hasPendingImmediateRequest = true;
            CursorAnchorInfo cursorAnchorInfoCalculateCursorAnchorInfo = calculateCursorAnchorInfo();
            if (cursorAnchorInfoCalculateCursorAnchorInfo != null) {
                this.composeImm.updateCursorAnchorInfo(cursorAnchorInfoCalculateCursorAnchorInfo);
            }
        }
        this.monitorEnabled = z2;
        startOrStopMonitoring();
    }
}
