.class public final Landroidx/compose/foundation/layout/GridScopeInstance;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/layout/GridScope;


# static fields
.field public static final $stable:I

.field public static final INSTANCE:Landroidx/compose/foundation/layout/GridScopeInstance;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/foundation/layout/GridScopeInstance;

    invoke-direct {v0}, Landroidx/compose/foundation/layout/GridScopeInstance;-><init>()V

    sput-object v0, Landroidx/compose/foundation/layout/GridScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/GridScopeInstance;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public gridItem(Landroidx/compose/ui/Modifier;IIIILandroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;
    .locals 6

    const/16 p0, 0x3e9

    const/16 v0, -0x3e8

    if-eqz p2, :cond_1

    if-gt v0, p2, :cond_0

    if-ge p2, p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "row must be between -1000 and 1000"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    :goto_0
    if-eqz p3, :cond_3

    if-gt v0, p3, :cond_2

    if-ge p3, p0, :cond_2

    goto :goto_1

    :cond_2
    const-string p0, "column must be between -1000 and 1000"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_3
    :goto_1
    if-lez p4, :cond_5

    if-lez p5, :cond_4

    new-instance v0, Landroidx/compose/foundation/layout/GridItemElement;

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/layout/GridItemElement;-><init>(IIIILandroidx/compose/ui/Alignment;)V

    invoke-interface {p1, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0

    :cond_4
    const-string p0, "columnSpan must be > 0"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_5
    const-string p0, "rowSpan must be > 0"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public gridItem(Landroidx/compose/ui/Modifier;Ly74;Ly74;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;
    .locals 10

    .line 65
    invoke-virtual {p2}, Ly74;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, ") cannot be empty"

    if-nez v0, :cond_1

    .line 66
    invoke-virtual {p3}, Ly74;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    iget v5, p2, Lw74;->b:I

    .line 68
    iget p2, p2, Lw74;->c:I

    sub-int/2addr p2, v5

    add-int/lit8 v7, p2, 0x1

    .line 69
    iget v6, p3, Lw74;->b:I

    .line 70
    iget p2, p3, Lw74;->c:I

    sub-int/2addr p2, v6

    add-int/lit8 v8, p2, 0x1

    move-object v3, p0

    move-object v4, p1

    move-object v9, p4

    .line 71
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/foundation/layout/GridScopeInstance;->gridItem(Landroidx/compose/ui/Modifier;IIIILandroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0

    .line 72
    :cond_0
    const-string p0, "Column range ("

    invoke-static {p3, p0, v2}, Lh8;->f(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v1

    .line 73
    :cond_1
    const-string p0, "Row range ("

    invoke-static {p2, p0, v2}, Lh8;->f(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v1
.end method
