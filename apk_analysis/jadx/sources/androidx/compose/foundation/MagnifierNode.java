package androidx.compose.foundation;

import android.view.View;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.InlineClassHelperKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatableNode_androidKt;
import androidx.compose.ui.node.DrawModifierNode;
import androidx.compose.ui.node.GlobalPositionAwareModifierNode;
import androidx.compose.ui.node.ObserverModifierNode;
import androidx.compose.ui.node.ObserverModifierNodeKt;
import androidx.compose.ui.node.SemanticsModifierNode;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.DpSize;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import defpackage.a43;
import defpackage.aa4;
import defpackage.av0;
import defpackage.az0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.c32;
import defpackage.e02;
import defpackage.j59;
import defpackage.jh2;
import defpackage.l91;
import defpackage.nl3;
import defpackage.ny4;
import defpackage.pg8;
import defpackage.x81;
import defpackage.y22;

/* JADX INFO: loaded from: classes.dex */
public final class MagnifierNode extends Modifier.Node implements GlobalPositionAwareModifierNode, DrawModifierNode, SemanticsModifierNode, ObserverModifierNode {
    public static final int $stable = 8;
    private State<Offset> anchorPositionInRootState;
    private boolean clippingEnabled;
    private float cornerRadius;
    private Density density;
    private x81<j59> drawSignalChannel;
    private float elevation;
    private final MutableState layoutCoordinates$delegate;
    private PlatformMagnifier magnifier;
    private nl3<? super Density, Offset> magnifierCenter;
    private nl3<? super DpSize, j59> onSizeChanged;
    private PlatformMagnifierFactory platformMagnifierFactory;
    private IntSize previousSize;
    private long size;
    private nl3<? super Density, Offset> sourceCenter;
    private long sourceCenterInRoot;
    private boolean useTextDefault;
    private View view;
    private float zoom;

    /* JADX INFO: renamed from: androidx.compose.foundation.MagnifierNode$onAttach$1, reason: invalid class name */
    @bd2(c = "androidx.compose.foundation.MagnifierNode$onAttach$1", f = "Magnifier.android.kt", l = {382, 386}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        int label;

        public AnonymousClass1(e02<? super AnonymousClass1> e02Var) {
            super(2, e02Var);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final j59 invokeSuspend$lambda$0(long j) {
            return j59.a;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return MagnifierNode.this.new AnonymousClass1(e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((AnonymousClass1) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Code duplicated, block: B:11:0x001e  */
        /* JADX WARN: Code duplicated, block: B:13:0x0026  */
        /* JADX WARN: Code duplicated, block: B:16:0x002f  */
        /* JADX WARN: Code duplicated, block: B:18:0x0037  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0035 -> B:11:0x001e). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0042 -> B:21:0x0045). Please report as a decompilation issue!!! */
        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        @Override // defpackage.cd0
        public final java.lang.Object invokeSuspend(java.lang.Object r5) {
            /*
                r4 = this;
                a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
                int r1 = r4.label
                r2 = 2
                r3 = 1
                if (r1 == 0) goto L1b
                if (r1 == r3) goto L17
                if (r1 != r2) goto L10
                defpackage.r57.b(r5)
                goto L45
            L10:
                java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.ah.f(r4)
                r4 = 0
                return r4
            L17:
                defpackage.r57.b(r5)
                goto L2f
            L1b:
                defpackage.r57.b(r5)
            L1e:
                androidx.compose.foundation.MagnifierNode r5 = androidx.compose.foundation.MagnifierNode.this
                x81 r5 = androidx.compose.foundation.MagnifierNode.access$getDrawSignalChannel$p(r5)
                if (r5 == 0) goto L2f
                r4.label = r3
                java.lang.Object r5 = r5.b(r4)
                if (r5 != r0) goto L2f
                goto L44
            L2f:
                androidx.compose.foundation.MagnifierNode r5 = androidx.compose.foundation.MagnifierNode.this
                androidx.compose.foundation.PlatformMagnifier r5 = androidx.compose.foundation.MagnifierNode.access$getMagnifier$p(r5)
                if (r5 == 0) goto L1e
                androidx.compose.foundation.i r5 = new androidx.compose.foundation.i
                r5.<init>()
                r4.label = r2
                java.lang.Object r5 = androidx.compose.runtime.MonotonicFrameClockKt.withFrameMillis(r5, r4)
                if (r5 != r0) goto L45
            L44:
                return r0
            L45:
                androidx.compose.foundation.MagnifierNode r5 = androidx.compose.foundation.MagnifierNode.this
                androidx.compose.foundation.PlatformMagnifier r5 = androidx.compose.foundation.MagnifierNode.access$getMagnifier$p(r5)
                if (r5 == 0) goto L1e
                r5.updateContent()
                goto L1e
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.MagnifierNode.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public /* synthetic */ MagnifierNode(nl3 nl3Var, nl3 nl3Var2, nl3 nl3Var3, float f, boolean z, long j, float f2, float f3, boolean z2, PlatformMagnifierFactory platformMagnifierFactory, int i, jh2 jh2Var) {
        this(nl3Var, (i & 2) != 0 ? null : nl3Var2, (i & 4) != 0 ? null : nl3Var3, (i & 8) != 0 ? Float.NaN : f, (i & 16) != 0 ? false : z, (i & 32) != 0 ? DpSize.Companion.m9149getUnspecifiedMYxV2XQ() : j, (i & 64) != 0 ? Dp.Companion.m9062getUnspecifiedD9Ej5fM() : f2, (i & 128) != 0 ? Dp.Companion.m9062getUnspecifiedD9Ej5fM() : f3, (i & 256) != 0 ? true : z2, (i & 512) != 0 ? PlatformMagnifierFactory.Companion.getForCurrentPlatform() : platformMagnifierFactory, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Offset applySemantics$lambda$0(MagnifierNode magnifierNode) {
        return Offset.m5976boximpl(magnifierNode.sourceCenterInRoot);
    }

    /* JADX INFO: renamed from: getAnchorPositionInRoot-F1C5BW0, reason: not valid java name */
    private final long m1347getAnchorPositionInRootF1C5BW0() {
        State<Offset> stateDerivedStateOf = this.anchorPositionInRootState;
        if (stateDerivedStateOf == null) {
            stateDerivedStateOf = SnapshotStateKt.derivedStateOf(new ny4(this, 0));
            this.anchorPositionInRootState = stateDerivedStateOf;
        }
        return stateDerivedStateOf != null ? stateDerivedStateOf.getValue().m5997unboximpl() : Offset.Companion.m6002getUnspecifiedF1C5BW0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Offset getAnchorPositionInRoot_F1C5BW0$lambda$0(MagnifierNode magnifierNode) {
        LayoutCoordinates layoutCoordinates = magnifierNode.getLayoutCoordinates();
        return Offset.m5976boximpl(layoutCoordinates != null ? LayoutCoordinatesKt.positionInRoot(layoutCoordinates) : Offset.Companion.m6002getUnspecifiedF1C5BW0());
    }

    private final LayoutCoordinates getLayoutCoordinates() {
        return (LayoutCoordinates) this.layoutCoordinates$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 onObservedReadsChanged$lambda$0(MagnifierNode magnifierNode) {
        magnifierNode.updateMagnifier();
        return j59.a;
    }

    private final void recreateMagnifier() {
        PlatformMagnifier platformMagnifier = this.magnifier;
        if (platformMagnifier != null) {
            platformMagnifier.dismiss();
        }
        View viewRequireView = this.view;
        if (viewRequireView == null) {
            viewRequireView = DelegatableNode_androidKt.requireView(this);
        }
        View view = viewRequireView;
        this.view = view;
        Density densityRequireDensity = this.density;
        if (densityRequireDensity == null) {
            densityRequireDensity = DelegatableNodeKt.requireDensity(this);
        }
        Density density = densityRequireDensity;
        this.density = density;
        this.magnifier = this.platformMagnifierFactory.mo1379createnHHXs2Y(view, this.useTextDefault, this.size, this.cornerRadius, this.elevation, this.clippingEnabled, density, this.zoom);
        updateSizeIfNecessary();
    }

    private final void setLayoutCoordinates(LayoutCoordinates layoutCoordinates) {
        this.layoutCoordinates$delegate.setValue(layoutCoordinates);
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0066  */
    private final void updateMagnifier() {
        long jM6002getUnspecifiedF1C5BW0;
        Density densityRequireDensity = this.density;
        if (densityRequireDensity == null) {
            densityRequireDensity = DelegatableNodeKt.requireDensity(this);
            this.density = densityRequireDensity;
        }
        long jM5997unboximpl = this.sourceCenter.invoke(densityRequireDensity).m5997unboximpl();
        if ((jM5997unboximpl & 9223372034707292159L) == InlineClassHelperKt.UnspecifiedPackedFloats || (m1347getAnchorPositionInRootF1C5BW0() & 9223372034707292159L) == InlineClassHelperKt.UnspecifiedPackedFloats) {
            this.sourceCenterInRoot = Offset.Companion.m6002getUnspecifiedF1C5BW0();
            PlatformMagnifier platformMagnifier = this.magnifier;
            if (platformMagnifier != null) {
                platformMagnifier.dismiss();
                return;
            }
            return;
        }
        this.sourceCenterInRoot = Offset.m5992plusMKHz9U(m1347getAnchorPositionInRootF1C5BW0(), jM5997unboximpl);
        nl3<? super Density, Offset> nl3Var = this.magnifierCenter;
        if (nl3Var != null) {
            Offset offsetM5976boximpl = Offset.m5976boximpl(nl3Var.invoke(densityRequireDensity).m5997unboximpl());
            if ((offsetM5976boximpl.m5997unboximpl() & 9223372034707292159L) == InlineClassHelperKt.UnspecifiedPackedFloats) {
                offsetM5976boximpl = null;
            }
            if (offsetM5976boximpl != null) {
                jM6002getUnspecifiedF1C5BW0 = Offset.m5992plusMKHz9U(m1347getAnchorPositionInRootF1C5BW0(), offsetM5976boximpl.m5997unboximpl());
            } else {
                jM6002getUnspecifiedF1C5BW0 = Offset.Companion.m6002getUnspecifiedF1C5BW0();
            }
        } else {
            jM6002getUnspecifiedF1C5BW0 = Offset.Companion.m6002getUnspecifiedF1C5BW0();
        }
        long j = jM6002getUnspecifiedF1C5BW0;
        if (this.magnifier == null) {
            recreateMagnifier();
        }
        PlatformMagnifier platformMagnifier2 = this.magnifier;
        if (platformMagnifier2 != null) {
            platformMagnifier2.mo1378updateWko1d7g(this.sourceCenterInRoot, j, this.zoom);
        }
        updateSizeIfNecessary();
    }

    private final void updateSizeIfNecessary() {
        Density density;
        PlatformMagnifier platformMagnifier = this.magnifier;
        if (platformMagnifier == null || (density = this.density) == null || IntSize.m9210equalsimpl(platformMagnifier.mo1377getSizeYbymL2g(), this.previousSize)) {
            return;
        }
        nl3<? super DpSize, j59> nl3Var = this.onSizeChanged;
        if (nl3Var != null) {
            nl3Var.invoke(DpSize.m9128boximpl(density.mo1432toDpSizekrfVVM(IntSizeKt.m9225toSizeozmzZPI(platformMagnifier.mo1377getSizeYbymL2g()))));
        }
        this.previousSize = IntSize.m9205boximpl(platformMagnifier.mo1377getSizeYbymL2g());
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public void applySemantics(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        semanticsPropertyReceiver.set(Magnifier_androidKt.getMagnifierPositionInRoot(), new az0(this, 1));
    }

    @Override // androidx.compose.ui.node.DrawModifierNode
    public void draw(ContentDrawScope contentDrawScope) {
        contentDrawScope.drawContent();
        x81<j59> x81Var = this.drawSignalChannel;
        if (x81Var != null) {
            x81Var.mo0trySendJP2dKIU(j59.a);
        }
    }

    public final boolean getClippingEnabled() {
        return this.clippingEnabled;
    }

    /* JADX INFO: renamed from: getCornerRadius-D9Ej5fM, reason: not valid java name */
    public final float m1348getCornerRadiusD9Ej5fM() {
        return this.cornerRadius;
    }

    /* JADX INFO: renamed from: getElevation-D9Ej5fM, reason: not valid java name */
    public final float m1349getElevationD9Ej5fM() {
        return this.elevation;
    }

    public final nl3<Density, Offset> getMagnifierCenter() {
        return this.magnifierCenter;
    }

    public final nl3<DpSize, j59> getOnSizeChanged() {
        return this.onSizeChanged;
    }

    public final PlatformMagnifierFactory getPlatformMagnifierFactory() {
        return this.platformMagnifierFactory;
    }

    /* JADX INFO: renamed from: getSize-MYxV2XQ, reason: not valid java name */
    public final long m1350getSizeMYxV2XQ() {
        return this.size;
    }

    public final nl3<Density, Offset> getSourceCenter() {
        return this.sourceCenter;
    }

    public final boolean getUseTextDefault() {
        return this.useTextDefault;
    }

    public final float getZoom() {
        return this.zoom;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void onAttach() {
        onObservedReadsChanged();
        this.drawSignalChannel = l91.a(0, null, null, 7);
        av0.c(getCoroutineScope(), null, c32.UNDISPATCHED, new AnonymousClass1(null), 1);
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void onDetach() {
        PlatformMagnifier platformMagnifier = this.magnifier;
        if (platformMagnifier != null) {
            platformMagnifier.dismiss();
        }
        this.magnifier = null;
    }

    @Override // androidx.compose.ui.node.GlobalPositionAwareModifierNode
    public void onGloballyPositioned(LayoutCoordinates layoutCoordinates) {
        setLayoutCoordinates(layoutCoordinates);
    }

    @Override // androidx.compose.ui.node.ObserverModifierNode
    public void onObservedReadsChanged() {
        ObserverModifierNodeKt.observeReads(this, new a43(this, 1));
    }

    public final void setClippingEnabled(boolean z) {
        this.clippingEnabled = z;
    }

    /* JADX INFO: renamed from: setCornerRadius-0680j_4, reason: not valid java name */
    public final void m1351setCornerRadius0680j_4(float f) {
        this.cornerRadius = f;
    }

    /* JADX INFO: renamed from: setElevation-0680j_4, reason: not valid java name */
    public final void m1352setElevation0680j_4(float f) {
        this.elevation = f;
    }

    public final void setMagnifierCenter(nl3<? super Density, Offset> nl3Var) {
        this.magnifierCenter = nl3Var;
    }

    public final void setOnSizeChanged(nl3<? super DpSize, j59> nl3Var) {
        this.onSizeChanged = nl3Var;
    }

    public final void setPlatformMagnifierFactory(PlatformMagnifierFactory platformMagnifierFactory) {
        this.platformMagnifierFactory = platformMagnifierFactory;
    }

    /* JADX INFO: renamed from: setSize-EaSLcWc, reason: not valid java name */
    public final void m1353setSizeEaSLcWc(long j) {
        this.size = j;
    }

    public final void setSourceCenter(nl3<? super Density, Offset> nl3Var) {
        this.sourceCenter = nl3Var;
    }

    public final void setUseTextDefault(boolean z) {
        this.useTextDefault = z;
    }

    public final void setZoom(float f) {
        this.zoom = f;
    }

    /* JADX INFO: renamed from: update-5F03MCQ, reason: not valid java name */
    public final void m1354update5F03MCQ(nl3<? super Density, Offset> nl3Var, nl3<? super Density, Offset> nl3Var2, float f, boolean z, long j, float f2, float f3, boolean z2, nl3<? super DpSize, j59> nl3Var3, PlatformMagnifierFactory platformMagnifierFactory) {
        float f4 = this.zoom;
        long j2 = this.size;
        float f5 = this.cornerRadius;
        boolean z3 = this.useTextDefault;
        float f6 = this.elevation;
        boolean z4 = this.clippingEnabled;
        PlatformMagnifierFactory platformMagnifierFactory2 = this.platformMagnifierFactory;
        View view = this.view;
        Density density = this.density;
        this.sourceCenter = nl3Var;
        this.magnifierCenter = nl3Var2;
        this.zoom = f;
        this.useTextDefault = z;
        this.size = j;
        this.cornerRadius = f2;
        this.elevation = f3;
        this.clippingEnabled = z2;
        this.onSizeChanged = nl3Var3;
        this.platformMagnifierFactory = platformMagnifierFactory;
        View viewRequireView = DelegatableNode_androidKt.requireView(this);
        Density densityRequireDensity = DelegatableNodeKt.requireDensity(this);
        if (this.magnifier != null && ((!Magnifier_androidKt.equalsIncludingNaN(f, f4) && !platformMagnifierFactory.getCanUpdateZoom()) || !DpSize.m9137equalsimpl0(j, j2) || !Dp.m9047equalsimpl0(f2, f5) || !Dp.m9047equalsimpl0(f3, f6) || z != z3 || z2 != z4 || !aa4.e(platformMagnifierFactory, platformMagnifierFactory2) || !aa4.e(viewRequireView, view) || !aa4.e(densityRequireDensity, density))) {
            recreateMagnifier();
        }
        updateMagnifier();
    }

    private MagnifierNode(nl3<? super Density, Offset> nl3Var, nl3<? super Density, Offset> nl3Var2, nl3<? super DpSize, j59> nl3Var3, float f, boolean z, long j, float f2, float f3, boolean z2, PlatformMagnifierFactory platformMagnifierFactory) {
        this.sourceCenter = nl3Var;
        this.magnifierCenter = nl3Var2;
        this.onSizeChanged = nl3Var3;
        this.zoom = f;
        this.useTextDefault = z;
        this.size = j;
        this.cornerRadius = f2;
        this.elevation = f3;
        this.clippingEnabled = z2;
        this.platformMagnifierFactory = platformMagnifierFactory;
        this.layoutCoordinates$delegate = SnapshotStateKt.mutableStateOf(null, SnapshotStateKt.neverEqualPolicy());
        this.sourceCenterInRoot = Offset.Companion.m6002getUnspecifiedF1C5BW0();
    }

    public /* synthetic */ MagnifierNode(nl3 nl3Var, nl3 nl3Var2, nl3 nl3Var3, float f, boolean z, long j, float f2, float f3, boolean z2, PlatformMagnifierFactory platformMagnifierFactory, jh2 jh2Var) {
        this(nl3Var, nl3Var2, nl3Var3, f, z, j, f2, f3, z2, platformMagnifierFactory);
    }
}
