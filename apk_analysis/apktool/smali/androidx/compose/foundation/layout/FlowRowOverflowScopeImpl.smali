.class public final Landroidx/compose/foundation/layout/FlowRowOverflowScopeImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/layout/FlowRowScope;
.implements Landroidx/compose/foundation/layout/FlowRowOverflowScope;


# static fields
.field public static final $stable:I


# instance fields
.field private final synthetic $$delegate_0:Landroidx/compose/foundation/layout/FlowRowScopeInstance;

.field private final shownItemCount$delegate:Lcl4;

.field private final state:Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

.field private final totalItemCount$delegate:Lcl4;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/layout/FlowLayoutOverflowState;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroidx/compose/foundation/layout/FlowRowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/FlowRowScopeInstance;

    iput-object v0, p0, Landroidx/compose/foundation/layout/FlowRowOverflowScopeImpl;->$$delegate_0:Landroidx/compose/foundation/layout/FlowRowScopeInstance;

    iput-object p1, p0, Landroidx/compose/foundation/layout/FlowRowOverflowScopeImpl;->state:Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

    new-instance v0, Lag3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lag3;-><init>(Ljava/lang/Object;I)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2, v0, v1, v2}, Landroidx/compose/foundation/layout/FlowLayoutOverflowKt;->lazyInt$default(Ljava/lang/String;Lll3;ILjava/lang/Object;)Lcl4;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/layout/FlowRowOverflowScopeImpl;->totalItemCount$delegate:Lcl4;

    invoke-virtual {p1}, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;->getShownItemLazyErrorMessage$foundation_layout()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lbg3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lbg3;-><init>(Ljava/lang/Object;I)V

    invoke-static {p1, v0}, Landroidx/compose/foundation/layout/FlowLayoutOverflowKt;->lazyInt(Ljava/lang/String;Lll3;)Lcl4;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/layout/FlowRowOverflowScopeImpl;->shownItemCount$delegate:Lcl4;

    return-void
.end method

.method public static synthetic a(Landroidx/compose/foundation/layout/FlowRowOverflowScopeImpl;)I
    .locals 0

    invoke-static {p0}, Landroidx/compose/foundation/layout/FlowRowOverflowScopeImpl;->shownItemCount_delegate$lambda$0(Landroidx/compose/foundation/layout/FlowRowOverflowScopeImpl;)I

    move-result p0

    return p0
.end method

.method public static synthetic b(Landroidx/compose/foundation/layout/FlowRowOverflowScopeImpl;)I
    .locals 0

    invoke-static {p0}, Landroidx/compose/foundation/layout/FlowRowOverflowScopeImpl;->totalItemCount_delegate$lambda$0(Landroidx/compose/foundation/layout/FlowRowOverflowScopeImpl;)I

    move-result p0

    return p0
.end method

.method private static final shownItemCount_delegate$lambda$0(Landroidx/compose/foundation/layout/FlowRowOverflowScopeImpl;)I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/layout/FlowRowOverflowScopeImpl;->state:Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

    invoke-virtual {p0}, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;->getItemShown$foundation_layout()I

    move-result p0

    return p0
.end method

.method private static final totalItemCount_delegate$lambda$0(Landroidx/compose/foundation/layout/FlowRowOverflowScopeImpl;)I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/layout/FlowRowOverflowScopeImpl;->state:Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

    invoke-virtual {p0}, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;->getItemCount$foundation_layout()I

    move-result p0

    return p0
.end method


# virtual methods
.method public align(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment$Vertical;)Landroidx/compose/ui/Modifier;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/layout/FlowRowOverflowScopeImpl;->$$delegate_0:Landroidx/compose/foundation/layout/FlowRowScopeInstance;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/layout/FlowRowScopeInstance;->align(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment$Vertical;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public alignBy(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/layout/HorizontalAlignmentLine;)Landroidx/compose/ui/Modifier;
    .locals 0

    .line 7
    iget-object p0, p0, Landroidx/compose/foundation/layout/FlowRowOverflowScopeImpl;->$$delegate_0:Landroidx/compose/foundation/layout/FlowRowScopeInstance;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/layout/FlowRowScopeInstance;->alignBy(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/layout/HorizontalAlignmentLine;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public alignBy(Landroidx/compose/ui/Modifier;Lnl3;)Landroidx/compose/ui/Modifier;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Lnl3<",
            "-",
            "Landroidx/compose/ui/layout/Measured;",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/foundation/layout/FlowRowOverflowScopeImpl;->$$delegate_0:Landroidx/compose/foundation/layout/FlowRowScopeInstance;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/layout/FlowRowScopeInstance;->alignBy(Landroidx/compose/ui/Modifier;Lnl3;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public alignByBaseline(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/layout/FlowRowOverflowScopeImpl;->$$delegate_0:Landroidx/compose/foundation/layout/FlowRowScopeInstance;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/layout/FlowRowScopeInstance;->alignByBaseline(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public fillMaxRowHeight(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/layout/FlowRowOverflowScopeImpl;->$$delegate_0:Landroidx/compose/foundation/layout/FlowRowScopeInstance;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/layout/FlowRowScopeInstance;->fillMaxRowHeight(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public getShownItemCount()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/layout/FlowRowOverflowScopeImpl;->shownItemCount$delegate:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public getTotalItemCount()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/layout/FlowRowOverflowScopeImpl;->totalItemCount$delegate:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public weight(Landroidx/compose/ui/Modifier;FZ)Landroidx/compose/ui/Modifier;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/layout/FlowRowOverflowScopeImpl;->$$delegate_0:Landroidx/compose/foundation/layout/FlowRowScopeInstance;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/foundation/layout/FlowRowScopeInstance;->weight(Landroidx/compose/ui/Modifier;FZ)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method
