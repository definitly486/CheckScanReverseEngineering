.class public final Landroidx/compose/foundation/layout/FlowRowScopeInstance;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/layout/RowScope;
.implements Landroidx/compose/foundation/layout/FlowRowScope;


# static fields
.field public static final $stable:I

.field public static final INSTANCE:Landroidx/compose/foundation/layout/FlowRowScopeInstance;


# instance fields
.field private final synthetic $$delegate_0:Landroidx/compose/foundation/layout/RowScopeInstance;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/foundation/layout/FlowRowScopeInstance;

    invoke-direct {v0}, Landroidx/compose/foundation/layout/FlowRowScopeInstance;-><init>()V

    sput-object v0, Landroidx/compose/foundation/layout/FlowRowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/FlowRowScopeInstance;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    iput-object v0, p0, Landroidx/compose/foundation/layout/FlowRowScopeInstance;->$$delegate_0:Landroidx/compose/foundation/layout/RowScopeInstance;

    return-void
.end method


# virtual methods
.method public align(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment$Vertical;)Landroidx/compose/ui/Modifier;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/layout/FlowRowScopeInstance;->$$delegate_0:Landroidx/compose/foundation/layout/RowScopeInstance;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/layout/RowScopeInstance;->align(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment$Vertical;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public alignBy(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/layout/HorizontalAlignmentLine;)Landroidx/compose/ui/Modifier;
    .locals 0

    .line 7
    iget-object p0, p0, Landroidx/compose/foundation/layout/FlowRowScopeInstance;->$$delegate_0:Landroidx/compose/foundation/layout/RowScopeInstance;

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

    iget-object p0, p0, Landroidx/compose/foundation/layout/FlowRowScopeInstance;->$$delegate_0:Landroidx/compose/foundation/layout/RowScopeInstance;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/layout/RowScopeInstance;->alignBy(Landroidx/compose/ui/Modifier;Lnl3;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public alignByBaseline(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/layout/FlowRowScopeInstance;->$$delegate_0:Landroidx/compose/foundation/layout/RowScopeInstance;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/layout/RowScopeInstance;->alignByBaseline(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public fillMaxRowHeight(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;
    .locals 1

    const/4 p0, 0x0

    cmpl-float p0, p2, p0

    if-ltz p0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    cmpg-float p0, p2, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

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

.method public weight(Landroidx/compose/ui/Modifier;FZ)Landroidx/compose/ui/Modifier;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/layout/FlowRowScopeInstance;->$$delegate_0:Landroidx/compose/foundation/layout/RowScopeInstance;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/foundation/layout/RowScopeInstance;->weight(Landroidx/compose/ui/Modifier;FZ)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method
