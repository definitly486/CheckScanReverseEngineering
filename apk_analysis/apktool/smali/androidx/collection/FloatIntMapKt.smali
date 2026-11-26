.class public final Landroidx/collection/FloatIntMapKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final EmptyFloatIntMap:Landroidx/collection/MutableFloatIntMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/collection/MutableFloatIntMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/collection/MutableFloatIntMap;-><init>(I)V

    sput-object v0, Landroidx/collection/FloatIntMapKt;->EmptyFloatIntMap:Landroidx/collection/MutableFloatIntMap;

    return-void
.end method

.method public static final buildFloatIntMap(ILnl3;)Landroidx/collection/FloatIntMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lnl3<",
            "-",
            "Landroidx/collection/MutableFloatIntMap;",
            "Lj59;",
            ">;)",
            "Landroidx/collection/FloatIntMap;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    new-instance v0, Landroidx/collection/MutableFloatIntMap;

    invoke-direct {v0, p0}, Landroidx/collection/MutableFloatIntMap;-><init>(I)V

    invoke-interface {p1, v0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static final buildFloatIntMap(Lnl3;)Landroidx/collection/FloatIntMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Landroidx/collection/MutableFloatIntMap;",
            "Lj59;",
            ">;)",
            "Landroidx/collection/FloatIntMap;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/collection/MutableFloatIntMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableFloatIntMap;-><init>(IILjh2;)V

    invoke-interface {p0, v0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static final emptyFloatIntMap()Landroidx/collection/FloatIntMap;
    .locals 1

    sget-object v0, Landroidx/collection/FloatIntMapKt;->EmptyFloatIntMap:Landroidx/collection/MutableFloatIntMap;

    return-object v0
.end method

.method public static final floatIntMapOf()Landroidx/collection/FloatIntMap;
    .locals 1

    .line 37
    sget-object v0, Landroidx/collection/FloatIntMapKt;->EmptyFloatIntMap:Landroidx/collection/MutableFloatIntMap;

    return-object v0
.end method

.method public static final floatIntMapOf(FI)Landroidx/collection/FloatIntMap;
    .locals 4

    .line 24
    new-instance v0, Landroidx/collection/MutableFloatIntMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableFloatIntMap;-><init>(IILjh2;)V

    invoke-virtual {v0, p0, p1}, Landroidx/collection/MutableFloatIntMap;->set(FI)V

    return-object v0
.end method

.method public static final floatIntMapOf(FIFI)Landroidx/collection/FloatIntMap;
    .locals 4

    .line 25
    new-instance v0, Landroidx/collection/MutableFloatIntMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableFloatIntMap;-><init>(IILjh2;)V

    .line 26
    invoke-virtual {v0, p0, p1}, Landroidx/collection/MutableFloatIntMap;->set(FI)V

    .line 27
    invoke-virtual {v0, p2, p3}, Landroidx/collection/MutableFloatIntMap;->set(FI)V

    return-object v0
.end method

.method public static final floatIntMapOf(FIFIFI)Landroidx/collection/FloatIntMap;
    .locals 4

    .line 28
    new-instance v0, Landroidx/collection/MutableFloatIntMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableFloatIntMap;-><init>(IILjh2;)V

    .line 29
    invoke-virtual {v0, p0, p1}, Landroidx/collection/MutableFloatIntMap;->set(FI)V

    .line 30
    invoke-virtual {v0, p2, p3}, Landroidx/collection/MutableFloatIntMap;->set(FI)V

    .line 31
    invoke-virtual {v0, p4, p5}, Landroidx/collection/MutableFloatIntMap;->set(FI)V

    return-object v0
.end method

.method public static final floatIntMapOf(FIFIFIFI)Landroidx/collection/FloatIntMap;
    .locals 4

    .line 32
    new-instance v0, Landroidx/collection/MutableFloatIntMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableFloatIntMap;-><init>(IILjh2;)V

    .line 33
    invoke-virtual {v0, p0, p1}, Landroidx/collection/MutableFloatIntMap;->set(FI)V

    .line 34
    invoke-virtual {v0, p2, p3}, Landroidx/collection/MutableFloatIntMap;->set(FI)V

    .line 35
    invoke-virtual {v0, p4, p5}, Landroidx/collection/MutableFloatIntMap;->set(FI)V

    .line 36
    invoke-virtual {v0, p6, p7}, Landroidx/collection/MutableFloatIntMap;->set(FI)V

    return-object v0
.end method

.method public static final floatIntMapOf(FIFIFIFIFI)Landroidx/collection/FloatIntMap;
    .locals 4

    new-instance v0, Landroidx/collection/MutableFloatIntMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableFloatIntMap;-><init>(IILjh2;)V

    invoke-virtual {v0, p0, p1}, Landroidx/collection/MutableFloatIntMap;->set(FI)V

    invoke-virtual {v0, p2, p3}, Landroidx/collection/MutableFloatIntMap;->set(FI)V

    invoke-virtual {v0, p4, p5}, Landroidx/collection/MutableFloatIntMap;->set(FI)V

    invoke-virtual {v0, p6, p7}, Landroidx/collection/MutableFloatIntMap;->set(FI)V

    invoke-virtual {v0, p8, p9}, Landroidx/collection/MutableFloatIntMap;->set(FI)V

    return-object v0
.end method

.method public static final mutableFloatIntMapOf()Landroidx/collection/MutableFloatIntMap;
    .locals 4

    .line 37
    new-instance v0, Landroidx/collection/MutableFloatIntMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableFloatIntMap;-><init>(IILjh2;)V

    return-object v0
.end method

.method public static final mutableFloatIntMapOf(FI)Landroidx/collection/MutableFloatIntMap;
    .locals 4

    .line 24
    new-instance v0, Landroidx/collection/MutableFloatIntMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableFloatIntMap;-><init>(IILjh2;)V

    invoke-virtual {v0, p0, p1}, Landroidx/collection/MutableFloatIntMap;->set(FI)V

    return-object v0
.end method

.method public static final mutableFloatIntMapOf(FIFI)Landroidx/collection/MutableFloatIntMap;
    .locals 4

    .line 25
    new-instance v0, Landroidx/collection/MutableFloatIntMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableFloatIntMap;-><init>(IILjh2;)V

    .line 26
    invoke-virtual {v0, p0, p1}, Landroidx/collection/MutableFloatIntMap;->set(FI)V

    .line 27
    invoke-virtual {v0, p2, p3}, Landroidx/collection/MutableFloatIntMap;->set(FI)V

    return-object v0
.end method

.method public static final mutableFloatIntMapOf(FIFIFI)Landroidx/collection/MutableFloatIntMap;
    .locals 4

    .line 28
    new-instance v0, Landroidx/collection/MutableFloatIntMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableFloatIntMap;-><init>(IILjh2;)V

    .line 29
    invoke-virtual {v0, p0, p1}, Landroidx/collection/MutableFloatIntMap;->set(FI)V

    .line 30
    invoke-virtual {v0, p2, p3}, Landroidx/collection/MutableFloatIntMap;->set(FI)V

    .line 31
    invoke-virtual {v0, p4, p5}, Landroidx/collection/MutableFloatIntMap;->set(FI)V

    return-object v0
.end method

.method public static final mutableFloatIntMapOf(FIFIFIFI)Landroidx/collection/MutableFloatIntMap;
    .locals 4

    .line 32
    new-instance v0, Landroidx/collection/MutableFloatIntMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableFloatIntMap;-><init>(IILjh2;)V

    .line 33
    invoke-virtual {v0, p0, p1}, Landroidx/collection/MutableFloatIntMap;->set(FI)V

    .line 34
    invoke-virtual {v0, p2, p3}, Landroidx/collection/MutableFloatIntMap;->set(FI)V

    .line 35
    invoke-virtual {v0, p4, p5}, Landroidx/collection/MutableFloatIntMap;->set(FI)V

    .line 36
    invoke-virtual {v0, p6, p7}, Landroidx/collection/MutableFloatIntMap;->set(FI)V

    return-object v0
.end method

.method public static final mutableFloatIntMapOf(FIFIFIFIFI)Landroidx/collection/MutableFloatIntMap;
    .locals 4

    new-instance v0, Landroidx/collection/MutableFloatIntMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableFloatIntMap;-><init>(IILjh2;)V

    invoke-virtual {v0, p0, p1}, Landroidx/collection/MutableFloatIntMap;->set(FI)V

    invoke-virtual {v0, p2, p3}, Landroidx/collection/MutableFloatIntMap;->set(FI)V

    invoke-virtual {v0, p4, p5}, Landroidx/collection/MutableFloatIntMap;->set(FI)V

    invoke-virtual {v0, p6, p7}, Landroidx/collection/MutableFloatIntMap;->set(FI)V

    invoke-virtual {v0, p8, p9}, Landroidx/collection/MutableFloatIntMap;->set(FI)V

    return-object v0
.end method
