.class public final Landroidx/collection/LongIntMapKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final EmptyLongIntMap:Landroidx/collection/MutableLongIntMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/collection/MutableLongIntMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/collection/MutableLongIntMap;-><init>(I)V

    sput-object v0, Landroidx/collection/LongIntMapKt;->EmptyLongIntMap:Landroidx/collection/MutableLongIntMap;

    return-void
.end method

.method public static final buildLongIntMap(ILnl3;)Landroidx/collection/LongIntMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lnl3<",
            "-",
            "Landroidx/collection/MutableLongIntMap;",
            "Lj59;",
            ">;)",
            "Landroidx/collection/LongIntMap;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    new-instance v0, Landroidx/collection/MutableLongIntMap;

    invoke-direct {v0, p0}, Landroidx/collection/MutableLongIntMap;-><init>(I)V

    invoke-interface {p1, v0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static final buildLongIntMap(Lnl3;)Landroidx/collection/LongIntMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Landroidx/collection/MutableLongIntMap;",
            "Lj59;",
            ">;)",
            "Landroidx/collection/LongIntMap;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/collection/MutableLongIntMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableLongIntMap;-><init>(IILjh2;)V

    invoke-interface {p0, v0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static final emptyLongIntMap()Landroidx/collection/LongIntMap;
    .locals 1

    sget-object v0, Landroidx/collection/LongIntMapKt;->EmptyLongIntMap:Landroidx/collection/MutableLongIntMap;

    return-object v0
.end method

.method public static final longIntMapOf()Landroidx/collection/LongIntMap;
    .locals 1

    .line 41
    sget-object v0, Landroidx/collection/LongIntMapKt;->EmptyLongIntMap:Landroidx/collection/MutableLongIntMap;

    return-object v0
.end method

.method public static final longIntMapOf(JI)Landroidx/collection/LongIntMap;
    .locals 4

    .line 28
    new-instance v0, Landroidx/collection/MutableLongIntMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableLongIntMap;-><init>(IILjh2;)V

    invoke-virtual {v0, p0, p1, p2}, Landroidx/collection/MutableLongIntMap;->set(JI)V

    return-object v0
.end method

.method public static final longIntMapOf(JIJI)Landroidx/collection/LongIntMap;
    .locals 4

    .line 29
    new-instance v0, Landroidx/collection/MutableLongIntMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableLongIntMap;-><init>(IILjh2;)V

    .line 30
    invoke-virtual {v0, p0, p1, p2}, Landroidx/collection/MutableLongIntMap;->set(JI)V

    .line 31
    invoke-virtual {v0, p3, p4, p5}, Landroidx/collection/MutableLongIntMap;->set(JI)V

    return-object v0
.end method

.method public static final longIntMapOf(JIJIJI)Landroidx/collection/LongIntMap;
    .locals 4

    .line 32
    new-instance v0, Landroidx/collection/MutableLongIntMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableLongIntMap;-><init>(IILjh2;)V

    .line 33
    invoke-virtual {v0, p0, p1, p2}, Landroidx/collection/MutableLongIntMap;->set(JI)V

    .line 34
    invoke-virtual {v0, p3, p4, p5}, Landroidx/collection/MutableLongIntMap;->set(JI)V

    .line 35
    invoke-virtual {v0, p6, p7, p8}, Landroidx/collection/MutableLongIntMap;->set(JI)V

    return-object v0
.end method

.method public static final longIntMapOf(JIJIJIJI)Landroidx/collection/LongIntMap;
    .locals 4

    .line 36
    new-instance v0, Landroidx/collection/MutableLongIntMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableLongIntMap;-><init>(IILjh2;)V

    .line 37
    invoke-virtual {v0, p0, p1, p2}, Landroidx/collection/MutableLongIntMap;->set(JI)V

    .line 38
    invoke-virtual {v0, p3, p4, p5}, Landroidx/collection/MutableLongIntMap;->set(JI)V

    .line 39
    invoke-virtual {v0, p6, p7, p8}, Landroidx/collection/MutableLongIntMap;->set(JI)V

    .line 40
    invoke-virtual {v0, p9, p10, p11}, Landroidx/collection/MutableLongIntMap;->set(JI)V

    return-object v0
.end method

.method public static final longIntMapOf(JIJIJIJIJI)Landroidx/collection/LongIntMap;
    .locals 4

    new-instance v0, Landroidx/collection/MutableLongIntMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableLongIntMap;-><init>(IILjh2;)V

    invoke-virtual {v0, p0, p1, p2}, Landroidx/collection/MutableLongIntMap;->set(JI)V

    invoke-virtual {v0, p3, p4, p5}, Landroidx/collection/MutableLongIntMap;->set(JI)V

    invoke-virtual {v0, p6, p7, p8}, Landroidx/collection/MutableLongIntMap;->set(JI)V

    invoke-virtual {v0, p9, p10, p11}, Landroidx/collection/MutableLongIntMap;->set(JI)V

    move-wide/from16 p0, p12

    move/from16 p2, p14

    invoke-virtual {v0, p0, p1, p2}, Landroidx/collection/MutableLongIntMap;->set(JI)V

    return-object v0
.end method

.method public static final mutableLongIntMapOf()Landroidx/collection/MutableLongIntMap;
    .locals 4

    .line 41
    new-instance v0, Landroidx/collection/MutableLongIntMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableLongIntMap;-><init>(IILjh2;)V

    return-object v0
.end method

.method public static final mutableLongIntMapOf(JI)Landroidx/collection/MutableLongIntMap;
    .locals 4

    .line 28
    new-instance v0, Landroidx/collection/MutableLongIntMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableLongIntMap;-><init>(IILjh2;)V

    invoke-virtual {v0, p0, p1, p2}, Landroidx/collection/MutableLongIntMap;->set(JI)V

    return-object v0
.end method

.method public static final mutableLongIntMapOf(JIJI)Landroidx/collection/MutableLongIntMap;
    .locals 4

    .line 29
    new-instance v0, Landroidx/collection/MutableLongIntMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableLongIntMap;-><init>(IILjh2;)V

    .line 30
    invoke-virtual {v0, p0, p1, p2}, Landroidx/collection/MutableLongIntMap;->set(JI)V

    .line 31
    invoke-virtual {v0, p3, p4, p5}, Landroidx/collection/MutableLongIntMap;->set(JI)V

    return-object v0
.end method

.method public static final mutableLongIntMapOf(JIJIJI)Landroidx/collection/MutableLongIntMap;
    .locals 4

    .line 32
    new-instance v0, Landroidx/collection/MutableLongIntMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableLongIntMap;-><init>(IILjh2;)V

    .line 33
    invoke-virtual {v0, p0, p1, p2}, Landroidx/collection/MutableLongIntMap;->set(JI)V

    .line 34
    invoke-virtual {v0, p3, p4, p5}, Landroidx/collection/MutableLongIntMap;->set(JI)V

    .line 35
    invoke-virtual {v0, p6, p7, p8}, Landroidx/collection/MutableLongIntMap;->set(JI)V

    return-object v0
.end method

.method public static final mutableLongIntMapOf(JIJIJIJI)Landroidx/collection/MutableLongIntMap;
    .locals 4

    .line 36
    new-instance v0, Landroidx/collection/MutableLongIntMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableLongIntMap;-><init>(IILjh2;)V

    .line 37
    invoke-virtual {v0, p0, p1, p2}, Landroidx/collection/MutableLongIntMap;->set(JI)V

    .line 38
    invoke-virtual {v0, p3, p4, p5}, Landroidx/collection/MutableLongIntMap;->set(JI)V

    .line 39
    invoke-virtual {v0, p6, p7, p8}, Landroidx/collection/MutableLongIntMap;->set(JI)V

    .line 40
    invoke-virtual {v0, p9, p10, p11}, Landroidx/collection/MutableLongIntMap;->set(JI)V

    return-object v0
.end method

.method public static final mutableLongIntMapOf(JIJIJIJIJI)Landroidx/collection/MutableLongIntMap;
    .locals 4

    new-instance v0, Landroidx/collection/MutableLongIntMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableLongIntMap;-><init>(IILjh2;)V

    invoke-virtual {v0, p0, p1, p2}, Landroidx/collection/MutableLongIntMap;->set(JI)V

    invoke-virtual {v0, p3, p4, p5}, Landroidx/collection/MutableLongIntMap;->set(JI)V

    invoke-virtual {v0, p6, p7, p8}, Landroidx/collection/MutableLongIntMap;->set(JI)V

    invoke-virtual {v0, p9, p10, p11}, Landroidx/collection/MutableLongIntMap;->set(JI)V

    move-wide/from16 p0, p12

    move/from16 p2, p14

    invoke-virtual {v0, p0, p1, p2}, Landroidx/collection/MutableLongIntMap;->set(JI)V

    return-object v0
.end method
