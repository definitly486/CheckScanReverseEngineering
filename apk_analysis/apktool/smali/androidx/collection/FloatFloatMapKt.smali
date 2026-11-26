.class public final Landroidx/collection/FloatFloatMapKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final EmptyFloatFloatMap:Landroidx/collection/MutableFloatFloatMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/collection/MutableFloatFloatMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/collection/MutableFloatFloatMap;-><init>(I)V

    sput-object v0, Landroidx/collection/FloatFloatMapKt;->EmptyFloatFloatMap:Landroidx/collection/MutableFloatFloatMap;

    return-void
.end method

.method public static final buildFloatFloatMap(ILnl3;)Landroidx/collection/FloatFloatMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lnl3<",
            "-",
            "Landroidx/collection/MutableFloatFloatMap;",
            "Lj59;",
            ">;)",
            "Landroidx/collection/FloatFloatMap;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    new-instance v0, Landroidx/collection/MutableFloatFloatMap;

    invoke-direct {v0, p0}, Landroidx/collection/MutableFloatFloatMap;-><init>(I)V

    invoke-interface {p1, v0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static final buildFloatFloatMap(Lnl3;)Landroidx/collection/FloatFloatMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Landroidx/collection/MutableFloatFloatMap;",
            "Lj59;",
            ">;)",
            "Landroidx/collection/FloatFloatMap;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/collection/MutableFloatFloatMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableFloatFloatMap;-><init>(IILjh2;)V

    invoke-interface {p0, v0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static final emptyFloatFloatMap()Landroidx/collection/FloatFloatMap;
    .locals 1

    sget-object v0, Landroidx/collection/FloatFloatMapKt;->EmptyFloatFloatMap:Landroidx/collection/MutableFloatFloatMap;

    return-object v0
.end method

.method public static final floatFloatMapOf()Landroidx/collection/FloatFloatMap;
    .locals 1

    .line 37
    sget-object v0, Landroidx/collection/FloatFloatMapKt;->EmptyFloatFloatMap:Landroidx/collection/MutableFloatFloatMap;

    return-object v0
.end method

.method public static final floatFloatMapOf(FF)Landroidx/collection/FloatFloatMap;
    .locals 4

    .line 24
    new-instance v0, Landroidx/collection/MutableFloatFloatMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableFloatFloatMap;-><init>(IILjh2;)V

    invoke-virtual {v0, p0, p1}, Landroidx/collection/MutableFloatFloatMap;->set(FF)V

    return-object v0
.end method

.method public static final floatFloatMapOf(FFFF)Landroidx/collection/FloatFloatMap;
    .locals 4

    .line 25
    new-instance v0, Landroidx/collection/MutableFloatFloatMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableFloatFloatMap;-><init>(IILjh2;)V

    .line 26
    invoke-virtual {v0, p0, p1}, Landroidx/collection/MutableFloatFloatMap;->set(FF)V

    .line 27
    invoke-virtual {v0, p2, p3}, Landroidx/collection/MutableFloatFloatMap;->set(FF)V

    return-object v0
.end method

.method public static final floatFloatMapOf(FFFFFF)Landroidx/collection/FloatFloatMap;
    .locals 4

    .line 28
    new-instance v0, Landroidx/collection/MutableFloatFloatMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableFloatFloatMap;-><init>(IILjh2;)V

    .line 29
    invoke-virtual {v0, p0, p1}, Landroidx/collection/MutableFloatFloatMap;->set(FF)V

    .line 30
    invoke-virtual {v0, p2, p3}, Landroidx/collection/MutableFloatFloatMap;->set(FF)V

    .line 31
    invoke-virtual {v0, p4, p5}, Landroidx/collection/MutableFloatFloatMap;->set(FF)V

    return-object v0
.end method

.method public static final floatFloatMapOf(FFFFFFFF)Landroidx/collection/FloatFloatMap;
    .locals 4

    .line 32
    new-instance v0, Landroidx/collection/MutableFloatFloatMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableFloatFloatMap;-><init>(IILjh2;)V

    .line 33
    invoke-virtual {v0, p0, p1}, Landroidx/collection/MutableFloatFloatMap;->set(FF)V

    .line 34
    invoke-virtual {v0, p2, p3}, Landroidx/collection/MutableFloatFloatMap;->set(FF)V

    .line 35
    invoke-virtual {v0, p4, p5}, Landroidx/collection/MutableFloatFloatMap;->set(FF)V

    .line 36
    invoke-virtual {v0, p6, p7}, Landroidx/collection/MutableFloatFloatMap;->set(FF)V

    return-object v0
.end method

.method public static final floatFloatMapOf(FFFFFFFFFF)Landroidx/collection/FloatFloatMap;
    .locals 4

    new-instance v0, Landroidx/collection/MutableFloatFloatMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableFloatFloatMap;-><init>(IILjh2;)V

    invoke-virtual {v0, p0, p1}, Landroidx/collection/MutableFloatFloatMap;->set(FF)V

    invoke-virtual {v0, p2, p3}, Landroidx/collection/MutableFloatFloatMap;->set(FF)V

    invoke-virtual {v0, p4, p5}, Landroidx/collection/MutableFloatFloatMap;->set(FF)V

    invoke-virtual {v0, p6, p7}, Landroidx/collection/MutableFloatFloatMap;->set(FF)V

    invoke-virtual {v0, p8, p9}, Landroidx/collection/MutableFloatFloatMap;->set(FF)V

    return-object v0
.end method

.method public static final mutableFloatFloatMapOf()Landroidx/collection/MutableFloatFloatMap;
    .locals 4

    .line 37
    new-instance v0, Landroidx/collection/MutableFloatFloatMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableFloatFloatMap;-><init>(IILjh2;)V

    return-object v0
.end method

.method public static final mutableFloatFloatMapOf(FF)Landroidx/collection/MutableFloatFloatMap;
    .locals 4

    .line 24
    new-instance v0, Landroidx/collection/MutableFloatFloatMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableFloatFloatMap;-><init>(IILjh2;)V

    invoke-virtual {v0, p0, p1}, Landroidx/collection/MutableFloatFloatMap;->set(FF)V

    return-object v0
.end method

.method public static final mutableFloatFloatMapOf(FFFF)Landroidx/collection/MutableFloatFloatMap;
    .locals 4

    .line 25
    new-instance v0, Landroidx/collection/MutableFloatFloatMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableFloatFloatMap;-><init>(IILjh2;)V

    .line 26
    invoke-virtual {v0, p0, p1}, Landroidx/collection/MutableFloatFloatMap;->set(FF)V

    .line 27
    invoke-virtual {v0, p2, p3}, Landroidx/collection/MutableFloatFloatMap;->set(FF)V

    return-object v0
.end method

.method public static final mutableFloatFloatMapOf(FFFFFF)Landroidx/collection/MutableFloatFloatMap;
    .locals 4

    .line 28
    new-instance v0, Landroidx/collection/MutableFloatFloatMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableFloatFloatMap;-><init>(IILjh2;)V

    .line 29
    invoke-virtual {v0, p0, p1}, Landroidx/collection/MutableFloatFloatMap;->set(FF)V

    .line 30
    invoke-virtual {v0, p2, p3}, Landroidx/collection/MutableFloatFloatMap;->set(FF)V

    .line 31
    invoke-virtual {v0, p4, p5}, Landroidx/collection/MutableFloatFloatMap;->set(FF)V

    return-object v0
.end method

.method public static final mutableFloatFloatMapOf(FFFFFFFF)Landroidx/collection/MutableFloatFloatMap;
    .locals 4

    .line 32
    new-instance v0, Landroidx/collection/MutableFloatFloatMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableFloatFloatMap;-><init>(IILjh2;)V

    .line 33
    invoke-virtual {v0, p0, p1}, Landroidx/collection/MutableFloatFloatMap;->set(FF)V

    .line 34
    invoke-virtual {v0, p2, p3}, Landroidx/collection/MutableFloatFloatMap;->set(FF)V

    .line 35
    invoke-virtual {v0, p4, p5}, Landroidx/collection/MutableFloatFloatMap;->set(FF)V

    .line 36
    invoke-virtual {v0, p6, p7}, Landroidx/collection/MutableFloatFloatMap;->set(FF)V

    return-object v0
.end method

.method public static final mutableFloatFloatMapOf(FFFFFFFFFF)Landroidx/collection/MutableFloatFloatMap;
    .locals 4

    new-instance v0, Landroidx/collection/MutableFloatFloatMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableFloatFloatMap;-><init>(IILjh2;)V

    invoke-virtual {v0, p0, p1}, Landroidx/collection/MutableFloatFloatMap;->set(FF)V

    invoke-virtual {v0, p2, p3}, Landroidx/collection/MutableFloatFloatMap;->set(FF)V

    invoke-virtual {v0, p4, p5}, Landroidx/collection/MutableFloatFloatMap;->set(FF)V

    invoke-virtual {v0, p6, p7}, Landroidx/collection/MutableFloatFloatMap;->set(FF)V

    invoke-virtual {v0, p8, p9}, Landroidx/collection/MutableFloatFloatMap;->set(FF)V

    return-object v0
.end method
