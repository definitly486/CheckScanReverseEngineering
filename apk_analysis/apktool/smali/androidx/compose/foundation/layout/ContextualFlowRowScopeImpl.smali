.class public final Landroidx/compose/foundation/layout/ContextualFlowRowScopeImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/layout/RowScope;
.implements Landroidx/compose/foundation/layout/ContextualFlowRowScope;


# static fields
.field public static final $stable:I


# instance fields
.field private final synthetic $$delegate_0:Landroidx/compose/foundation/layout/RowScopeInstance;

.field private final indexInLine:I

.field private final lineIndex:I

.field private final maxHeight:F

.field private final maxWidthInLine:F


# direct methods
.method private constructor <init>(IIFF)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    iput-object v0, p0, Landroidx/compose/foundation/layout/ContextualFlowRowScopeImpl;->$$delegate_0:Landroidx/compose/foundation/layout/RowScopeInstance;

    iput p1, p0, Landroidx/compose/foundation/layout/ContextualFlowRowScopeImpl;->lineIndex:I

    iput p2, p0, Landroidx/compose/foundation/layout/ContextualFlowRowScopeImpl;->indexInLine:I

    iput p3, p0, Landroidx/compose/foundation/layout/ContextualFlowRowScopeImpl;->maxWidthInLine:F

    iput p4, p0, Landroidx/compose/foundation/layout/ContextualFlowRowScopeImpl;->maxHeight:F

    return-void
.end method

.method public synthetic constructor <init>(IIFFLjh2;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/layout/ContextualFlowRowScopeImpl;-><init>(IIFF)V

    return-void
.end method


# virtual methods
.method public align(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment$Vertical;)Landroidx/compose/ui/Modifier;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/layout/ContextualFlowRowScopeImpl;->$$delegate_0:Landroidx/compose/foundation/layout/RowScopeInstance;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/layout/RowScopeInstance;->align(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment$Vertical;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public alignBy(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/layout/HorizontalAlignmentLine;)Landroidx/compose/ui/Modifier;
    .locals 0

    .line 7
    iget-object p0, p0, Landroidx/compose/foundation/layout/ContextualFlowRowScopeImpl;->$$delegate_0:Landroidx/compose/foundation/layout/RowScopeInstance;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/layout/RowScopeInstance;->alignBy(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/layout/HorizontalAlignmentLine;)Landroidx/compose/ui/Modifier;

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

    iget-object p0, p0, Landroidx/compose/foundation/layout/ContextualFlowRowScopeImpl;->$$delegate_0:Landroidx/compose/foundation/layout/RowScopeInstance;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/layout/RowScopeInstance;->alignBy(Landroidx/compose/ui/Modifier;Lnl3;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public alignByBaseline(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/layout/ContextualFlowRowScopeImpl;->$$delegate_0:Landroidx/compose/foundation/layout/RowScopeInstance;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/layout/RowScopeInstance;->alignByBaseline(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public fillMaxRowHeight(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;
    .locals 1

    const/4 p0, 0x0

    cmpg-float p0, p0, p2

    const/4 v0, 0x0

    if-gtz p0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    cmpg-float p0, p2, p0

    if-gtz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "invalid fraction "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "; must be >= 0 and <= 1.0"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/foundation/layout/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :cond_1
    new-instance p0, Landroidx/compose/foundation/layout/FillCrossAxisSizeElement;

    invoke-direct {p0, p2}, Landroidx/compose/foundation/layout/FillCrossAxisSizeElement;-><init>(F)V

    invoke-interface {p1, p0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public getIndexInLine()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/ContextualFlowRowScopeImpl;->indexInLine:I

    return p0
.end method

.method public getLineIndex()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/ContextualFlowRowScopeImpl;->lineIndex:I

    return p0
.end method

.method public getMaxHeight-D9Ej5fM()F
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/ContextualFlowRowScopeImpl;->maxHeight:F

    return p0
.end method

.method public getMaxWidthInLine-D9Ej5fM()F
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/ContextualFlowRowScopeImpl;->maxWidthInLine:F

    return p0
.end method

.method public weight(Landroidx/compose/ui/Modifier;FZ)Landroidx/compose/ui/Modifier;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/layout/ContextualFlowRowScopeImpl;->$$delegate_0:Landroidx/compose/foundation/layout/RowScopeInstance;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/foundation/layout/RowScopeInstance;->weight(Landroidx/compose/ui/Modifier;FZ)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method
