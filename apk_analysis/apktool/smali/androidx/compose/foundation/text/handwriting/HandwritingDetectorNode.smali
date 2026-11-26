.class final Landroidx/compose/foundation/text/handwriting/HandwritingDetectorNode;
.super Landroidx/compose/ui/node/DelegatingNode;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/node/PointerInputModifierNode;


# instance fields
.field private callback:Lll3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lll3<",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field private final composeImm$delegate:Lcl4;

.field private final pointerInputNode:Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode;


# direct methods
.method public constructor <init>(Lll3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lll3<",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/compose/ui/node/DelegatingNode;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/handwriting/HandwritingDetectorNode;->callback:Lll3;

    sget-object p1, Lpo4;->NONE:Lpo4;

    new-instance v0, Landroidx/compose/foundation/text/handwriting/a;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/text/handwriting/a;-><init>(Landroidx/compose/foundation/text/handwriting/HandwritingDetectorNode;)V

    invoke-static {p1, v0}, Lnm4;->a(Lpo4;Lll3;)Lcl4;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/text/handwriting/HandwritingDetectorNode;->composeImm$delegate:Lcl4;

    new-instance p1, Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode;

    new-instance v0, Landroidx/compose/foundation/text/handwriting/b;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/text/handwriting/b;-><init>(Landroidx/compose/foundation/text/handwriting/HandwritingDetectorNode;)V

    invoke-direct {p1, v0}, Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode;-><init>(Lll3;)V

    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/DelegatingNode;->delegate(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode;

    iput-object p1, p0, Landroidx/compose/foundation/text/handwriting/HandwritingDetectorNode;->pointerInputNode:Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode;

    return-void
.end method

.method public static synthetic a(Landroidx/compose/foundation/text/handwriting/HandwritingDetectorNode;)Landroidx/compose/foundation/text/input/internal/ComposeInputMethodManager;
    .locals 0

    invoke-static {p0}, Landroidx/compose/foundation/text/handwriting/HandwritingDetectorNode;->composeImm_delegate$lambda$0(Landroidx/compose/foundation/text/handwriting/HandwritingDetectorNode;)Landroidx/compose/foundation/text/input/internal/ComposeInputMethodManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Landroidx/compose/foundation/text/handwriting/HandwritingDetectorNode;)Lj59;
    .locals 0

    invoke-static {p0}, Landroidx/compose/foundation/text/handwriting/HandwritingDetectorNode;->pointerInputNode$lambda$0(Landroidx/compose/foundation/text/handwriting/HandwritingDetectorNode;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method private static final composeImm_delegate$lambda$0(Landroidx/compose/foundation/text/handwriting/HandwritingDetectorNode;)Landroidx/compose/foundation/text/input/internal/ComposeInputMethodManager;
    .locals 0

    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNode_androidKt;->requireView(Landroidx/compose/ui/node/DelegatableNode;)Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/foundation/text/input/internal/ComposeInputMethodManager_androidKt;->ComposeInputMethodManager(Landroid/view/View;)Landroidx/compose/foundation/text/input/internal/ComposeInputMethodManager;

    move-result-object p0

    return-object p0
.end method

.method private final getComposeImm()Landroidx/compose/foundation/text/input/internal/ComposeInputMethodManager;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/text/handwriting/HandwritingDetectorNode;->composeImm$delegate:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/text/input/internal/ComposeInputMethodManager;

    return-object p0
.end method

.method private static final pointerInputNode$lambda$0(Landroidx/compose/foundation/text/handwriting/HandwritingDetectorNode;)Lj59;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/text/handwriting/HandwritingDetectorNode;->callback:Lll3;

    invoke-interface {v0}, Lll3;->invoke()Ljava/lang/Object;

    invoke-direct {p0}, Landroidx/compose/foundation/text/handwriting/HandwritingDetectorNode;->getComposeImm()Landroidx/compose/foundation/text/input/internal/ComposeInputMethodManager;

    move-result-object p0

    invoke-interface {p0}, Landroidx/compose/foundation/text/input/internal/ComposeInputMethodManager;->prepareStylusHandwritingDelegation()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method


# virtual methods
.method public final getCallback()Lll3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lll3<",
            "Lj59;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/foundation/text/handwriting/HandwritingDetectorNode;->callback:Lll3;

    return-object p0
.end method

.method public final getPointerInputNode()Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/text/handwriting/HandwritingDetectorNode;->pointerInputNode:Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode;

    return-object p0
.end method

.method public getTouchBoundsExpansion-RZrCHBk()J
    .locals 2

    iget-object p0, p0, Landroidx/compose/foundation/text/handwriting/HandwritingDetectorNode;->pointerInputNode:Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode;

    invoke-virtual {p0}, Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode;->getTouchBoundsExpansion-RZrCHBk()J

    move-result-wide v0

    return-wide v0
.end method

.method public onCancelPointerInput()V
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/text/handwriting/HandwritingDetectorNode;->pointerInputNode:Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode;

    invoke-virtual {p0}, Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode;->onCancelPointerInput()V

    return-void
.end method

.method public onPointerEvent-H0pRuoY(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/text/handwriting/HandwritingDetectorNode;->pointerInputNode:Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode;->onPointerEvent-H0pRuoY(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V

    return-void
.end method

.method public final setCallback(Lll3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lll3<",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/text/handwriting/HandwritingDetectorNode;->callback:Lll3;

    return-void
.end method
