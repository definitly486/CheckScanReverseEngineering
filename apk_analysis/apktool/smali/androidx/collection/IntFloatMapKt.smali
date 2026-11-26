.class public final Landroidx/collection/IntFloatMapKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final EmptyIntFloatMap:Landroidx/collection/MutableIntFloatMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/collection/MutableIntFloatMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/collection/MutableIntFloatMap;-><init>(I)V

    sput-object v0, Landroidx/collection/IntFloatMapKt;->EmptyIntFloatMap:Landroidx/collection/MutableIntFloatMap;

    return-void
.end method

.method public static final buildIntFloatMap(ILnl3;)Landroidx/collection/IntFloatMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lnl3<",
            "-",
            "Landroidx/collection/MutableIntFloatMap;",
            "Lj59;",
            ">;)",
            "Landroidx/collection/IntFloatMap;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    new-instance v0, Landroidx/collection/MutableIntFloatMap;

    invoke-direct {v0, p0}, Landroidx/collection/MutableIntFloatMap;-><init>(I)V

    invoke-interface {p1, v0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static final buildIntFloatMap(Lnl3;)Landroidx/collection/IntFloatMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Landroidx/collection/MutableIntFloatMap;",
            "Lj59;",
            ">;)",
            "Landroidx/collection/IntFloatMap;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/collection/MutableIntFloatMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableIntFloatMap;-><init>(IILjh2;)V

    invoke-interface {p0, v0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static final emptyIntFloatMap()Landroidx/collection/IntFloatMap;
    .locals 1

    sget-object v0, Landroidx/collection/IntFloatMapKt;->EmptyIntFloatMap:Landroidx/collection/MutableIntFloatMap;

    return-object v0
.end method

.method public static final intFloatMapOf()Landroidx/collection/IntFloatMap;
    .locals 1

    .line 37
    sget-object v0, Landroidx/collection/IntFloatMapKt;->EmptyIntFloatMap:Landroidx/collection/MutableIntFloatMap;

    return-object v0
.end method

.method public static final intFloatMapOf(IF)Landroidx/collection/IntFloatMap;
    .locals 4

    .line 24
    new-instance v0, Landroidx/collection/MutableIntFloatMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableIntFloatMap;-><init>(IILjh2;)V

    invoke-virtual {v0, p0, p1}, Landroidx/collection/MutableIntFloatMap;->set(IF)V

    return-object v0
.end method

.method public static final intFloatMapOf(IFIF)Landroidx/collection/IntFloatMap;
    .locals 4

    .line 25
    new-instance v0, Landroidx/collection/MutableIntFloatMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableIntFloatMap;-><init>(IILjh2;)V

    .line 26
    invoke-virtual {v0, p0, p1}, Landroidx/collection/MutableIntFloatMap;->set(IF)V

    .line 27
    invoke-virtual {v0, p2, p3}, Landroidx/collection/MutableIntFloatMap;->set(IF)V

    return-object v0
.end method

.method public static final intFloatMapOf(IFIFIF)Landroidx/collection/IntFloatMap;
    .locals 4

    .line 28
    new-instance v0, Landroidx/collection/MutableIntFloatMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableIntFloatMap;-><init>(IILjh2;)V

    .line 29
    invoke-virtual {v0, p0, p1}, Landroidx/collection/MutableIntFloatMap;->set(IF)V

    .line 30
    invoke-virtual {v0, p2, p3}, Landroidx/collection/MutableIntFloatMap;->set(IF)V

    .line 31
    invoke-virtual {v0, p4, p5}, Landroidx/collection/MutableIntFloatMap;->set(IF)V

    return-object v0
.end method

.method public static final intFloatMapOf(IFIFIFIF)Landroidx/collection/IntFloatMap;
    .locals 4

    .line 32
    new-instance v0, Landroidx/collection/MutableIntFloatMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableIntFloatMap;-><init>(IILjh2;)V

    .line 33
    invoke-virtual {v0, p0, p1}, Landroidx/collection/MutableIntFloatMap;->set(IF)V

    .line 34
    invoke-virtual {v0, p2, p3}, Landroidx/collection/MutableIntFloatMap;->set(IF)V

    .line 35
    invoke-virtual {v0, p4, p5}, Landroidx/collection/MutableIntFloatMap;->set(IF)V

    .line 36
    invoke-virtual {v0, p6, p7}, Landroidx/collection/MutableIntFloatMap;->set(IF)V

    return-object v0
.end method

.method public static final intFloatMapOf(IFIFIFIFIF)Landroidx/collection/IntFloatMap;
    .locals 4

    new-instance v0, Landroidx/collection/MutableIntFloatMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableIntFloatMap;-><init>(IILjh2;)V

    invoke-virtual {v0, p0, p1}, Landroidx/collection/MutableIntFloatMap;->set(IF)V

    invoke-virtual {v0, p2, p3}, Landroidx/collection/MutableIntFloatMap;->set(IF)V

    invoke-virtual {v0, p4, p5}, Landroidx/collection/MutableIntFloatMap;->set(IF)V

    invoke-virtual {v0, p6, p7}, Landroidx/collection/MutableIntFloatMap;->set(IF)V

    invoke-virtual {v0, p8, p9}, Landroidx/collection/MutableIntFloatMap;->set(IF)V

    return-object v0
.end method

.method public static final mutableIntFloatMapOf()Landroidx/collection/MutableIntFloatMap;
    .locals 4

    .line 37
    new-instance v0, Landroidx/collection/MutableIntFloatMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableIntFloatMap;-><init>(IILjh2;)V

    return-object v0
.end method

.method public static final mutableIntFloatMapOf(IF)Landroidx/collection/MutableIntFloatMap;
    .locals 4

    .line 24
    new-instance v0, Landroidx/collection/MutableIntFloatMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableIntFloatMap;-><init>(IILjh2;)V

    invoke-virtual {v0, p0, p1}, Landroidx/collection/MutableIntFloatMap;->set(IF)V

    return-object v0
.end method

.method public static final mutableIntFloatMapOf(IFIF)Landroidx/collection/MutableIntFloatMap;
    .locals 4

    .line 25
    new-instance v0, Landroidx/collection/MutableIntFloatMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableIntFloatMap;-><init>(IILjh2;)V

    .line 26
    invoke-virtual {v0, p0, p1}, Landroidx/collection/MutableIntFloatMap;->set(IF)V

    .line 27
    invoke-virtual {v0, p2, p3}, Landroidx/collection/MutableIntFloatMap;->set(IF)V

    return-object v0
.end method

.method public static final mutableIntFloatMapOf(IFIFIF)Landroidx/collection/MutableIntFloatMap;
    .locals 4

    .line 28
    new-instance v0, Landroidx/collection/MutableIntFloatMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableIntFloatMap;-><init>(IILjh2;)V

    .line 29
    invoke-virtual {v0, p0, p1}, Landroidx/collection/MutableIntFloatMap;->set(IF)V

    .line 30
    invoke-virtual {v0, p2, p3}, Landroidx/collection/MutableIntFloatMap;->set(IF)V

    .line 31
    invoke-virtual {v0, p4, p5}, Landroidx/collection/MutableIntFloatMap;->set(IF)V

    return-object v0
.end method

.method public static final mutableIntFloatMapOf(IFIFIFIF)Landroidx/collection/MutableIntFloatMap;
    .locals 4

    .line 32
    new-instance v0, Landroidx/collection/MutableIntFloatMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableIntFloatMap;-><init>(IILjh2;)V

    .line 33
    invoke-virtual {v0, p0, p1}, Landroidx/collection/MutableIntFloatMap;->set(IF)V

    .line 34
    invoke-virtual {v0, p2, p3}, Landroidx/collection/MutableIntFloatMap;->set(IF)V

    .line 35
    invoke-virtual {v0, p4, p5}, Landroidx/collection/MutableIntFloatMap;->set(IF)V

    .line 36
    invoke-virtual {v0, p6, p7}, Landroidx/collection/MutableIntFloatMap;->set(IF)V

    return-object v0
.end method

.method public static final mutableIntFloatMapOf(IFIFIFIFIF)Landroidx/collection/MutableIntFloatMap;
    .locals 4

    new-instance v0, Landroidx/collection/MutableIntFloatMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableIntFloatMap;-><init>(IILjh2;)V

    invoke-virtual {v0, p0, p1}, Landroidx/collection/MutableIntFloatMap;->set(IF)V

    invoke-virtual {v0, p2, p3}, Landroidx/collection/MutableIntFloatMap;->set(IF)V

    invoke-virtual {v0, p4, p5}, Landroidx/collection/MutableIntFloatMap;->set(IF)V

    invoke-virtual {v0, p6, p7}, Landroidx/collection/MutableIntFloatMap;->set(IF)V

    invoke-virtual {v0, p8, p9}, Landroidx/collection/MutableIntFloatMap;->set(IF)V

    return-object v0
.end method
