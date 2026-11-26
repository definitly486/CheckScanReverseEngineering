package androidx.compose.foundation.text.contextmenu.modifier;

import androidx.compose.foundation.text.contextmenu.data.TextContextMenuData;
import androidx.compose.foundation.text.contextmenu.provider.TextContextMenuDataProvider;
import androidx.compose.foundation.text.contextmenu.provider.TextContextMenuProvider;
import androidx.compose.foundation.text.contextmenu.provider.TextContextMenuProviderKt;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNode;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.c32;
import defpackage.e02;
import defpackage.j59;
import defpackage.mb4;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.uc6;
import defpackage.y22;

/* JADX INFO: loaded from: classes.dex */
public final class TextContextMenuToolbarHandlerNode extends DelegatingNode implements CompositionLocalConsumerModifierNode, TextContextMenuDataProvider {
    public static final int $stable = 8;
    private nl3<? super LayoutCoordinates, Rect> computeContentBounds;
    private nl3<? super e02<? super j59>, ? extends Object> onHide;
    private nl3<? super e02<? super j59>, ? extends Object> onShow;
    private ToolbarRequester requester;
    private mb4 textToolbarJob;
    private final State derivedData$delegate = SnapshotStateKt.derivedStateOf(new uc6(this, 1));
    private Rect previousContentBounds = Rect.Companion.getZero();

    /* JADX INFO: renamed from: androidx.compose.foundation.text.contextmenu.modifier.TextContextMenuToolbarHandlerNode$show$1, reason: invalid class name */
    @bd2(c = "androidx.compose.foundation.text.contextmenu.modifier.TextContextMenuToolbarHandlerNode$show$1", f = "TextContextMenuToolbarHandlerModifier.kt", l = {205, ComposerKt.referenceKey, 208, 208}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        final /* synthetic */ TextContextMenuProvider $provider;
        Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(TextContextMenuProvider textContextMenuProvider, e02<? super AnonymousClass1> e02Var) {
            super(2, e02Var);
            this.$provider = textContextMenuProvider;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return TextContextMenuToolbarHandlerNode.this.new AnonymousClass1(this.$provider, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((AnonymousClass1) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Code duplicated, block: B:28:0x0058  */
        /* JADX WARN: Code restructure failed: missing block: B:29:0x005e, code lost:
        
            if (r7.invoke(r6) == r0) goto L37;
         */
        @Override // defpackage.cd0
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r7) throws java.lang.Throwable {
            /*
                r6 = this;
                a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
                int r1 = r6.label
                r2 = 4
                r3 = 3
                r4 = 2
                r5 = 1
                if (r1 == 0) goto L2f
                if (r1 == r5) goto L2b
                if (r1 == r4) goto L25
                if (r1 == r3) goto L21
                if (r1 == r2) goto L19
                java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.ah.f(r6)
                r6 = 0
                return r6
            L19:
                java.lang.Object r6 = r6.L$0
                java.lang.Throwable r6 = (java.lang.Throwable) r6
                defpackage.r57.b(r7)
                goto L78
            L21:
                defpackage.r57.b(r7)
                goto L61
            L25:
                defpackage.r57.b(r7)     // Catch: java.lang.Throwable -> L29
                goto L50
            L29:
                r7 = move-exception
                goto L64
            L2b:
                defpackage.r57.b(r7)     // Catch: java.lang.Throwable -> L29
                goto L43
            L2f:
                defpackage.r57.b(r7)
                androidx.compose.foundation.text.contextmenu.modifier.TextContextMenuToolbarHandlerNode r7 = androidx.compose.foundation.text.contextmenu.modifier.TextContextMenuToolbarHandlerNode.this     // Catch: java.lang.Throwable -> L29
                nl3 r7 = r7.getOnShow()     // Catch: java.lang.Throwable -> L29
                if (r7 == 0) goto L43
                r6.label = r5     // Catch: java.lang.Throwable -> L29
                java.lang.Object r7 = r7.invoke(r6)     // Catch: java.lang.Throwable -> L29
                if (r7 != r0) goto L43
                goto L76
            L43:
                androidx.compose.foundation.text.contextmenu.provider.TextContextMenuProvider r7 = r6.$provider     // Catch: java.lang.Throwable -> L29
                androidx.compose.foundation.text.contextmenu.modifier.TextContextMenuToolbarHandlerNode r1 = androidx.compose.foundation.text.contextmenu.modifier.TextContextMenuToolbarHandlerNode.this     // Catch: java.lang.Throwable -> L29
                r6.label = r4     // Catch: java.lang.Throwable -> L29
                java.lang.Object r7 = r7.showTextContextMenu(r1, r6)     // Catch: java.lang.Throwable -> L29
                if (r7 != r0) goto L50
                goto L76
            L50:
                androidx.compose.foundation.text.contextmenu.modifier.TextContextMenuToolbarHandlerNode r7 = androidx.compose.foundation.text.contextmenu.modifier.TextContextMenuToolbarHandlerNode.this
                nl3 r7 = r7.getOnHide()
                if (r7 == 0) goto L61
                r6.label = r3
                java.lang.Object r6 = r7.invoke(r6)
                if (r6 != r0) goto L61
                goto L76
            L61:
                j59 r6 = defpackage.j59.a
                return r6
            L64:
                androidx.compose.foundation.text.contextmenu.modifier.TextContextMenuToolbarHandlerNode r1 = androidx.compose.foundation.text.contextmenu.modifier.TextContextMenuToolbarHandlerNode.this
                nl3 r1 = r1.getOnHide()
                if (r1 == 0) goto L79
                r6.L$0 = r7
                r6.label = r2
                java.lang.Object r6 = r1.invoke(r6)
                if (r6 != r0) goto L77
            L76:
                return r0
            L77:
                r6 = r7
            L78:
                r7 = r6
            L79:
                throw r7
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.contextmenu.modifier.TextContextMenuToolbarHandlerNode.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public TextContextMenuToolbarHandlerNode(ToolbarRequester toolbarRequester, nl3<? super e02<? super j59>, ? extends Object> nl3Var, nl3<? super e02<? super j59>, ? extends Object> nl3Var2, nl3<? super LayoutCoordinates, Rect> nl3Var3) {
        this.requester = toolbarRequester;
        this.onShow = nl3Var;
        this.onHide = nl3Var2;
        this.computeContentBounds = nl3Var3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final TextContextMenuData derivedData_delegate$lambda$0(TextContextMenuToolbarHandlerNode textContextMenuToolbarHandlerNode) {
        return textContextMenuToolbarHandlerNode.isAttached() ? TextContextMenuModifierKt.collectTextContextMenuData(textContextMenuToolbarHandlerNode) : TextContextMenuData.Companion.getEmpty();
    }

    private final TextContextMenuData getDerivedData() {
        return (TextContextMenuData) this.derivedData$delegate.getValue();
    }

    @Override // androidx.compose.foundation.text.contextmenu.provider.TextContextMenuDataProvider
    public Rect contentBounds(LayoutCoordinates layoutCoordinates) {
        Rect rectInvoke;
        if (isAttached() && (rectInvoke = this.computeContentBounds.invoke(layoutCoordinates)) != null) {
            this.previousContentBounds = rectInvoke;
            return rectInvoke;
        }
        return this.previousContentBounds;
    }

    @Override // androidx.compose.foundation.text.contextmenu.provider.TextContextMenuDataProvider
    public TextContextMenuData data() {
        return getDerivedData();
    }

    public final nl3<LayoutCoordinates, Rect> getComputeContentBounds() {
        return this.computeContentBounds;
    }

    public final nl3<e02<? super j59>, Object> getOnHide() {
        return this.onHide;
    }

    public final nl3<e02<? super j59>, Object> getOnShow() {
        return this.onShow;
    }

    public final ToolbarRequester getRequester() {
        return this.requester;
    }

    public final void hide() {
        mb4 mb4Var = this.textToolbarJob;
        if (mb4Var == null) {
            return;
        }
        mb4Var.cancel(null);
        this.textToolbarJob = null;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void onAttach() {
        super.onAttach();
        this.requester.setToolbarHandlerState$foundation(ToolbarHandlerState.Attached);
        this.requester.setToolbarHandlerNode$foundation(this);
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void onDetach() {
        this.requester.setToolbarHandlerState$foundation(ToolbarHandlerState.Detached);
        this.requester.setToolbarHandlerNode$foundation(null);
        super.onDetach();
    }

    @Override // androidx.compose.foundation.text.contextmenu.provider.TextContextMenuDataProvider
    /* JADX INFO: renamed from: position-tuRUvjQ */
    public long mo2650positiontuRUvjQ(LayoutCoordinates layoutCoordinates) {
        return contentBounds(layoutCoordinates).m6022getTopLeftF1C5BW0();
    }

    public final void setComputeContentBounds(nl3<? super LayoutCoordinates, Rect> nl3Var) {
        this.computeContentBounds = nl3Var;
    }

    public final void setOnHide(nl3<? super e02<? super j59>, ? extends Object> nl3Var) {
        this.onHide = nl3Var;
    }

    public final void setOnShow(nl3<? super e02<? super j59>, ? extends Object> nl3Var) {
        this.onShow = nl3Var;
    }

    public final void setRequester(ToolbarRequester toolbarRequester) {
        this.requester = toolbarRequester;
    }

    public final void show() {
        TextContextMenuProvider textContextMenuProvider;
        if (isAttached()) {
            mb4 mb4Var = this.textToolbarJob;
            if ((mb4Var == null || !mb4Var.isActive()) && (textContextMenuProvider = (TextContextMenuProvider) CompositionLocalConsumerModifierNodeKt.currentValueOf(this, TextContextMenuProviderKt.getLocalTextContextMenuToolbarProvider())) != null) {
                this.textToolbarJob = av0.c(getCoroutineScope(), null, c32.UNDISPATCHED, new AnonymousClass1(textContextMenuProvider, null), 1);
            }
        }
    }

    public final void update(ToolbarRequester toolbarRequester) {
        this.requester.setToolbarHandlerNode$foundation(null);
        this.requester = toolbarRequester;
        toolbarRequester.setToolbarHandlerNode$foundation(this);
        this.requester.setToolbarHandlerState$foundation(isAttached() ? ToolbarHandlerState.Attached : ToolbarHandlerState.Detached);
    }
}
