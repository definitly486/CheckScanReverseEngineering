package androidx.compose.foundation.text.input.internal;

import android.view.KeyEvent;
import androidx.compose.foundation.FocusableNode;
import androidx.compose.foundation.content.ReceiveContentListener;
import androidx.compose.foundation.content.TransferableContent;
import androidx.compose.foundation.content.TransferableContent_androidKt;
import androidx.compose.foundation.content.internal.DragAndDropRequestPermission_androidKt;
import androidx.compose.foundation.content.internal.ReceiveContentConfiguration;
import androidx.compose.foundation.content.internal.ReceiveContentConfigurationKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.text.AutofillHighlightKt;
import androidx.compose.foundation.text.AutofillHighlight_androidKt;
import androidx.compose.foundation.text.Handle;
import androidx.compose.foundation.text.KeyCommand;
import androidx.compose.foundation.text.KeyboardOptions;
import androidx.compose.foundation.text.input.InputTransformation;
import androidx.compose.foundation.text.input.KeyboardActionHandler;
import androidx.compose.foundation.text.input.TextFieldBuffer;
import androidx.compose.foundation.text.input.TextFieldCharSequence;
import androidx.compose.foundation.text.input.TextFieldState;
import androidx.compose.foundation.text.input.internal.TextFieldDecoratorModifierNode;
import androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState;
import androidx.compose.foundation.text.input.internal.selection.TextToolbarState;
import androidx.compose.foundation.text.input.internal.undo.TextFieldEditUndoBehavior;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.ui.autofill.ContentDataType;
import androidx.compose.ui.autofill.ContentType;
import androidx.compose.ui.autofill.FillableData;
import androidx.compose.ui.autofill.FillableData_androidKt;
import androidx.compose.ui.draganddrop.DragAndDropEvent;
import androidx.compose.ui.draganddrop.DragAndDropTargetModifierNode;
import androidx.compose.ui.focus.FocusDirection;
import androidx.compose.ui.focus.FocusManager;
import androidx.compose.ui.focus.FocusProperties;
import androidx.compose.ui.focus.FocusPropertiesModifierNode;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.input.InputMode;
import androidx.compose.ui.input.InputModeManager;
import androidx.compose.ui.input.key.KeyInputModifierNode;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNode;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.modifier.ModifierLocalModifierNode;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNode;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNodeKt;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.DrawModifierNode;
import androidx.compose.ui.node.GlobalPositionAwareModifierNode;
import androidx.compose.ui.node.LayoutAwareModifierNode;
import androidx.compose.ui.node.ObserverModifierNode;
import androidx.compose.ui.node.ObserverModifierNodeKt;
import androidx.compose.ui.node.PointerInputModifierNode;
import androidx.compose.ui.node.SemanticsModifierNode;
import androidx.compose.ui.node.SemanticsModifierNodeKt;
import androidx.compose.ui.platform.ClipEntry;
import androidx.compose.ui.platform.ClipMetadata;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.PlatformTextInputModifierNode;
import androidx.compose.ui.platform.PlatformTextInputModifierNodeKt;
import androidx.compose.ui.platform.PlatformTextInputSessionScope;
import androidx.compose.ui.platform.SoftwareKeyboardController;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.platform.WindowInfo;
import androidx.compose.ui.semantics.InputTextSuggestionState;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import androidx.compose.ui.text.input.ImeAction;
import androidx.compose.ui.text.input.ImeOptions;
import androidx.compose.ui.text.input.KeyboardType;
import defpackage.a32;
import defpackage.aa4;
import defpackage.ad;
import defpackage.ah;
import defpackage.av0;
import defpackage.aw4;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.c32;
import defpackage.ca2;
import defpackage.df;
import defpackage.e02;
import defpackage.ef;
import defpackage.eh4;
import defpackage.gc5;
import defpackage.h1;
import defpackage.h8;
import defpackage.hc5;
import defpackage.id3;
import defpackage.j59;
import defpackage.jw4;
import defpackage.k8;
import defpackage.km1;
import defpackage.ll3;
import defpackage.mb4;
import defpackage.ne3;
import defpackage.nl3;
import defpackage.o31;
import defpackage.or2;
import defpackage.p31;
import defpackage.pg8;
import defpackage.r57;
import defpackage.rk5;
import defpackage.s92;
import defpackage.u;
import defpackage.uk5;
import defpackage.vg5;
import defpackage.vr2;
import defpackage.vr3;
import defpackage.wq7;
import defpackage.y22;
import defpackage.yd5;
import defpackage.z22;
import defpackage.zi0;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class TextFieldDecoratorModifierNode extends DelegatingNode implements DrawModifierNode, PlatformTextInputModifierNode, SemanticsModifierNode, GlobalPositionAwareModifierNode, PointerInputModifierNode, KeyInputModifierNode, CompositionLocalConsumerModifierNode, ModifierLocalModifierNode, ObserverModifierNode, LayoutAwareModifierNode, FocusPropertiesModifierNode {
    public static final int $stable = 8;
    private final MutableState autofillHighlightOn$delegate;
    private final nl3<? super KeyCommand, ? extends j59> clipboardKeyCommandsHandler;
    private final DragAndDropTargetModifierNode dragAndDropNode;
    private DragAndDropHoverInteraction.Enter dragEnterEvent;
    private boolean enabled;
    private InputTransformation filter;
    private final FocusableNode focusableNode;
    private mb4 inputSessionJob;
    private MutableInteractionSource interactionSource;
    private boolean isPassword;
    private KeyboardActionHandler keyboardActionHandler;
    private final TextFieldDecoratorModifierNode$keyboardActionScope$1 keyboardActionScope;
    private KeyboardOptions keyboardOptions;
    private final SuspendingPointerInputModifierNode pointerInputNode;
    private boolean readOnly;
    private final ll3<ReceiveContentConfiguration> receiveContentConfigurationProvider;
    private boolean singleLine;
    private vg5<j59> stylusHandwritingTrigger;
    private final TextFieldKeyEventHandler textFieldKeyEventHandler;
    private TextFieldSelectionState textFieldSelectionState;
    private TransformedTextFieldState textFieldState;
    private TextLayoutState textLayoutState;
    private mb4 toolbarAndHandlesVisibilityObserverJob;
    private WindowInfo windowInfo;

    /* JADX INFO: renamed from: androidx.compose.foundation.text.input.internal.TextFieldDecoratorModifierNode$onIsFocusedUpdated$1, reason: invalid class name */
    @bd2(c = "androidx.compose.foundation.text.input.internal.TextFieldDecoratorModifierNode$onIsFocusedUpdated$1", f = "TextFieldDecoratorModifier.kt", l = {708}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        int label;

        public AnonymousClass1(e02<? super AnonymousClass1> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return TextFieldDecoratorModifierNode.this.new AnonymousClass1(e02Var);
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
                TextFieldSelectionState textFieldSelectionState = TextFieldDecoratorModifierNode.this.getTextFieldSelectionState();
                this.label = 1;
                if (textFieldSelectionState.startToolbarAndHandlesVisibilityObserver(this) == a32Var) {
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

    /* JADX INFO: renamed from: androidx.compose.foundation.text.input.internal.TextFieldDecoratorModifierNode$startInputSession$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.compose.foundation.text.input.internal.TextFieldDecoratorModifierNode$startInputSession$1", f = "TextFieldDecoratorModifier.kt", l = {817}, m = "invokeSuspend", v = 1)
    public static final class C05591 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        final /* synthetic */ ReceiveContentConfiguration $receiveContentConfiguration;
        int label;

        /* JADX INFO: renamed from: androidx.compose.foundation.text.input.internal.TextFieldDecoratorModifierNode$startInputSession$1$1, reason: invalid class name and collision with other inner class name */
        @bd2(c = "androidx.compose.foundation.text.input.internal.TextFieldDecoratorModifierNode$startInputSession$1$1", f = "TextFieldDecoratorModifier.kt", l = {818}, m = "invokeSuspend", v = 1)
        public static final class C00471 extends pg8 implements bm3<PlatformTextInputSessionScope, e02<?>, Object> {
            final /* synthetic */ ReceiveContentConfiguration $receiveContentConfiguration;
            private /* synthetic */ Object L$0;
            int label;
            final /* synthetic */ TextFieldDecoratorModifierNode this$0;

            /* JADX INFO: renamed from: androidx.compose.foundation.text.input.internal.TextFieldDecoratorModifierNode$startInputSession$1$1$1, reason: invalid class name and collision with other inner class name */
            public static final /* synthetic */ class C00481 extends k8 implements nl3<ImeAction, j59> {
                public C00481(Object obj) {
                    super(1, obj, TextFieldDecoratorModifierNode.class, "onImeActionPerformed", "onImeActionPerformed-KlQnJC8(I)Z", 8);
                }

                @Override // defpackage.nl3
                public /* bridge */ /* synthetic */ j59 invoke(ImeAction imeAction) {
                    m2806invokeKlQnJC8(imeAction.m8662unboximpl());
                    return j59.a;
                }

                /* JADX INFO: renamed from: invoke-KlQnJC8, reason: not valid java name */
                public final void m2806invokeKlQnJC8(int i) {
                    ((TextFieldDecoratorModifierNode) this.receiver).m2805onImeActionPerformedKlQnJC8(i);
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C00471(TextFieldDecoratorModifierNode textFieldDecoratorModifierNode, ReceiveContentConfiguration receiveContentConfiguration, e02<? super C00471> e02Var) {
                super(2, e02Var);
                this.this$0 = textFieldDecoratorModifierNode;
                this.$receiveContentConfiguration = receiveContentConfiguration;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final j59 invokeSuspend$lambda$0(TextFieldDecoratorModifierNode textFieldDecoratorModifierNode) {
                textFieldDecoratorModifierNode.getTextFieldSelectionState().updateTextToolbarState(TextToolbarState.Selection);
                return j59.a;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final j59 invokeSuspend$lambda$1(TextFieldDecoratorModifierNode textFieldDecoratorModifierNode, boolean z) {
                textFieldDecoratorModifierNode.getTextFieldSelectionState().setInTouchMode(z);
                return j59.a;
            }

            @Override // defpackage.cd0
            public final e02<j59> create(Object obj, e02<?> e02Var) {
                C00471 c00471 = new C00471(this.this$0, this.$receiveContentConfiguration, e02Var);
                c00471.L$0 = obj;
                return c00471;
            }

            @Override // defpackage.bm3
            public final Object invoke(PlatformTextInputSessionScope platformTextInputSessionScope, e02<?> e02Var) {
                return ((C00471) create(platformTextInputSessionScope, e02Var)).invokeSuspend(j59.a);
            }

            @Override // defpackage.cd0
            public final Object invokeSuspend(Object obj) {
                a32 a32Var = a32.COROUTINE_SUSPENDED;
                int i = this.label;
                if (i == 0) {
                    r57.b(obj);
                    PlatformTextInputSessionScope platformTextInputSessionScope = (PlatformTextInputSessionScope) this.L$0;
                    TransformedTextFieldState textFieldState = this.this$0.getTextFieldState();
                    TextLayoutState textLayoutState = this.this$0.getTextLayoutState();
                    ImeOptions imeOptions$foundation = this.this$0.getKeyboardOptions().toImeOptions$foundation(this.this$0.getSingleLine());
                    ReceiveContentConfiguration receiveContentConfiguration = this.$receiveContentConfiguration;
                    C00481 c00481 = new C00481(this.this$0);
                    final TextFieldDecoratorModifierNode textFieldDecoratorModifierNode = this.this$0;
                    ll3 ll3Var = new ll3() { // from class: androidx.compose.foundation.text.input.internal.k
                        @Override // defpackage.ll3
                        public final Object invoke() {
                            return TextFieldDecoratorModifierNode.C05591.C00471.invokeSuspend$lambda$0(textFieldDecoratorModifierNode);
                        }
                    };
                    vg5<j59> stylusHandwritingTrigger = textFieldDecoratorModifierNode.getStylusHandwritingTrigger();
                    ViewConfiguration viewConfiguration = (ViewConfiguration) CompositionLocalConsumerModifierNodeKt.currentValueOf(this.this$0, CompositionLocalsKt.getLocalViewConfiguration());
                    final TextFieldDecoratorModifierNode textFieldDecoratorModifierNode2 = this.this$0;
                    nl3 nl3Var = new nl3() { // from class: androidx.compose.foundation.text.input.internal.l
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj2) {
                            return TextFieldDecoratorModifierNode.C05591.C00471.invokeSuspend$lambda$1(textFieldDecoratorModifierNode2, ((Boolean) obj2).booleanValue());
                        }
                    };
                    this.label = 1;
                    if (AndroidTextInputSession_androidKt.platformSpecificTextInputSession(platformTextInputSessionScope, textFieldState, textLayoutState, imeOptions$foundation, receiveContentConfiguration, c00481, ll3Var, stylusHandwritingTrigger, viewConfiguration, nl3Var, this) == a32Var) {
                        return a32Var;
                    }
                } else {
                    if (i != 1) {
                        ah.f("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    r57.b(obj);
                }
                h8.d();
                return null;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C05591(ReceiveContentConfiguration receiveContentConfiguration, e02<? super C05591> e02Var) {
            super(2, e02Var);
            this.$receiveContentConfiguration = receiveContentConfiguration;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return TextFieldDecoratorModifierNode.this.new C05591(this.$receiveContentConfiguration, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((C05591) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                TextFieldDecoratorModifierNode textFieldDecoratorModifierNode = TextFieldDecoratorModifierNode.this;
                C00471 c00471 = new C00471(textFieldDecoratorModifierNode, this.$receiveContentConfiguration, null);
                this.label = 1;
                if (PlatformTextInputModifierNodeKt.establishTextInputSession(textFieldDecoratorModifierNode, c00471, this) == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            h8.d();
            return null;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.text.input.internal.TextFieldDecoratorModifierNode$updateNode$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.compose.foundation.text.input.internal.TextFieldDecoratorModifierNode$updateNode$1", f = "TextFieldDecoratorModifier.kt", l = {514}, m = "invokeSuspend", v = 1)
    public static final class C05601 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        final /* synthetic */ TextFieldSelectionState $textFieldSelectionState;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C05601(TextFieldSelectionState textFieldSelectionState, e02<? super C05601> e02Var) {
            super(2, e02Var);
            this.$textFieldSelectionState = textFieldSelectionState;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new C05601(this.$textFieldSelectionState, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((C05601) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                TextFieldSelectionState textFieldSelectionState = this.$textFieldSelectionState;
                this.label = 1;
                if (textFieldSelectionState.startToolbarAndHandlesVisibilityObserver(this) == a32Var) {
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

    public TextFieldDecoratorModifierNode(TransformedTextFieldState transformedTextFieldState, TextLayoutState textLayoutState, TextFieldSelectionState textFieldSelectionState, InputTransformation inputTransformation, boolean z, boolean z2, KeyboardOptions keyboardOptions, KeyboardActionHandler keyboardActionHandler, boolean z3, MutableInteractionSource mutableInteractionSource, boolean z4, vg5<j59> vg5Var) {
        this.textFieldState = transformedTextFieldState;
        this.textLayoutState = textLayoutState;
        this.textFieldSelectionState = textFieldSelectionState;
        this.filter = inputTransformation;
        this.enabled = z;
        this.readOnly = z2;
        this.keyboardOptions = keyboardOptions;
        this.keyboardActionHandler = keyboardActionHandler;
        this.singleLine = z3;
        this.interactionSource = mutableInteractionSource;
        this.isPassword = z4;
        this.stylusHandwritingTrigger = vg5Var;
        int i = 2;
        textFieldSelectionState.setRequestAutofillAction(new gc5(this, i));
        int i2 = 1;
        this.focusableNode = new FocusableNode(this.interactionSource, 0, new ad(this, i2), 2, null);
        this.pointerInputNode = (SuspendingPointerInputModifierNode) delegate(SuspendingPointerInputFilterKt.SuspendingPointerInputModifierNode(new PointerInputEventHandler() { // from class: androidx.compose.foundation.text.input.internal.TextFieldDecoratorModifierNode$pointerInputNode$1

            /* JADX INFO: renamed from: androidx.compose.foundation.text.input.internal.TextFieldDecoratorModifierNode$pointerInputNode$1$1, reason: invalid class name */
            @bd2(c = "androidx.compose.foundation.text.input.internal.TextFieldDecoratorModifierNode$pointerInputNode$1$1", f = "TextFieldDecoratorModifier.kt", l = {}, m = "invokeSuspend", v = 1)
            public static final class AnonymousClass1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
                final /* synthetic */ PointerInputScope $this_SuspendingPointerInputModifierNode;
                private /* synthetic */ Object L$0;
                int label;
                final /* synthetic */ TextFieldDecoratorModifierNode this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public AnonymousClass1(TextFieldDecoratorModifierNode textFieldDecoratorModifierNode, PointerInputScope pointerInputScope, e02<? super AnonymousClass1> e02Var) {
                    super(2, e02Var);
                    this.this$0 = textFieldDecoratorModifierNode;
                    this.$this_SuspendingPointerInputModifierNode = pointerInputScope;
                }

                /* JADX INFO: Access modifiers changed from: private */
                public static final j59 invokeSuspend$lambda$0$0(TextFieldSelectionState textFieldSelectionState, TextFieldDecoratorModifierNode textFieldDecoratorModifierNode) {
                    if (!textFieldSelectionState.isFocused()) {
                        textFieldDecoratorModifierNode.requestFocus();
                    }
                    return j59.a;
                }

                @Override // defpackage.cd0
                public final e02<j59> create(Object obj, e02<?> e02Var) {
                    AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, this.$this_SuspendingPointerInputModifierNode, e02Var);
                    anonymousClass1.L$0 = obj;
                    return anonymousClass1;
                }

                @Override // defpackage.bm3
                public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
                    return ((AnonymousClass1) create(y22Var, e02Var)).invokeSuspend(j59.a);
                }

                @Override // defpackage.cd0
                public final Object invokeSuspend(Object obj) {
                    a32 a32Var = a32.COROUTINE_SUSPENDED;
                    if (this.label != 0) {
                        ah.f("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    r57.b(obj);
                    y22 y22Var = (y22) this.L$0;
                    final TextFieldSelectionState textFieldSelectionState = this.this$0.getTextFieldSelectionState();
                    final TextFieldDecoratorModifierNode textFieldDecoratorModifierNode = this.this$0;
                    PointerInputScope pointerInputScope = this.$this_SuspendingPointerInputModifierNode;
                    ll3 ll3Var = 
                    /*  JADX ERROR: Method code generation error
                        jadx.core.utils.exceptions.CodegenException: Error generate insn: 0x001a: CONSTRUCTOR (r6v0 'll3Var' ll3) = 
                          (r4v0 'textFieldSelectionState' androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState A[DONT_INLINE])
                          (r3v0 'textFieldDecoratorModifierNode' androidx.compose.foundation.text.input.internal.TextFieldDecoratorModifierNode A[DONT_INLINE])
                         A[DECLARE_VAR, MD:(androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState, androidx.compose.foundation.text.input.internal.TextFieldDecoratorModifierNode):void (m)] call: androidx.compose.foundation.text.input.internal.i.<init>(androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState, androidx.compose.foundation.text.input.internal.TextFieldDecoratorModifierNode):void type: CONSTRUCTOR in method: androidx.compose.foundation.text.input.internal.TextFieldDecoratorModifierNode$pointerInputNode$1.1.invokeSuspend(java.lang.Object):java.lang.Object, file: classes.dex
                        	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:310)
                        	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:273)
                        	at jadx.core.codegen.RegionGen.makeSimpleBlock(RegionGen.java:94)
                        	at jadx.core.dex.nodes.IBlock.generate(IBlock.java:15)
                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                        	at jadx.core.dex.regions.Region.generate(Region.java:35)
                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                        	at jadx.core.dex.regions.Region.generate(Region.java:35)
                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                        	at jadx.core.dex.regions.Region.generate(Region.java:35)
                        	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                        	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:291)
                        	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:270)
                        	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:420)
                        	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:345)
                        	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:299)
                        	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:183)
                        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                        	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
                        	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:258)
                        Caused by: jadx.core.utils.exceptions.JadxRuntimeException: Expected class to be processed at this point, class: androidx.compose.foundation.text.input.internal.i, state: NOT_LOADED
                        	at jadx.core.dex.nodes.ClassNode.ensureProcessed(ClassNode.java:306)
                        	at jadx.core.codegen.InsnGen.inlineAnonymousConstructor(InsnGen.java:807)
                        	at jadx.core.codegen.InsnGen.makeConstructor(InsnGen.java:730)
                        	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:418)
                        	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:303)
                        	... 19 more
                        */
                    /*
                        this = this;
                        a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
                        int r0 = r9.label
                        r1 = 0
                        if (r0 != 0) goto L3c
                        defpackage.r57.b(r10)
                        java.lang.Object r10 = r9.L$0
                        y22 r10 = (defpackage.y22) r10
                        androidx.compose.foundation.text.input.internal.TextFieldDecoratorModifierNode r0 = r9.this$0
                        androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState r4 = r0.getTextFieldSelectionState()
                        androidx.compose.foundation.text.input.internal.TextFieldDecoratorModifierNode r3 = r9.this$0
                        androidx.compose.ui.input.pointer.PointerInputScope r5 = r9.$this_SuspendingPointerInputModifierNode
                        androidx.compose.foundation.text.input.internal.i r6 = new androidx.compose.foundation.text.input.internal.i
                        r6.<init>(r4, r3)
                        c32 r9 = defpackage.c32.UNDISPATCHED
                        androidx.compose.foundation.text.input.internal.TextFieldDecoratorModifierNode$pointerInputNode$1$1$1$1 r0 = new androidx.compose.foundation.text.input.internal.TextFieldDecoratorModifierNode$pointerInputNode$1$1$1$1
                        r0.<init>(r4, r5, r1)
                        r8 = 1
                        defpackage.av0.c(r10, r1, r9, r0, r8)
                        androidx.compose.foundation.text.input.internal.TextFieldDecoratorModifierNode$pointerInputNode$1$1$1$2 r2 = new androidx.compose.foundation.text.input.internal.TextFieldDecoratorModifierNode$pointerInputNode$1$1$1$2
                        r7 = 0
                        r2.<init>(r3, r4, r5, r6, r7)
                        defpackage.av0.c(r10, r1, r9, r2, r8)
                        androidx.compose.foundation.text.input.internal.TextFieldDecoratorModifierNode$pointerInputNode$1$1$1$3 r0 = new androidx.compose.foundation.text.input.internal.TextFieldDecoratorModifierNode$pointerInputNode$1$1$1$3
                        r0.<init>(r4, r5, r6, r1)
                        defpackage.av0.c(r10, r1, r9, r0, r8)
                        j59 r9 = defpackage.j59.a
                        return r9
                    L3c:
                        java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
                        defpackage.ah.f(r9)
                        return r1
                    */
                    throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.input.internal.TextFieldDecoratorModifierNode$pointerInputNode$1.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
                }
            }

            @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
            public final Object invoke(PointerInputScope pointerInputScope, e02<? super j59> e02Var) {
                Object objC = z22.c(new AnonymousClass1(this.this$0, pointerInputScope, null), e02Var);
                return objC == a32.COROUTINE_SUSPENDED ? objC : j59.a;
            }
        }));
        int i3 = 3;
        this.dragAndDropNode = (DragAndDropTargetModifierNode) delegate(TextFieldDragAndDropNode_androidKt.textFieldDragAndDropNode$default(new zi0(this, 4), new bm3() { // from class: mq8
            @Override // defpackage.bm3
            public final Object invoke(Object obj, Object obj2) {
                return Boolean.valueOf(TextFieldDecoratorModifierNode.dragAndDropNode$lambda$1(this.b, (ClipEntry) obj, (ClipMetadata) obj2));
            }
        }, new vr2(this, i3), null, new vr3(this, i2), new rk5(this, i), null, new u(this, i3), new ca2(this, i2), 72, null));
        this.textFieldKeyEventHandler = TextFieldKeyEventHandler_androidKt.createTextFieldKeyEventHandler();
        this.keyboardActionScope = new TextFieldDecoratorModifierNode$keyboardActionScope$1(this);
        this.clipboardKeyCommandsHandler = ClipboardKeyCommandsHandler.m2696constructorimpl(new uk5(this, i));
        this.receiveContentConfigurationProvider = new hc5(this, i);
        this.autofillHighlightOn$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.FALSE, null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 _init_$lambda$0(TextFieldDecoratorModifierNode textFieldDecoratorModifierNode) {
        DelegatableNodeKt.requestAutofill(textFieldDecoratorModifierNode);
        return j59.a;
    }

    private final void applyCurrentInputMode() {
        if (InputMode.m7038equalsimpl0(((InputModeManager) CompositionLocalConsumerModifierNodeKt.currentValueOf(this, CompositionLocalsKt.getLocalInputModeManager())).mo7045getInputModeaOaMEAU(), InputMode.Companion.m7043getTouchaOaMEAU())) {
            return;
        }
        this.textFieldSelectionState.setInTouchMode(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean applySemantics$lambda$1(boolean z, TextFieldDecoratorModifierNode textFieldDecoratorModifierNode, FillableData fillableData) {
        if (!z) {
            return false;
        }
        CharSequence textValue = fillableData.getTextValue();
        if (textValue != null) {
            textFieldDecoratorModifierNode.textFieldState.replaceAll(textValue);
        }
        textFieldDecoratorModifierNode.setAutofillHighlightOn(true);
        av0.c(textFieldDecoratorModifierNode.getCoroutineScope(), null, null, new TextFieldDecoratorModifierNode$applySemantics$2$2(textFieldDecoratorModifierNode, null), 3);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean applySemantics$lambda$10(TextFieldDecoratorModifierNode textFieldDecoratorModifierNode) {
        av0.c(textFieldDecoratorModifierNode.getCoroutineScope(), null, null, new TextFieldDecoratorModifierNode$applySemantics$11$1(textFieldDecoratorModifierNode, null), 3);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean applySemantics$lambda$11(TextFieldDecoratorModifierNode textFieldDecoratorModifierNode) {
        av0.c(textFieldDecoratorModifierNode.getCoroutineScope(), null, null, new TextFieldDecoratorModifierNode$applySemantics$12$1(textFieldDecoratorModifierNode, null), 3);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean applySemantics$lambda$2(TextFieldDecoratorModifierNode textFieldDecoratorModifierNode, List list) {
        TextLayoutResult layoutResult = textFieldDecoratorModifierNode.textLayoutState.getLayoutResult();
        if (layoutResult != null) {
            return list.add(layoutResult);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean applySemantics$lambda$3(boolean z, TextFieldDecoratorModifierNode textFieldDecoratorModifierNode, AnnotatedString annotatedString) {
        if (!z) {
            return false;
        }
        textFieldDecoratorModifierNode.textFieldState.replaceAll(annotatedString);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean applySemantics$lambda$4(boolean z, TextFieldDecoratorModifierNode textFieldDecoratorModifierNode, AnnotatedString annotatedString) {
        if (!z) {
            return false;
        }
        TransformedTextFieldState.replaceSelectedText$default(textFieldDecoratorModifierNode.textFieldState, annotatedString, true, null, false, 12, null);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean applySemantics$lambda$5(TextFieldDecoratorModifierNode textFieldDecoratorModifierNode, int i, int i2, boolean z) {
        TextFieldCharSequence untransformedText = z ? textFieldDecoratorModifierNode.textFieldState.getUntransformedText() : textFieldDecoratorModifierNode.textFieldState.getVisualText();
        long jM2665getSelectiond9O1mEE = untransformedText.m2665getSelectiond9O1mEE();
        if (!textFieldDecoratorModifierNode.enabled || Math.min(i, i2) < 0 || Math.max(i, i2) > untransformedText.length()) {
            return false;
        }
        if (i == TextRange.m8491getStartimpl(jM2665getSelectiond9O1mEE) && i2 == TextRange.m8486getEndimpl(jM2665getSelectiond9O1mEE)) {
            return true;
        }
        long jTextRange = TextRangeKt.TextRange(i, i2);
        if (z || i == i2) {
            textFieldDecoratorModifierNode.textFieldSelectionState.updateTextToolbarState(TextToolbarState.None);
        } else {
            textFieldDecoratorModifierNode.textFieldSelectionState.updateTextToolbarState(TextToolbarState.Selection);
        }
        TransformedTextFieldState transformedTextFieldState = textFieldDecoratorModifierNode.textFieldState;
        if (z) {
            transformedTextFieldState.m2839selectUntransformedCharsIn5zctL8(jTextRange);
        } else {
            transformedTextFieldState.m2838selectCharsIn5zctL8(jTextRange);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean applySemantics$lambda$6(TextFieldDecoratorModifierNode textFieldDecoratorModifierNode, int i) {
        textFieldDecoratorModifierNode.m2805onImeActionPerformedKlQnJC8(i);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean applySemantics$lambda$7(TextFieldDecoratorModifierNode textFieldDecoratorModifierNode) {
        if (!textFieldDecoratorModifierNode.isFocused()) {
            textFieldDecoratorModifierNode.requestFocus();
            return true;
        }
        if (textFieldDecoratorModifierNode.readOnly) {
            return true;
        }
        textFieldDecoratorModifierNode.requireKeyboardController().show();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean applySemantics$lambda$8(TextFieldDecoratorModifierNode textFieldDecoratorModifierNode) {
        if (!textFieldDecoratorModifierNode.isFocused()) {
            textFieldDecoratorModifierNode.requestFocus();
        }
        textFieldDecoratorModifierNode.textFieldSelectionState.updateTextToolbarState(TextToolbarState.Selection);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean applySemantics$lambda$9(TextFieldDecoratorModifierNode textFieldDecoratorModifierNode) {
        av0.c(textFieldDecoratorModifierNode.getCoroutineScope(), null, null, new TextFieldDecoratorModifierNode$applySemantics$10$1(textFieldDecoratorModifierNode, null), 3);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 clipboardKeyCommandsHandler$lambda$0(TextFieldDecoratorModifierNode textFieldDecoratorModifierNode, KeyCommand keyCommand) {
        av0.c(textFieldDecoratorModifierNode.getCoroutineScope(), null, c32.UNDISPATCHED, new TextFieldDecoratorModifierNode$clipboardKeyCommandsHandler$1$1(keyCommand, textFieldDecoratorModifierNode, null), 1);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: defaultKeyboardActionWithResult-KlQnJC8, reason: not valid java name */
    public final boolean m2804defaultKeyboardActionWithResultKlQnJC8(int i) {
        ImeAction.Companion companion = ImeAction.Companion;
        if (ImeAction.m8659equalsimpl0(i, companion.m8675getNexteUduSuo())) {
            ((FocusManager) CompositionLocalConsumerModifierNodeKt.currentValueOf(this, CompositionLocalsKt.getLocalFocusManager())).mo5876moveFocus3ESFkO8(FocusDirection.Companion.m5870getNextdhqQ8s());
            return true;
        }
        if (ImeAction.m8659equalsimpl0(i, companion.m8677getPreviouseUduSuo())) {
            ((FocusManager) CompositionLocalConsumerModifierNodeKt.currentValueOf(this, CompositionLocalsKt.getLocalFocusManager())).mo5876moveFocus3ESFkO8(FocusDirection.Companion.m5871getPreviousdhqQ8s());
            return true;
        }
        if (!ImeAction.m8659equalsimpl0(i, companion.m8673getDoneeUduSuo())) {
            return false;
        }
        requireKeyboardController().hide();
        return true;
    }

    private final void disposeInputSession() {
        mb4 mb4Var = this.inputSessionJob;
        if (mb4Var != null) {
            mb4Var.cancel(null);
        }
        this.inputSessionJob = null;
        vg5<j59> vg5Var = this.stylusHandwritingTrigger;
        if (vg5Var != null) {
            vg5Var.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Set dragAndDropNode$lambda$0(TextFieldDecoratorModifierNode textFieldDecoratorModifierNode) {
        return ReceiveContentConfigurationKt.getReceiveContentConfiguration(textFieldDecoratorModifierNode) != null ? TextFieldDecoratorModifierKt.MediaTypesAll : TextFieldDecoratorModifierKt.MediaTypesText;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean dragAndDropNode$lambda$1(TextFieldDecoratorModifierNode textFieldDecoratorModifierNode, ClipEntry clipEntry, ClipMetadata clipMetadata) {
        ClipEntry clipEntry2;
        textFieldDecoratorModifierNode.emitDragExitEvent();
        textFieldDecoratorModifierNode.textFieldSelectionState.clearHandleDragging();
        String plainText = TransferableContent_androidKt.readPlainText(clipEntry);
        ReceiveContentConfiguration receiveContentConfiguration = ReceiveContentConfigurationKt.getReceiveContentConfiguration(textFieldDecoratorModifierNode);
        if (receiveContentConfiguration != null) {
            TransferableContent transferableContentOnReceive = receiveContentConfiguration.getReceiveContentListener().onReceive(new TransferableContent(clipEntry, clipMetadata, TransferableContent.Source.Companion.m1393getDragAndDropkB6V9T0(), null, 8, null));
            plainText = (transferableContentOnReceive == null || (clipEntry2 = transferableContentOnReceive.getClipEntry()) == null) ? null : TransferableContent_androidKt.readPlainText(clipEntry2);
        }
        String str = plainText;
        if (str == null) {
            return true;
        }
        TransformedTextFieldState.replaceSelectedText$default(textFieldDecoratorModifierNode.textFieldState, str, false, null, false, 14, null);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 dragAndDropNode$lambda$2(TextFieldDecoratorModifierNode textFieldDecoratorModifierNode, DragAndDropEvent dragAndDropEvent) {
        if (ReceiveContentConfigurationKt.getReceiveContentConfiguration(textFieldDecoratorModifierNode) != null) {
            DragAndDropRequestPermission_androidKt.dragAndDropRequestPermission(textFieldDecoratorModifierNode, dragAndDropEvent);
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 dragAndDropNode$lambda$3(TextFieldDecoratorModifierNode textFieldDecoratorModifierNode, DragAndDropEvent dragAndDropEvent) {
        ReceiveContentListener receiveContentListener;
        DragAndDropHoverInteraction.Enter enter = new DragAndDropHoverInteraction.Enter();
        textFieldDecoratorModifierNode.interactionSource.tryEmit(enter);
        textFieldDecoratorModifierNode.dragEnterEvent = enter;
        ReceiveContentConfiguration receiveContentConfiguration = ReceiveContentConfigurationKt.getReceiveContentConfiguration(textFieldDecoratorModifierNode);
        if (receiveContentConfiguration != null && (receiveContentListener = receiveContentConfiguration.getReceiveContentListener()) != null) {
            receiveContentListener.onDragEnter();
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 dragAndDropNode$lambda$4(TextFieldDecoratorModifierNode textFieldDecoratorModifierNode, Offset offset) {
        long jM2827fromWindowToDecorationUv8p0NA = TextLayoutStateKt.m2827fromWindowToDecorationUv8p0NA(textFieldDecoratorModifierNode.textLayoutState, offset.m5997unboximpl());
        int iM2817getOffsetForPosition3MmeM6k$default = TextLayoutState.m2817getOffsetForPosition3MmeM6k$default(textFieldDecoratorModifierNode.textLayoutState, jM2827fromWindowToDecorationUv8p0NA, false, 2, null);
        if (iM2817getOffsetForPosition3MmeM6k$default >= 0) {
            textFieldDecoratorModifierNode.textFieldState.m2838selectCharsIn5zctL8(TextRangeKt.TextRange(iM2817getOffsetForPosition3MmeM6k$default));
        }
        textFieldDecoratorModifierNode.textFieldSelectionState.m2881updateHandleDraggingUv8p0NA(Handle.Cursor, jM2827fromWindowToDecorationUv8p0NA);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 dragAndDropNode$lambda$5(TextFieldDecoratorModifierNode textFieldDecoratorModifierNode, DragAndDropEvent dragAndDropEvent) {
        ReceiveContentListener receiveContentListener;
        textFieldDecoratorModifierNode.emitDragExitEvent();
        textFieldDecoratorModifierNode.textFieldSelectionState.clearHandleDragging();
        ReceiveContentConfiguration receiveContentConfiguration = ReceiveContentConfigurationKt.getReceiveContentConfiguration(textFieldDecoratorModifierNode);
        if (receiveContentConfiguration != null && (receiveContentListener = receiveContentConfiguration.getReceiveContentListener()) != null) {
            receiveContentListener.onDragExit();
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 dragAndDropNode$lambda$6(TextFieldDecoratorModifierNode textFieldDecoratorModifierNode, DragAndDropEvent dragAndDropEvent) {
        textFieldDecoratorModifierNode.emitDragExitEvent();
        return j59.a;
    }

    private final void emitDragExitEvent() {
        DragAndDropHoverInteraction.Enter enter = this.dragEnterEvent;
        if (enter != null) {
            this.interactionSource.tryEmit(new DragAndDropHoverInteraction.Exit(enter));
            this.dragEnterEvent = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 focusableNode$lambda$0(TextFieldDecoratorModifierNode textFieldDecoratorModifierNode, boolean z) {
        boolean z2 = textFieldDecoratorModifierNode.enabled && !textFieldDecoratorModifierNode.readOnly;
        if (z) {
            textFieldDecoratorModifierNode.applyCurrentInputMode();
            if (z2) {
                textFieldDecoratorModifierNode.startInputSession(false);
            }
        } else {
            textFieldDecoratorModifierNode.disposeInputSession();
            TransformedTextFieldState transformedTextFieldState = textFieldDecoratorModifierNode.textFieldState;
            TextFieldState textFieldState = transformedTextFieldState.textFieldState;
            InputTransformation inputTransformation = transformedTextFieldState.inputTransformation;
            TextFieldEditUndoBehavior textFieldEditUndoBehavior = TextFieldEditUndoBehavior.MergeIfPossible;
            textFieldState.getMainBuffer$foundation().getChangeTracker$foundation().clearChanges();
            TextFieldBuffer mainBuffer$foundation = textFieldState.getMainBuffer$foundation();
            mainBuffer$foundation.commitComposition$foundation();
            transformedTextFieldState.updateWedgeAffinity(mainBuffer$foundation);
            textFieldState.commitEditAsUser(inputTransformation, true, textFieldEditUndoBehavior);
            textFieldState.setUserCommit(true);
            textFieldDecoratorModifierNode.textFieldState.collapseSelectionToMax();
        }
        textFieldDecoratorModifierNode.updateWindowFocus();
        return j59.a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final boolean getAutofillHighlightOn() {
        return ((Boolean) this.autofillHighlightOn$delegate.getValue()).booleanValue();
    }

    private final boolean isFocused() {
        WindowInfo windowInfo;
        return this.focusableNode.getFocusState().isFocused() && (windowInfo = this.windowInfo) != null && windowInfo.isWindowFocused();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object observeUntransformedTextChanges(e02<? super j59> e02Var) {
        Object objCollect = new ne3(km1.a(SnapshotStateKt.snapshotFlow(new o31(this, 1)), 1)).collect(new id3() { // from class: androidx.compose.foundation.text.input.internal.TextFieldDecoratorModifierNode.observeUntransformedTextChanges.3
            public final Object emit(String str, e02<? super j59> e02Var2) {
                TextFieldDecoratorModifierNode.this.setAutofillHighlightOn(false);
                return j59.a;
            }

            @Override // defpackage.id3
            public /* bridge */ /* synthetic */ Object emit(Object obj, e02 e02Var2) {
                return emit((String) obj, (e02<? super j59>) e02Var2);
            }
        }, e02Var);
        return objCollect == a32.COROUTINE_SUSPENDED ? objCollect : j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String observeUntransformedTextChanges$lambda$0(TextFieldDecoratorModifierNode textFieldDecoratorModifierNode) {
        return textFieldDecoratorModifierNode.textFieldState.getUntransformedText().toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onImeActionPerformed-KlQnJC8, reason: not valid java name */
    public final boolean m2805onImeActionPerformedKlQnJC8(final int i) {
        KeyboardActionHandler keyboardActionHandler;
        ImeAction.Companion companion = ImeAction.Companion;
        if (ImeAction.m8659equalsimpl0(i, companion.m8676getNoneeUduSuo()) || ImeAction.m8659equalsimpl0(i, companion.m8672getDefaulteUduSuo()) || (keyboardActionHandler = this.keyboardActionHandler) == null) {
            return m2804defaultKeyboardActionWithResultKlQnJC8(i);
        }
        keyboardActionHandler.onKeyboardAction(new ll3() { // from class: oq8
            @Override // defpackage.ll3
            public final Object invoke() {
                return TextFieldDecoratorModifierNode.onImeActionPerformed_KlQnJC8$lambda$0(this.b, i);
            }
        });
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 onImeActionPerformed_KlQnJC8$lambda$0(TextFieldDecoratorModifierNode textFieldDecoratorModifierNode, int i) {
        textFieldDecoratorModifierNode.keyboardActionScope.mo2543defaultKeyboardActionKlQnJC8(i);
        return j59.a;
    }

    private final void onIsFocusedUpdated() {
        this.textFieldSelectionState.setFocused(isFocused());
        if (isFocused() && this.toolbarAndHandlesVisibilityObserverJob == null) {
            this.toolbarAndHandlesVisibilityObserverJob = av0.c(getCoroutineScope(), null, null, new AnonymousClass1(null), 3);
        } else {
            if (isFocused()) {
                return;
            }
            mb4 mb4Var = this.toolbarAndHandlesVisibilityObserverJob;
            if (mb4Var != null) {
                mb4Var.cancel(null);
            }
            this.toolbarAndHandlesVisibilityObserverJob = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean onKeyEvent_ZmokQxo$lambda$0(TextFieldDecoratorModifierNode textFieldDecoratorModifierNode) {
        return textFieldDecoratorModifierNode.m2805onImeActionPerformedKlQnJC8(textFieldDecoratorModifierNode.keyboardOptions.m2557getImeActionOrDefaulteUduSuo$foundation());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void requestFocus() {
        if (this.focusableNode.isAttached()) {
            this.focusableNode.requestFocus();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final SoftwareKeyboardController requireKeyboardController() {
        SoftwareKeyboardController softwareKeyboardController = (SoftwareKeyboardController) CompositionLocalConsumerModifierNodeKt.currentValueOf(this, CompositionLocalsKt.getLocalSoftwareKeyboardController());
        if (softwareKeyboardController != null) {
            return softwareKeyboardController;
        }
        ah.f("No software keyboard controller");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setAutofillHighlightOn(boolean z) {
        this.autofillHighlightOn$delegate.setValue(Boolean.valueOf(z));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void startInputSession(boolean z) {
        if (z || this.keyboardOptions.getShowKeyboardOnFocusOrDefault$foundation()) {
            this.inputSessionJob = av0.c(getCoroutineScope(), null, null, new C05591(ReceiveContentConfigurationKt.getReceiveContentConfiguration(this), null), 3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 updateNode$lambda$0(TextFieldDecoratorModifierNode textFieldDecoratorModifierNode) {
        DelegatableNodeKt.requestAutofill(textFieldDecoratorModifierNode);
        return j59.a;
    }

    private final void updateWindowFocus() {
        ObserverModifierNodeKt.observeReads(this, new wq7(this, 1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 updateWindowFocus$lambda$0(TextFieldDecoratorModifierNode textFieldDecoratorModifierNode) {
        textFieldDecoratorModifierNode.windowInfo = (WindowInfo) CompositionLocalConsumerModifierNodeKt.currentValueOf(textFieldDecoratorModifierNode, CompositionLocalsKt.getLocalWindowInfo());
        textFieldDecoratorModifierNode.onIsFocusedUpdated();
        return j59.a;
    }

    @Override // androidx.compose.ui.focus.FocusPropertiesModifierNode
    public void applyFocusProperties(FocusProperties focusProperties) {
        focusProperties.setFocusRect(this.textFieldSelectionState.getFocusRect());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public void applySemantics(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        TextFieldCharSequence outputText = this.textFieldState.getOutputText();
        long jM2665getSelectiond9O1mEE = outputText.m2665getSelectiond9O1mEE();
        int i = 2;
        SemanticsPropertiesKt.setInputText(semanticsPropertyReceiver, new AnnotatedString(this.textFieldState.getUntransformedText().toString(), null, i, 0 == true ? 1 : 0));
        SemanticsPropertiesKt.setEditableText(semanticsPropertyReceiver, new AnnotatedString(outputText.toString(), 0 == true ? 1 : 0, i, 0 == true ? 1 : 0));
        SemanticsPropertiesKt.m8282setTextSelectionRangeFDrldGo(semanticsPropertyReceiver, jM2665getSelectiond9O1mEE);
        SemanticsPropertiesKt.m8281setTextCompositionRangepsREZIo(semanticsPropertyReceiver, this.textFieldState.m2831getUntransformedCompositionMzsxiRA());
        SemanticsPropertiesKt.setInputTextSuggestionState(semanticsPropertyReceiver, new InputTextSuggestionState(this.textFieldState.getUserCommit()));
        if (!this.enabled) {
            SemanticsPropertiesKt.disabled(semanticsPropertyReceiver);
        }
        if (this.isPassword) {
            SemanticsPropertiesKt.password(semanticsPropertyReceiver);
        }
        int i2 = 1;
        final boolean z = this.enabled && !this.readOnly;
        SemanticsPropertiesKt.setEditable(semanticsPropertyReceiver, z);
        SemanticsPropertiesKt.setContentDataType(semanticsPropertyReceiver, ContentDataType.Companion.getText());
        FillableData fillableDataCreateFromText = FillableData_androidKt.createFromText(FillableData.Companion, outputText);
        if (fillableDataCreateFromText != null) {
            SemanticsPropertiesKt.setFillableData(semanticsPropertyReceiver, fillableDataCreateFromText);
        }
        SemanticsPropertiesKt.onFillData$default(semanticsPropertyReceiver, null, new nl3(this) { // from class: nq8
            public final /* synthetic */ TextFieldDecoratorModifierNode c;

            {
                this.c = this;
            }

            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return Boolean.valueOf(TextFieldDecoratorModifierNode.applySemantics$lambda$1(z, this.c, (FillableData) obj));
            }
        }, 1, null);
        int iM2558getKeyboardTypePjHm6EE = this.keyboardOptions.m2558getKeyboardTypePjHm6EE();
        KeyboardType.Companion companion = KeyboardType.Companion;
        if (KeyboardType.m8712equalsimpl0(iM2558getKeyboardTypePjHm6EE, companion.m8728getEmailPjHm6EE())) {
            SemanticsPropertiesKt.setContentType(semanticsPropertyReceiver, ContentType.Companion.getEmailAddress());
        } else if (KeyboardType.m8712equalsimpl0(iM2558getKeyboardTypePjHm6EE, companion.m8731getPasswordPjHm6EE()) || KeyboardType.m8712equalsimpl0(iM2558getKeyboardTypePjHm6EE, companion.m8730getNumberPasswordPjHm6EE())) {
            SemanticsPropertiesKt.setContentType(semanticsPropertyReceiver, ContentType.Companion.getPassword());
        } else if (KeyboardType.m8712equalsimpl0(iM2558getKeyboardTypePjHm6EE, companion.m8732getPhonePjHm6EE())) {
            SemanticsPropertiesKt.setContentType(semanticsPropertyReceiver, ContentType.Companion.getPhoneNumber());
        }
        SemanticsPropertiesKt.getTextLayoutResult$default(semanticsPropertyReceiver, null, new h1(this, i2), 1, null);
        if (z) {
            SemanticsPropertiesKt.setText$default(semanticsPropertyReceiver, null, new nl3(this) { // from class: pq8
                public final /* synthetic */ TextFieldDecoratorModifierNode c;

                {
                    this.c = this;
                }

                @Override // defpackage.nl3
                public final Object invoke(Object obj) {
                    return Boolean.valueOf(TextFieldDecoratorModifierNode.applySemantics$lambda$3(z, this.c, (AnnotatedString) obj));
                }
            }, 1, null);
            SemanticsPropertiesKt.insertTextAtCursor$default(semanticsPropertyReceiver, null, new nl3(this) { // from class: qq8
                public final /* synthetic */ TextFieldDecoratorModifierNode c;

                {
                    this.c = this;
                }

                @Override // defpackage.nl3
                public final Object invoke(Object obj) {
                    return Boolean.valueOf(TextFieldDecoratorModifierNode.applySemantics$lambda$4(z, this.c, (AnnotatedString) obj));
                }
            }, 1, null);
        }
        SemanticsPropertiesKt.setSelection$default(semanticsPropertyReceiver, null, new yd5(this, i2), 1, null);
        int iM2557getImeActionOrDefaulteUduSuo$foundation = this.keyboardOptions.m2557getImeActionOrDefaulteUduSuo$foundation();
        SemanticsPropertiesKt.m8277onImeAction9UiTYpY$default(semanticsPropertyReceiver, iM2557getImeActionOrDefaulteUduSuo$foundation, null, new jw4(this, iM2557getImeActionOrDefaulteUduSuo$foundation, i2), 2, null);
        SemanticsPropertiesKt.onClick$default(semanticsPropertyReceiver, null, new df(this, i), 1, null);
        int i3 = 4;
        SemanticsPropertiesKt.onLongClick$default(semanticsPropertyReceiver, null, new ef(this, i3), 1, null);
        if (!TextRange.m8485getCollapsedimpl(jM2665getSelectiond9O1mEE) && !this.isPassword) {
            SemanticsPropertiesKt.copyText$default(semanticsPropertyReceiver, null, new p31(this, 3), 1, null);
            if (this.enabled && !this.readOnly) {
                SemanticsPropertiesKt.cutText$default(semanticsPropertyReceiver, null, new or2(this, i3), 1, null);
            }
        }
        if (z) {
            SemanticsPropertiesKt.pasteText$default(semanticsPropertyReceiver, null, new eh4(this, i3), 1, null);
        }
        InputTransformation inputTransformation = this.filter;
        if (inputTransformation != null) {
            inputTransformation.applySemantics(semanticsPropertyReceiver);
        }
        if (this.enabled) {
            this.focusableNode.applySemantics(semanticsPropertyReceiver);
        }
    }

    @Override // androidx.compose.ui.node.DrawModifierNode
    public void draw(ContentDrawScope contentDrawScope) {
        contentDrawScope.drawContent();
        if (getAutofillHighlightOn()) {
            DrawScope.m6799drawRectAsUm42w$default(contentDrawScope, AutofillHighlightKt.m2447resolveAutofillHighlightWkMShQ((Brush) CompositionLocalConsumerModifierNodeKt.currentValueOf(this, AutofillHighlightKt.getLocalAutofillHighlightBrush()), ((Color) CompositionLocalConsumerModifierNodeKt.currentValueOf(this, AutofillHighlightKt.getLocalAutofillHighlightColor())).m6242unboximpl(), AutofillHighlight_androidKt.autofillHighlightColor()), 0L, 0L, 0.0f, null, null, 0, 126, null);
        }
    }

    public final boolean getEnabled() {
        return this.enabled;
    }

    public final InputTransformation getFilter() {
        return this.filter;
    }

    public final MutableInteractionSource getInteractionSource() {
        return this.interactionSource;
    }

    public final KeyboardActionHandler getKeyboardActionHandler() {
        return this.keyboardActionHandler;
    }

    public final KeyboardOptions getKeyboardOptions() {
        return this.keyboardOptions;
    }

    public final boolean getReadOnly() {
        return this.readOnly;
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public boolean getShouldMergeDescendantSemantics() {
        return true;
    }

    public final boolean getSingleLine() {
        return this.singleLine;
    }

    public final vg5<j59> getStylusHandwritingTrigger() {
        return this.stylusHandwritingTrigger;
    }

    public final TextFieldSelectionState getTextFieldSelectionState() {
        return this.textFieldSelectionState;
    }

    public final TransformedTextFieldState getTextFieldState() {
        return this.textFieldState;
    }

    public final TextLayoutState getTextLayoutState() {
        return this.textLayoutState;
    }

    public final boolean isPassword() {
        return this.isPassword;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void onAttach() {
        onObservedReadsChanged();
        this.textFieldSelectionState.setReceiveContentConfiguration(this.receiveContentConfigurationProvider);
        if (this.enabled) {
            delegate(this.focusableNode);
        }
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    public void onCancelPointerInput() {
        this.pointerInputNode.onCancelPointerInput();
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void onDetach() {
        disposeInputSession();
        this.textFieldSelectionState.setReceiveContentConfiguration(null);
    }

    @Override // androidx.compose.ui.node.GlobalPositionAwareModifierNode
    public void onGloballyPositioned(LayoutCoordinates layoutCoordinates) {
        this.textLayoutState.setDecoratorNodeCoordinates(layoutCoordinates);
        if (this.enabled) {
            this.focusableNode.onGloballyPositioned(layoutCoordinates);
        }
    }

    @Override // androidx.compose.ui.input.key.KeyInputModifierNode
    /* JADX INFO: renamed from: onKeyEvent-ZmokQxo */
    public boolean mo1258onKeyEventZmokQxo(KeyEvent keyEvent) {
        return this.textFieldKeyEventHandler.mo2691onKeyEvent8zsqlwg(keyEvent, this.textFieldState, this.textLayoutState, this.textFieldSelectionState, this.clipboardKeyCommandsHandler, requireKeyboardController(), this.enabled && !this.readOnly, this.singleLine, new aw4(this, 5));
    }

    @Override // androidx.compose.ui.node.ObserverModifierNode
    public void onObservedReadsChanged() {
        updateWindowFocus();
    }

    @Override // androidx.compose.ui.node.LayoutAwareModifierNode
    public void onPlaced(LayoutCoordinates layoutCoordinates) {
        this.dragAndDropNode.onPlaced(layoutCoordinates);
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    /* JADX INFO: renamed from: onPointerEvent-H0pRuoY */
    public void mo1259onPointerEventH0pRuoY(PointerEvent pointerEvent, PointerEventPass pointerEventPass, long j) {
        this.pointerInputNode.mo1259onPointerEventH0pRuoY(pointerEvent, pointerEventPass, j);
    }

    @Override // androidx.compose.ui.input.key.KeyInputModifierNode
    /* JADX INFO: renamed from: onPreKeyEvent-ZmokQxo */
    public boolean mo1260onPreKeyEventZmokQxo(KeyEvent keyEvent) {
        return this.textFieldKeyEventHandler.m2808onPreKeyEventMyFupTE(keyEvent, this.textFieldState, this.textFieldSelectionState, (FocusManager) CompositionLocalConsumerModifierNodeKt.currentValueOf(this, CompositionLocalsKt.getLocalFocusManager()), requireKeyboardController());
    }

    @Override // androidx.compose.ui.node.LayoutAwareModifierNode, androidx.compose.ui.node.MeasuredSizeAwareModifierNode
    /* JADX INFO: renamed from: onRemeasured-ozmzZPI */
    public void mo1423onRemeasuredozmzZPI(long j) {
        this.dragAndDropNode.mo1423onRemeasuredozmzZPI(j);
    }

    public final void setEnabled(boolean z) {
        this.enabled = z;
    }

    public final void setFilter(InputTransformation inputTransformation) {
        this.filter = inputTransformation;
    }

    public final void setInteractionSource(MutableInteractionSource mutableInteractionSource) {
        this.interactionSource = mutableInteractionSource;
    }

    public final void setKeyboardActionHandler(KeyboardActionHandler keyboardActionHandler) {
        this.keyboardActionHandler = keyboardActionHandler;
    }

    public final void setKeyboardOptions(KeyboardOptions keyboardOptions) {
        this.keyboardOptions = keyboardOptions;
    }

    public final void setPassword(boolean z) {
        this.isPassword = z;
    }

    public final void setReadOnly(boolean z) {
        this.readOnly = z;
    }

    public final void setSingleLine(boolean z) {
        this.singleLine = z;
    }

    public final void setStylusHandwritingTrigger(vg5<j59> vg5Var) {
        this.stylusHandwritingTrigger = vg5Var;
    }

    public final void setTextFieldSelectionState(TextFieldSelectionState textFieldSelectionState) {
        this.textFieldSelectionState = textFieldSelectionState;
    }

    public final void setTextFieldState(TransformedTextFieldState transformedTextFieldState) {
        this.textFieldState = transformedTextFieldState;
    }

    public final void setTextLayoutState(TextLayoutState textLayoutState) {
        this.textLayoutState = textLayoutState;
    }

    public final void updateNode(TransformedTextFieldState transformedTextFieldState, TextLayoutState textLayoutState, TextFieldSelectionState textFieldSelectionState, InputTransformation inputTransformation, boolean z, boolean z2, KeyboardOptions keyboardOptions, KeyboardActionHandler keyboardActionHandler, boolean z3, MutableInteractionSource mutableInteractionSource, boolean z4, vg5<j59> vg5Var) {
        mb4 mb4Var;
        boolean z5 = this.enabled;
        boolean z6 = z5 && !this.readOnly;
        TransformedTextFieldState transformedTextFieldState2 = this.textFieldState;
        KeyboardOptions keyboardOptions2 = this.keyboardOptions;
        TextFieldSelectionState textFieldSelectionState2 = this.textFieldSelectionState;
        MutableInteractionSource mutableInteractionSource2 = this.interactionSource;
        boolean z7 = this.isPassword;
        vg5<j59> vg5Var2 = this.stylusHandwritingTrigger;
        boolean z8 = z && !z2;
        this.textFieldState = transformedTextFieldState;
        this.textLayoutState = textLayoutState;
        this.textFieldSelectionState = textFieldSelectionState;
        this.filter = inputTransformation;
        this.enabled = z;
        this.readOnly = z2;
        this.keyboardOptions = keyboardOptions;
        this.keyboardActionHandler = keyboardActionHandler;
        this.singleLine = z3;
        this.interactionSource = mutableInteractionSource;
        this.isPassword = z4;
        this.stylusHandwritingTrigger = vg5Var;
        if (z8 != z6 || !aa4.e(transformedTextFieldState, transformedTextFieldState2) || !aa4.e(keyboardOptions, keyboardOptions2) || !aa4.e(vg5Var, vg5Var2)) {
            if (z8 && (isFocused() || this.inputSessionJob != null)) {
                startInputSession(false);
            } else if (!z8) {
                disposeInputSession();
            }
        }
        if (z != z5 || z8 != z6 || !ImeAction.m8659equalsimpl0(keyboardOptions.m2557getImeActionOrDefaulteUduSuo$foundation(), keyboardOptions2.m2557getImeActionOrDefaulteUduSuo$foundation()) || z4 != z7) {
            SemanticsModifierNodeKt.invalidateSemantics(this);
        }
        if (!aa4.e(textFieldSelectionState, textFieldSelectionState2)) {
            this.pointerInputNode.resetPointerInputHandler();
            if (isAttached()) {
                textFieldSelectionState.setReceiveContentConfiguration(this.receiveContentConfigurationProvider);
                if (isFocused() && (mb4Var = this.toolbarAndHandlesVisibilityObserverJob) != null) {
                    mb4Var.cancel(null);
                    this.toolbarAndHandlesVisibilityObserverJob = av0.c(getCoroutineScope(), null, null, new C05601(textFieldSelectionState, null), 3);
                }
            }
            textFieldSelectionState.setRequestAutofillAction(new s92(this, 2));
        }
        if (!aa4.e(mutableInteractionSource, mutableInteractionSource2)) {
            this.pointerInputNode.resetPointerInputHandler();
            if (this.focusableNode.isAttached()) {
                this.focusableNode.update(mutableInteractionSource);
            }
        }
        if (z != z5) {
            FocusableNode focusableNode = this.focusableNode;
            if (!z) {
                undelegate(focusableNode);
            } else {
                delegate(focusableNode);
                this.focusableNode.update(mutableInteractionSource);
            }
        }
    }
}
