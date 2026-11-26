.class public final Landroidx/collection/FloatLongMapKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final EmptyFloatLongMap:Landroidx/collection/MutableFloatLongMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/collection/MutableFloatLongMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/collection/MutableFloatLongMap;-><init>(I)V

    sput-object v0, Landroidx/collection/FloatLongMapKt;->EmptyFloatLongMap:Landroidx/collection/MutableFloatLongMap;

    return-void
.end method

.method public static final buildFloatLongMap(ILnl3;)Landroidx/collection/FloatLongMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lnl3<",
            "-",
            "Landroidx/collection/MutableFloatLongMap;",
            "Lj59;",
            ">;)",
            "Landroidx/collection/FloatLongMap;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    new-instance v0, Landroidx/collection/MutableFloatLongMap;

    invoke-direct {v0, p0}, Landroidx/collection/MutableFloatLongMap;-><init>(I)V

    invoke-interface {p1, v0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static final buildFloatLongMap(Lnl3;)Landroidx/collection/FloatLongMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Landroidx/collection/MutableFloatLongMap;",
            "Lj59;",
            ">;)",
            "Landroidx/collection/FloatLongMap;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/collection/MutableFloatLongMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableFloatLongMap;-><init>(IILjh2;)V

    invoke-interface {p0, v0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static final emptyFloatLongMap()Landroidx/collection/FloatLongMap;
    .locals 1

    sget-object v0, Landroidx/collection/FloatLongMapKt;->EmptyFloatLongMap:Landroidx/collection/MutableFloatLongMap;

    return-object v0
.end method

.method public static final floatLongMapOf()Landroidx/collection/FloatLongMap;
    .locals 1

    .line 41
    sget-object v0, Landroidx/collection/FloatLongMapKt;->EmptyFloatLongMap:Landroidx/collection/MutableFloatLongMap;

    return-object v0
.end method

.method public static final floatLongMapOf(FJ)Landroidx/collection/FloatLongMap;
    .locals 4

    .line 28
    new-instance v0, Landroidx/collection/MutableFloatLongMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableFloatLongMap;-><init>(IILjh2;)V

    invoke-virtual {v0, p0, p1, p2}, Landroidx/collection/MutableFloatLongMap;->set(FJ)V

    return-object v0
.end method

.method public static final floatLongMapOf(FJFJ)Landroidx/collection/FloatLongMap;
    .locals 4

    .line 29
    new-instance v0, Landroidx/collection/MutableFloatLongMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableFloatLongMap;-><init>(IILjh2;)V

    .line 30
    invoke-virtual {v0, p0, p1, p2}, Landroidx/collection/MutableFloatLongMap;->set(FJ)V

    .line 31
    invoke-virtual {v0, p3, p4, p5}, Landroidx/collection/MutableFloatLongMap;->set(FJ)V

    return-object v0
.end method

.method public static final floatLongMapOf(FJFJFJ)Landroidx/collection/FloatLongMap;
    .locals 4

    .line 32
    new-instance v0, Landroidx/collection/MutableFloatLongMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableFloatLongMap;-><init>(IILjh2;)V

    .line 33
    invoke-virtual {v0, p0, p1, p2}, Landroidx/collection/MutableFloatLongMap;->set(FJ)V

    .line 34
    invoke-virtual {v0, p3, p4, p5}, Landroidx/collection/MutableFloatLongMap;->set(FJ)V

    .line 35
    invoke-virtual {v0, p6, p7, p8}, Landroidx/collection/MutableFloatLongMap;->set(FJ)V

    return-object v0
.end method

.method public static final floatLongMapOf(FJFJFJFJ)Landroidx/collection/FloatLongMap;
    .locals 4

    .line 36
    new-instance v0, Landroidx/collection/MutableFloatLongMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableFloatLongMap;-><init>(IILjh2;)V

    .line 37
    invoke-virtual {v0, p0, p1, p2}, Landroidx/collection/MutableFloatLongMap;->set(FJ)V

    .line 38
    invoke-virtual {v0, p3, p4, p5}, Landroidx/collection/MutableFloatLongMap;->set(FJ)V

    .line 39
    invoke-virtual {v0, p6, p7, p8}, Landroidx/collection/MutableFloatLongMap;->set(FJ)V

    .line 40
    invoke-virtual {v0, p9, p10, p11}, Landroidx/collection/MutableFloatLongMap;->set(FJ)V

    return-object v0
.end method

.method public static final floatLongMapOf(FJFJFJFJFJ)Landroidx/collection/FloatLongMap;
    .locals 4

    new-instance v0, Landroidx/collection/MutableFloatLongMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableFloatLongMap;-><init>(IILjh2;)V

    invoke-virtual {v0, p0, p1, p2}, Landroidx/collection/MutableFloatLongMap;->set(FJ)V

    invoke-virtual {v0, p3, p4, p5}, Landroidx/collection/MutableFloatLongMap;->set(FJ)V

    invoke-virtual {v0, p6, p7, p8}, Landroidx/collection/MutableFloatLongMap;->set(FJ)V

    invoke-virtual {v0, p9, p10, p11}, Landroidx/collection/MutableFloatLongMap;->set(FJ)V

    move/from16 p0, p12

    move-wide/from16 p1, p13

    invoke-virtual {v0, p0, p1, p2}, Landroidx/collection/MutableFloatLongMap;->set(FJ)V

    return-object v0
.end method

.method public static final mutableFloatLongMapOf()Landroidx/collection/MutableFloatLongMap;
    .locals 4

    .line 41
    new-instance v0, Landroidx/collection/MutableFloatLongMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableFloatLongMap;-><init>(IILjh2;)V

    return-object v0
.end method

.method public static final mutableFloatLongMapOf(FJ)Landroidx/collection/MutableFloatLongMap;
    .locals 4

    .line 28
    new-instance v0, Landroidx/collection/MutableFloatLongMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableFloatLongMap;-><init>(IILjh2;)V

    invoke-virtual {v0, p0, p1, p2}, Landroidx/collection/MutableFloatLongMap;->set(FJ)V

    return-object v0
.end method

.method public static final mutableFloatLongMapOf(FJFJ)Landroidx/collection/MutableFloatLongMap;
    .locals 4

    .line 29
    new-instance v0, Landroidx/collection/MutableFloatLongMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableFloatLongMap;-><init>(IILjh2;)V

    .line 30
    invoke-virtual {v0, p0, p1, p2}, Landroidx/collection/MutableFloatLongMap;->set(FJ)V

    .line 31
    invoke-virtual {v0, p3, p4, p5}, Landroidx/collection/MutableFloatLongMap;->set(FJ)V

    return-object v0
.end method

.method public static final mutableFloatLongMapOf(FJFJFJ)Landroidx/collection/MutableFloatLongMap;
    .locals 4

    .line 32
    new-instance v0, Landroidx/collection/MutableFloatLongMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableFloatLongMap;-><init>(IILjh2;)V

    .line 33
    invoke-virtual {v0, p0, p1, p2}, Landroidx/collection/MutableFloatLongMap;->set(FJ)V

    .line 34
    invoke-virtual {v0, p3, p4, p5}, Landroidx/collection/MutableFloatLongMap;->set(FJ)V

    .line 35
    invoke-virtual {v0, p6, p7, p8}, Landroidx/collection/MutableFloatLongMap;->set(FJ)V

    return-object v0
.end method

.method public static final mutableFloatLongMapOf(FJFJFJFJ)Landroidx/collection/MutableFloatLongMap;
    .locals 4

    .line 36
    new-instance v0, Landroidx/collection/MutableFloatLongMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableFloatLongMap;-><init>(IILjh2;)V

    .line 37
    invoke-virtual {v0, p0, p1, p2}, Landroidx/collection/MutableFloatLongMap;->set(FJ)V

    .line 38
    invoke-virtual {v0, p3, p4, p5}, Landroidx/collection/MutableFloatLongMap;->set(FJ)V

    .line 39
    invoke-virtual {v0, p6, p7, p8}, Landroidx/collection/MutableFloatLongMap;->set(FJ)V

    .line 40
    invoke-virtual {v0, p9, p10, p11}, Landroidx/collection/MutableFloatLongMap;->set(FJ)V

    return-object v0
.end method

.method public static final mutableFloatLongMapOf(FJFJFJFJFJ)Landroidx/collection/MutableFloatLongMap;
    .locals 4

    new-instance v0, Landroidx/collection/MutableFloatLongMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableFloatLongMap;-><init>(IILjh2;)V

    invoke-virtual {v0, p0, p1, p2}, Landroidx/collection/MutableFloatLongMap;->set(FJ)V

    invoke-virtual {v0, p3, p4, p5}, Landroidx/collection/MutableFloatLongMap;->set(FJ)V

    invoke-virtual {v0, p6, p7, p8}, Landroidx/collection/MutableFloatLongMap;->set(FJ)V

    invoke-virtual {v0, p9, p10, p11}, Landroidx/collection/MutableFloatLongMap;->set(FJ)V

    move/from16 p0, p12

    move-wide/from16 p1, p13

    invoke-virtual {v0, p0, p1, p2}, Landroidx/collection/MutableFloatLongMap;->set(FJ)V

    return-object v0
.end method
