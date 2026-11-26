.class public final Landroidx/collection/IntIntMapKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final EmptyIntIntMap:Landroidx/collection/MutableIntIntMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/collection/MutableIntIntMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/collection/MutableIntIntMap;-><init>(I)V

    sput-object v0, Landroidx/collection/IntIntMapKt;->EmptyIntIntMap:Landroidx/collection/MutableIntIntMap;

    return-void
.end method

.method public static final buildIntIntMap(ILnl3;)Landroidx/collection/IntIntMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lnl3<",
            "-",
            "Landroidx/collection/MutableIntIntMap;",
            "Lj59;",
            ">;)",
            "Landroidx/collection/IntIntMap;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    new-instance v0, Landroidx/collection/MutableIntIntMap;

    invoke-direct {v0, p0}, Landroidx/collection/MutableIntIntMap;-><init>(I)V

    invoke-interface {p1, v0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static final buildIntIntMap(Lnl3;)Landroidx/collection/IntIntMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Landroidx/collection/MutableIntIntMap;",
            "Lj59;",
            ">;)",
            "Landroidx/collection/IntIntMap;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/collection/MutableIntIntMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableIntIntMap;-><init>(IILjh2;)V

    invoke-interface {p0, v0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static final emptyIntIntMap()Landroidx/collection/IntIntMap;
    .locals 1

    sget-object v0, Landroidx/collection/IntIntMapKt;->EmptyIntIntMap:Landroidx/collection/MutableIntIntMap;

    return-object v0
.end method

.method public static final intIntMapOf()Landroidx/collection/IntIntMap;
    .locals 1

    .line 37
    sget-object v0, Landroidx/collection/IntIntMapKt;->EmptyIntIntMap:Landroidx/collection/MutableIntIntMap;

    return-object v0
.end method

.method public static final intIntMapOf(II)Landroidx/collection/IntIntMap;
    .locals 4

    .line 24
    new-instance v0, Landroidx/collection/MutableIntIntMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableIntIntMap;-><init>(IILjh2;)V

    invoke-virtual {v0, p0, p1}, Landroidx/collection/MutableIntIntMap;->set(II)V

    return-object v0
.end method

.method public static final intIntMapOf(IIII)Landroidx/collection/IntIntMap;
    .locals 4

    .line 25
    new-instance v0, Landroidx/collection/MutableIntIntMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableIntIntMap;-><init>(IILjh2;)V

    .line 26
    invoke-virtual {v0, p0, p1}, Landroidx/collection/MutableIntIntMap;->set(II)V

    .line 27
    invoke-virtual {v0, p2, p3}, Landroidx/collection/MutableIntIntMap;->set(II)V

    return-object v0
.end method

.method public static final intIntMapOf(IIIIII)Landroidx/collection/IntIntMap;
    .locals 4

    .line 28
    new-instance v0, Landroidx/collection/MutableIntIntMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableIntIntMap;-><init>(IILjh2;)V

    .line 29
    invoke-virtual {v0, p0, p1}, Landroidx/collection/MutableIntIntMap;->set(II)V

    .line 30
    invoke-virtual {v0, p2, p3}, Landroidx/collection/MutableIntIntMap;->set(II)V

    .line 31
    invoke-virtual {v0, p4, p5}, Landroidx/collection/MutableIntIntMap;->set(II)V

    return-object v0
.end method

.method public static final intIntMapOf(IIIIIIII)Landroidx/collection/IntIntMap;
    .locals 4

    .line 32
    new-instance v0, Landroidx/collection/MutableIntIntMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableIntIntMap;-><init>(IILjh2;)V

    .line 33
    invoke-virtual {v0, p0, p1}, Landroidx/collection/MutableIntIntMap;->set(II)V

    .line 34
    invoke-virtual {v0, p2, p3}, Landroidx/collection/MutableIntIntMap;->set(II)V

    .line 35
    invoke-virtual {v0, p4, p5}, Landroidx/collection/MutableIntIntMap;->set(II)V

    .line 36
    invoke-virtual {v0, p6, p7}, Landroidx/collection/MutableIntIntMap;->set(II)V

    return-object v0
.end method

.method public static final intIntMapOf(IIIIIIIIII)Landroidx/collection/IntIntMap;
    .locals 4

    new-instance v0, Landroidx/collection/MutableIntIntMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableIntIntMap;-><init>(IILjh2;)V

    invoke-virtual {v0, p0, p1}, Landroidx/collection/MutableIntIntMap;->set(II)V

    invoke-virtual {v0, p2, p3}, Landroidx/collection/MutableIntIntMap;->set(II)V

    invoke-virtual {v0, p4, p5}, Landroidx/collection/MutableIntIntMap;->set(II)V

    invoke-virtual {v0, p6, p7}, Landroidx/collection/MutableIntIntMap;->set(II)V

    invoke-virtual {v0, p8, p9}, Landroidx/collection/MutableIntIntMap;->set(II)V

    return-object v0
.end method

.method public static final mutableIntIntMapOf()Landroidx/collection/MutableIntIntMap;
    .locals 4

    .line 37
    new-instance v0, Landroidx/collection/MutableIntIntMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableIntIntMap;-><init>(IILjh2;)V

    return-object v0
.end method

.method public static final mutableIntIntMapOf(II)Landroidx/collection/MutableIntIntMap;
    .locals 4

    .line 24
    new-instance v0, Landroidx/collection/MutableIntIntMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableIntIntMap;-><init>(IILjh2;)V

    invoke-virtual {v0, p0, p1}, Landroidx/collection/MutableIntIntMap;->set(II)V

    return-object v0
.end method

.method public static final mutableIntIntMapOf(IIII)Landroidx/collection/MutableIntIntMap;
    .locals 4

    .line 25
    new-instance v0, Landroidx/collection/MutableIntIntMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableIntIntMap;-><init>(IILjh2;)V

    .line 26
    invoke-virtual {v0, p0, p1}, Landroidx/collection/MutableIntIntMap;->set(II)V

    .line 27
    invoke-virtual {v0, p2, p3}, Landroidx/collection/MutableIntIntMap;->set(II)V

    return-object v0
.end method

.method public static final mutableIntIntMapOf(IIIIII)Landroidx/collection/MutableIntIntMap;
    .locals 4

    .line 28
    new-instance v0, Landroidx/collection/MutableIntIntMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableIntIntMap;-><init>(IILjh2;)V

    .line 29
    invoke-virtual {v0, p0, p1}, Landroidx/collection/MutableIntIntMap;->set(II)V

    .line 30
    invoke-virtual {v0, p2, p3}, Landroidx/collection/MutableIntIntMap;->set(II)V

    .line 31
    invoke-virtual {v0, p4, p5}, Landroidx/collection/MutableIntIntMap;->set(II)V

    return-object v0
.end method

.method public static final mutableIntIntMapOf(IIIIIIII)Landroidx/collection/MutableIntIntMap;
    .locals 4

    .line 32
    new-instance v0, Landroidx/collection/MutableIntIntMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableIntIntMap;-><init>(IILjh2;)V

    .line 33
    invoke-virtual {v0, p0, p1}, Landroidx/collection/MutableIntIntMap;->set(II)V

    .line 34
    invoke-virtual {v0, p2, p3}, Landroidx/collection/MutableIntIntMap;->set(II)V

    .line 35
    invoke-virtual {v0, p4, p5}, Landroidx/collection/MutableIntIntMap;->set(II)V

    .line 36
    invoke-virtual {v0, p6, p7}, Landroidx/collection/MutableIntIntMap;->set(II)V

    return-object v0
.end method

.method public static final mutableIntIntMapOf(IIIIIIIIII)Landroidx/collection/MutableIntIntMap;
    .locals 4

    new-instance v0, Landroidx/collection/MutableIntIntMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableIntIntMap;-><init>(IILjh2;)V

    invoke-virtual {v0, p0, p1}, Landroidx/collection/MutableIntIntMap;->set(II)V

    invoke-virtual {v0, p2, p3}, Landroidx/collection/MutableIntIntMap;->set(II)V

    invoke-virtual {v0, p4, p5}, Landroidx/collection/MutableIntIntMap;->set(II)V

    invoke-virtual {v0, p6, p7}, Landroidx/collection/MutableIntIntMap;->set(II)V

    invoke-virtual {v0, p8, p9}, Landroidx/collection/MutableIntIntMap;->set(II)V

    return-object v0
.end method
