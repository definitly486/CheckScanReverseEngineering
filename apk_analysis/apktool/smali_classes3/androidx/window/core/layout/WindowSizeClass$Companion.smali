.class public final Landroidx/window/core/layout/WindowSizeClass$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/core/layout/WindowSizeClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljh2;)V
    .locals 0

    invoke-direct {p0}, Landroidx/window/core/layout/WindowSizeClass$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$createBreakpointSet(Landroidx/window/core/layout/WindowSizeClass$Companion;Ljava/util/List;Ljava/util/List;)Ljava/util/Set;
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/window/core/layout/WindowSizeClass$Companion;->createBreakpointSet(Ljava/util/List;Ljava/util/List;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method private final createBreakpointSet(Ljava/util/List;Ljava/util/List;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/Set<",
            "Landroidx/window/core/layout/WindowSizeClass;",
            ">;"
        }
    .end annotation

    check-cast p1, Ljava/lang/Iterable;

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    move-object v1, p2

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    new-instance v4, Landroidx/window/core/layout/WindowSizeClass;

    invoke-direct {v4, v0, v3}, Landroidx/window/core/layout/WindowSizeClass;-><init>(II)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-static {v2, p0}, Lnn1;->s(Ljava/lang/Iterable;Ljava/util/Collection;)V

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lqn1;->y0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final compute(FF)Landroidx/window/core/layout/WindowSizeClass;
    .locals 1
    .annotation runtime Lul2;
    .end annotation

    const/high16 p0, 0x44520000    # 840.0f

    cmpl-float p0, p1, p0

    const/4 v0, 0x0

    if-ltz p0, :cond_0

    const/16 p0, 0x348

    goto :goto_0

    :cond_0
    const/high16 p0, 0x44160000    # 600.0f

    cmpl-float p0, p1, p0

    if-ltz p0, :cond_1

    const/16 p0, 0x258

    goto :goto_0

    :cond_1
    move p0, v0

    :goto_0
    const/high16 p1, 0x44610000    # 900.0f

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_2

    const/16 v0, 0x384

    goto :goto_1

    :cond_2
    const/high16 p1, 0x43f00000    # 480.0f

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_3

    const/16 v0, 0x1e0

    :cond_3
    :goto_1
    new-instance p1, Landroidx/window/core/layout/WindowSizeClass;

    invoke-direct {p1, p0, v0}, Landroidx/window/core/layout/WindowSizeClass;-><init>(II)V

    return-object p1
.end method
