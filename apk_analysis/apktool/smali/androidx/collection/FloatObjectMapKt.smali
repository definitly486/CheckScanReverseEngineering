.class public final Landroidx/collection/FloatObjectMapKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final EmptyFloatObjectMap:Landroidx/collection/MutableFloatObjectMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/collection/MutableFloatObjectMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/collection/MutableFloatObjectMap;-><init>(I)V

    sput-object v0, Landroidx/collection/FloatObjectMapKt;->EmptyFloatObjectMap:Landroidx/collection/MutableFloatObjectMap;

    return-void
.end method

.method public static final buildFloatObjectMap(ILnl3;)Landroidx/collection/FloatObjectMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(I",
            "Lnl3<",
            "-",
            "Landroidx/collection/MutableFloatObjectMap<",
            "TV;>;",
            "Lj59;",
            ">;)",
            "Landroidx/collection/FloatObjectMap<",
            "TV;>;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    new-instance v0, Landroidx/collection/MutableFloatObjectMap;

    invoke-direct {v0, p0}, Landroidx/collection/MutableFloatObjectMap;-><init>(I)V

    invoke-interface {p1, v0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static final buildFloatObjectMap(Lnl3;)Landroidx/collection/FloatObjectMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lnl3<",
            "-",
            "Landroidx/collection/MutableFloatObjectMap<",
            "TV;>;",
            "Lj59;",
            ">;)",
            "Landroidx/collection/FloatObjectMap<",
            "TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/collection/MutableFloatObjectMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableFloatObjectMap;-><init>(IILjh2;)V

    invoke-interface {p0, v0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static final emptyFloatObjectMap()Landroidx/collection/FloatObjectMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Landroidx/collection/FloatObjectMap<",
            "TV;>;"
        }
    .end annotation

    sget-object v0, Landroidx/collection/FloatObjectMapKt;->EmptyFloatObjectMap:Landroidx/collection/MutableFloatObjectMap;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method

.method public static final floatObjectMapOf()Landroidx/collection/FloatObjectMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Landroidx/collection/FloatObjectMap<",
            "TV;>;"
        }
    .end annotation

    .line 37
    sget-object v0, Landroidx/collection/FloatObjectMapKt;->EmptyFloatObjectMap:Landroidx/collection/MutableFloatObjectMap;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method

.method public static final floatObjectMapOf(FLjava/lang/Object;)Landroidx/collection/FloatObjectMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(FTV;)",
            "Landroidx/collection/FloatObjectMap<",
            "TV;>;"
        }
    .end annotation

    .line 24
    new-instance v0, Landroidx/collection/MutableFloatObjectMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableFloatObjectMap;-><init>(IILjh2;)V

    invoke-virtual {v0, p0, p1}, Landroidx/collection/MutableFloatObjectMap;->set(FLjava/lang/Object;)V

    return-object v0
.end method

.method public static final floatObjectMapOf(FLjava/lang/Object;FLjava/lang/Object;)Landroidx/collection/FloatObjectMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(FTV;FTV;)",
            "Landroidx/collection/FloatObjectMap<",
            "TV;>;"
        }
    .end annotation

    .line 25
    new-instance v0, Landroidx/collection/MutableFloatObjectMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableFloatObjectMap;-><init>(IILjh2;)V

    .line 26
    invoke-virtual {v0, p0, p1}, Landroidx/collection/MutableFloatObjectMap;->set(FLjava/lang/Object;)V

    .line 27
    invoke-virtual {v0, p2, p3}, Landroidx/collection/MutableFloatObjectMap;->set(FLjava/lang/Object;)V

    return-object v0
.end method

.method public static final floatObjectMapOf(FLjava/lang/Object;FLjava/lang/Object;FLjava/lang/Object;)Landroidx/collection/FloatObjectMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(FTV;FTV;FTV;)",
            "Landroidx/collection/FloatObjectMap<",
            "TV;>;"
        }
    .end annotation

    .line 28
    new-instance v0, Landroidx/collection/MutableFloatObjectMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableFloatObjectMap;-><init>(IILjh2;)V

    .line 29
    invoke-virtual {v0, p0, p1}, Landroidx/collection/MutableFloatObjectMap;->set(FLjava/lang/Object;)V

    .line 30
    invoke-virtual {v0, p2, p3}, Landroidx/collection/MutableFloatObjectMap;->set(FLjava/lang/Object;)V

    .line 31
    invoke-virtual {v0, p4, p5}, Landroidx/collection/MutableFloatObjectMap;->set(FLjava/lang/Object;)V

    return-object v0
.end method

.method public static final floatObjectMapOf(FLjava/lang/Object;FLjava/lang/Object;FLjava/lang/Object;FLjava/lang/Object;)Landroidx/collection/FloatObjectMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(FTV;FTV;FTV;FTV;)",
            "Landroidx/collection/FloatObjectMap<",
            "TV;>;"
        }
    .end annotation

    .line 32
    new-instance v0, Landroidx/collection/MutableFloatObjectMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableFloatObjectMap;-><init>(IILjh2;)V

    .line 33
    invoke-virtual {v0, p0, p1}, Landroidx/collection/MutableFloatObjectMap;->set(FLjava/lang/Object;)V

    .line 34
    invoke-virtual {v0, p2, p3}, Landroidx/collection/MutableFloatObjectMap;->set(FLjava/lang/Object;)V

    .line 35
    invoke-virtual {v0, p4, p5}, Landroidx/collection/MutableFloatObjectMap;->set(FLjava/lang/Object;)V

    .line 36
    invoke-virtual {v0, p6, p7}, Landroidx/collection/MutableFloatObjectMap;->set(FLjava/lang/Object;)V

    return-object v0
.end method

.method public static final floatObjectMapOf(FLjava/lang/Object;FLjava/lang/Object;FLjava/lang/Object;FLjava/lang/Object;FLjava/lang/Object;)Landroidx/collection/FloatObjectMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(FTV;FTV;FTV;FTV;FTV;)",
            "Landroidx/collection/FloatObjectMap<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Landroidx/collection/MutableFloatObjectMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableFloatObjectMap;-><init>(IILjh2;)V

    invoke-virtual {v0, p0, p1}, Landroidx/collection/MutableFloatObjectMap;->set(FLjava/lang/Object;)V

    invoke-virtual {v0, p2, p3}, Landroidx/collection/MutableFloatObjectMap;->set(FLjava/lang/Object;)V

    invoke-virtual {v0, p4, p5}, Landroidx/collection/MutableFloatObjectMap;->set(FLjava/lang/Object;)V

    invoke-virtual {v0, p6, p7}, Landroidx/collection/MutableFloatObjectMap;->set(FLjava/lang/Object;)V

    invoke-virtual {v0, p8, p9}, Landroidx/collection/MutableFloatObjectMap;->set(FLjava/lang/Object;)V

    return-object v0
.end method

.method public static final mutableFloatObjectMapOf()Landroidx/collection/MutableFloatObjectMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Landroidx/collection/MutableFloatObjectMap<",
            "TV;>;"
        }
    .end annotation

    .line 37
    new-instance v0, Landroidx/collection/MutableFloatObjectMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableFloatObjectMap;-><init>(IILjh2;)V

    return-object v0
.end method

.method public static final mutableFloatObjectMapOf(FLjava/lang/Object;)Landroidx/collection/MutableFloatObjectMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(FTV;)",
            "Landroidx/collection/MutableFloatObjectMap<",
            "TV;>;"
        }
    .end annotation

    .line 24
    new-instance v0, Landroidx/collection/MutableFloatObjectMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableFloatObjectMap;-><init>(IILjh2;)V

    invoke-virtual {v0, p0, p1}, Landroidx/collection/MutableFloatObjectMap;->set(FLjava/lang/Object;)V

    return-object v0
.end method

.method public static final mutableFloatObjectMapOf(FLjava/lang/Object;FLjava/lang/Object;)Landroidx/collection/MutableFloatObjectMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(FTV;FTV;)",
            "Landroidx/collection/MutableFloatObjectMap<",
            "TV;>;"
        }
    .end annotation

    .line 25
    new-instance v0, Landroidx/collection/MutableFloatObjectMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableFloatObjectMap;-><init>(IILjh2;)V

    .line 26
    invoke-virtual {v0, p0, p1}, Landroidx/collection/MutableFloatObjectMap;->set(FLjava/lang/Object;)V

    .line 27
    invoke-virtual {v0, p2, p3}, Landroidx/collection/MutableFloatObjectMap;->set(FLjava/lang/Object;)V

    return-object v0
.end method

.method public static final mutableFloatObjectMapOf(FLjava/lang/Object;FLjava/lang/Object;FLjava/lang/Object;)Landroidx/collection/MutableFloatObjectMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(FTV;FTV;FTV;)",
            "Landroidx/collection/MutableFloatObjectMap<",
            "TV;>;"
        }
    .end annotation

    .line 28
    new-instance v0, Landroidx/collection/MutableFloatObjectMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableFloatObjectMap;-><init>(IILjh2;)V

    .line 29
    invoke-virtual {v0, p0, p1}, Landroidx/collection/MutableFloatObjectMap;->set(FLjava/lang/Object;)V

    .line 30
    invoke-virtual {v0, p2, p3}, Landroidx/collection/MutableFloatObjectMap;->set(FLjava/lang/Object;)V

    .line 31
    invoke-virtual {v0, p4, p5}, Landroidx/collection/MutableFloatObjectMap;->set(FLjava/lang/Object;)V

    return-object v0
.end method

.method public static final mutableFloatObjectMapOf(FLjava/lang/Object;FLjava/lang/Object;FLjava/lang/Object;FLjava/lang/Object;)Landroidx/collection/MutableFloatObjectMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(FTV;FTV;FTV;FTV;)",
            "Landroidx/collection/MutableFloatObjectMap<",
            "TV;>;"
        }
    .end annotation

    .line 32
    new-instance v0, Landroidx/collection/MutableFloatObjectMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableFloatObjectMap;-><init>(IILjh2;)V

    .line 33
    invoke-virtual {v0, p0, p1}, Landroidx/collection/MutableFloatObjectMap;->set(FLjava/lang/Object;)V

    .line 34
    invoke-virtual {v0, p2, p3}, Landroidx/collection/MutableFloatObjectMap;->set(FLjava/lang/Object;)V

    .line 35
    invoke-virtual {v0, p4, p5}, Landroidx/collection/MutableFloatObjectMap;->set(FLjava/lang/Object;)V

    .line 36
    invoke-virtual {v0, p6, p7}, Landroidx/collection/MutableFloatObjectMap;->set(FLjava/lang/Object;)V

    return-object v0
.end method

.method public static final mutableFloatObjectMapOf(FLjava/lang/Object;FLjava/lang/Object;FLjava/lang/Object;FLjava/lang/Object;FLjava/lang/Object;)Landroidx/collection/MutableFloatObjectMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(FTV;FTV;FTV;FTV;FTV;)",
            "Landroidx/collection/MutableFloatObjectMap<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Landroidx/collection/MutableFloatObjectMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableFloatObjectMap;-><init>(IILjh2;)V

    invoke-virtual {v0, p0, p1}, Landroidx/collection/MutableFloatObjectMap;->set(FLjava/lang/Object;)V

    invoke-virtual {v0, p2, p3}, Landroidx/collection/MutableFloatObjectMap;->set(FLjava/lang/Object;)V

    invoke-virtual {v0, p4, p5}, Landroidx/collection/MutableFloatObjectMap;->set(FLjava/lang/Object;)V

    invoke-virtual {v0, p6, p7}, Landroidx/collection/MutableFloatObjectMap;->set(FLjava/lang/Object;)V

    invoke-virtual {v0, p8, p9}, Landroidx/collection/MutableFloatObjectMap;->set(FLjava/lang/Object;)V

    return-object v0
.end method
