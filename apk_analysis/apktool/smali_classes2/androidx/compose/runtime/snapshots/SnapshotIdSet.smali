.class public final Landroidx/compose/runtime/snapshots/SnapshotIdSet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lre4;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/snapshots/SnapshotIdSet$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Long;",
        ">;",
        "Lre4;"
    }
.end annotation


# static fields
.field public static final $stable:I

.field public static final Companion:Landroidx/compose/runtime/snapshots/SnapshotIdSet$Companion;

.field private static final EMPTY:Landroidx/compose/runtime/snapshots/SnapshotIdSet;


# instance fields
.field private final belowBound:[J

.field private final lowerBound:J

.field private final lowerSet:J

.field private final upperSet:J


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->Companion:Landroidx/compose/runtime/snapshots/SnapshotIdSet$Companion;

    new-instance v2, Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    invoke-direct/range {v2 .. v9}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;-><init>(JJJ[J)V

    sput-object v2, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->EMPTY:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    return-void
.end method

.method private constructor <init>(JJJ[J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->upperSet:J

    iput-wide p3, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerSet:J

    iput-wide p5, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerBound:J

    iput-object p7, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->belowBound:[J

    return-void
.end method

.method public static final synthetic access$getBelowBound$p(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)[J
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->belowBound:[J

    return-object p0
.end method

.method public static final synthetic access$getEMPTY$cp()Landroidx/compose/runtime/snapshots/SnapshotIdSet;
    .locals 1

    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->EMPTY:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    return-object v0
.end method

.method public static final synthetic access$getLowerBound$p(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerBound:J

    return-wide v0
.end method

.method public static final synthetic access$getLowerSet$p(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerSet:J

    return-wide v0
.end method

.method public static final synthetic access$getUpperSet$p(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->upperSet:J

    return-wide v0
.end method

.method private final fastFold(Landroidx/compose/runtime/snapshots/SnapshotIdSet;Lbm3;)Landroidx/compose/runtime/snapshots/SnapshotIdSet;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/snapshots/SnapshotIdSet;",
            "Lbm3<",
            "-",
            "Landroidx/compose/runtime/snapshots/SnapshotIdSet;",
            "-",
            "Ljava/lang/Long;",
            "Landroidx/compose/runtime/snapshots/SnapshotIdSet;",
            ">;)",
            "Landroidx/compose/runtime/snapshots/SnapshotIdSet;"
        }
    .end annotation

    invoke-static {p0}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->access$getBelowBound$p(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)[J

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_0

    aget-wide v4, v0, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p2, p1, v4}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->access$getLowerSet$p(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    const-wide/16 v2, 0x1

    const/16 v6, 0x40

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    if-ge v0, v6, :cond_2

    invoke-static {p0}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->access$getLowerSet$p(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)J

    move-result-wide v7

    shl-long v9, v2, v0

    and-long/2addr v7, v9

    cmp-long v7, v7, v4

    if-eqz v7, :cond_1

    invoke-static {p0}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->access$getLowerBound$p(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)J

    move-result-wide v7

    int-to-long v9, v0

    add-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {p2, p1, v7}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-static {p0}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->access$getUpperSet$p(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)J

    move-result-wide v7

    cmp-long v0, v7, v4

    if-eqz v0, :cond_4

    :goto_2
    if-ge v1, v6, :cond_4

    invoke-static {p0}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->access$getUpperSet$p(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)J

    move-result-wide v7

    shl-long v9, v2, v1

    and-long/2addr v7, v9

    cmp-long v0, v7, v4

    if-eqz v0, :cond_3

    invoke-static {p0}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->access$getLowerBound$p(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)J

    move-result-wide v7

    int-to-long v9, v1

    add-long/2addr v7, v9

    const-wide/16 v9, 0x40

    add-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    check-cast p1, Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    return-object p1
.end method


# virtual methods
.method public final and(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/SnapshotIdSet;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->EMPTY:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    invoke-static {v1, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    if-eq v0, v2, :cond_f

    iget-wide v3, v1, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerBound:J

    iget-wide v10, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerBound:J

    cmp-long v3, v3, v10

    if-nez v3, :cond_2

    iget-object v3, v1, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->belowBound:[J

    iget-object v12, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->belowBound:[J

    if-ne v3, v12, :cond_2

    iget-wide v6, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->upperSet:J

    iget-wide v8, v1, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->upperSet:J

    and-long v13, v6, v8

    const-wide/16 v15, 0x0

    iget-wide v4, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerSet:J

    iget-wide v0, v1, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerSet:J

    and-long v17, v4, v0

    cmp-long v3, v13, v15

    if-nez v3, :cond_1

    cmp-long v3, v17, v15

    if-nez v3, :cond_1

    if-nez v12, :cond_1

    :goto_0
    return-object v2

    :cond_1
    move-wide v2, v4

    new-instance v5, Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    and-long/2addr v6, v8

    and-long v8, v2, v0

    invoke-direct/range {v5 .. v12}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;-><init>(JJJ[J)V

    return-object v5

    :cond_2
    const-wide/16 v15, 0x0

    iget-object v3, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->belowBound:[J

    const-wide/16 v4, 0x40

    const-wide/16 v6, 0x1

    const/16 v8, 0x40

    const/4 v9, 0x0

    if-nez v3, :cond_9

    invoke-static {v0}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->access$getBelowBound$p(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)[J

    move-result-object v3

    if-eqz v3, :cond_4

    array-length v10, v3

    move v11, v9

    :goto_1
    if-ge v11, v10, :cond_4

    aget-wide v12, v3, v11

    invoke-virtual {v1, v12, v13}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->get(J)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-virtual {v2, v12, v13}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->set(J)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v2

    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_4
    invoke-static {v0}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->access$getLowerSet$p(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)J

    move-result-wide v10

    cmp-long v3, v10, v15

    if-eqz v3, :cond_6

    move v3, v9

    :goto_2
    if-ge v3, v8, :cond_6

    invoke-static {v0}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->access$getLowerSet$p(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)J

    move-result-wide v10

    shl-long v12, v6, v3

    and-long/2addr v10, v12

    cmp-long v10, v10, v15

    if-eqz v10, :cond_5

    invoke-static {v0}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->access$getLowerBound$p(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)J

    move-result-wide v10

    int-to-long v12, v3

    add-long/2addr v10, v12

    invoke-virtual {v1, v10, v11}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->get(J)Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-virtual {v2, v10, v11}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->set(J)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v2

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    invoke-static {v0}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->access$getUpperSet$p(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)J

    move-result-wide v10

    cmp-long v3, v10, v15

    if-eqz v3, :cond_8

    :goto_3
    if-ge v9, v8, :cond_8

    invoke-static {v0}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->access$getUpperSet$p(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)J

    move-result-wide v10

    shl-long v12, v6, v9

    and-long/2addr v10, v12

    cmp-long v3, v10, v15

    if-eqz v3, :cond_7

    invoke-static {v0}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->access$getLowerBound$p(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)J

    move-result-wide v10

    int-to-long v12, v9

    add-long/2addr v10, v12

    add-long/2addr v10, v4

    invoke-virtual {v1, v10, v11}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->get(J)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v2, v10, v11}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->set(J)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v2

    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_8
    return-object v2

    :cond_9
    invoke-static {v1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->access$getBelowBound$p(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)[J

    move-result-object v3

    if-eqz v3, :cond_b

    array-length v10, v3

    move v11, v9

    :goto_4
    if-ge v11, v10, :cond_b

    aget-wide v12, v3, v11

    invoke-virtual {v0, v12, v13}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->get(J)Z

    move-result v14

    if-eqz v14, :cond_a

    invoke-virtual {v2, v12, v13}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->set(J)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v2

    :cond_a
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_b
    invoke-static {v1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->access$getLowerSet$p(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)J

    move-result-wide v10

    cmp-long v3, v10, v15

    if-eqz v3, :cond_d

    move v3, v9

    :goto_5
    if-ge v3, v8, :cond_d

    invoke-static {v1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->access$getLowerSet$p(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)J

    move-result-wide v10

    shl-long v12, v6, v3

    and-long/2addr v10, v12

    cmp-long v10, v10, v15

    if-eqz v10, :cond_c

    invoke-static {v1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->access$getLowerBound$p(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)J

    move-result-wide v10

    int-to-long v12, v3

    add-long/2addr v10, v12

    invoke-virtual {v0, v10, v11}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->get(J)Z

    move-result v12

    if-eqz v12, :cond_c

    invoke-virtual {v2, v10, v11}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->set(J)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v2

    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_d
    invoke-static {v1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->access$getUpperSet$p(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)J

    move-result-wide v10

    cmp-long v3, v10, v15

    if-eqz v3, :cond_f

    :goto_6
    if-ge v9, v8, :cond_f

    invoke-static {v1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->access$getUpperSet$p(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)J

    move-result-wide v10

    shl-long v12, v6, v9

    and-long/2addr v10, v12

    cmp-long v3, v10, v15

    if-eqz v3, :cond_e

    invoke-static {v1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->access$getLowerBound$p(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)J

    move-result-wide v10

    int-to-long v12, v9

    add-long/2addr v10, v12

    add-long/2addr v10, v4

    invoke-virtual {v0, v10, v11}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->get(J)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {v2, v10, v11}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->set(J)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v2

    :cond_e
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_f
    return-object v2
.end method

.method public final andNot(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/SnapshotIdSet;
    .locals 11

    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->EMPTY:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    if-ne p0, v0, :cond_1

    return-object v0

    :cond_1
    iget-wide v0, p1, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerBound:J

    iget-wide v7, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerBound:J

    cmp-long v0, v0, v7

    if-nez v0, :cond_2

    iget-object v0, p1, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->belowBound:[J

    iget-object v9, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->belowBound:[J

    if-ne v0, v9, :cond_2

    new-instance v2, Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    iget-wide v0, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->upperSet:J

    iget-wide v3, p1, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->upperSet:J

    not-long v3, v3

    and-long/2addr v3, v0

    iget-wide v0, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerSet:J

    iget-wide p0, p1, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerSet:J

    not-long p0, p0

    and-long v5, v0, p0

    invoke-direct/range {v2 .. v9}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;-><init>(JJJ[J)V

    return-object v2

    :cond_2
    invoke-static {p1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->access$getBelowBound$p(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)[J

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_3

    aget-wide v4, v0, v3

    invoke-virtual {p0, v4, v5}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->clear(J)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object p0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-static {p1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->access$getLowerSet$p(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    const-wide/16 v2, 0x1

    const/16 v6, 0x40

    if-eqz v0, :cond_5

    move v0, v1

    :goto_1
    if-ge v0, v6, :cond_5

    invoke-static {p1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->access$getLowerSet$p(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)J

    move-result-wide v7

    shl-long v9, v2, v0

    and-long/2addr v7, v9

    cmp-long v7, v7, v4

    if-eqz v7, :cond_4

    invoke-static {p1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->access$getLowerBound$p(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)J

    move-result-wide v7

    int-to-long v9, v0

    add-long/2addr v7, v9

    invoke-virtual {p0, v7, v8}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->clear(J)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object p0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    invoke-static {p1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->access$getUpperSet$p(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)J

    move-result-wide v7

    cmp-long v0, v7, v4

    if-eqz v0, :cond_7

    :goto_2
    if-ge v1, v6, :cond_7

    invoke-static {p1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->access$getUpperSet$p(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)J

    move-result-wide v7

    shl-long v9, v2, v1

    and-long/2addr v7, v9

    cmp-long v0, v7, v4

    if-eqz v0, :cond_6

    invoke-static {p1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->access$getLowerBound$p(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)J

    move-result-wide v7

    int-to-long v9, v1

    add-long/2addr v7, v9

    const-wide/16 v9, 0x40

    add-long/2addr v7, v9

    invoke-virtual {p0, v7, v8}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->clear(J)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object p0

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    return-object p0
.end method

.method public final clear(J)Landroidx/compose/runtime/snapshots/SnapshotIdSet;
    .locals 11

    iget-wide v0, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerBound:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Laa4;->g(JJ)I

    move-result v4

    const-wide/16 v5, 0x1

    const-wide/16 v7, 0x40

    if-ltz v4, :cond_0

    invoke-static {v0, v1, v7, v8}, Laa4;->g(JJ)I

    move-result v4

    if-gez v4, :cond_0

    long-to-int p1, v0

    shl-long p1, v5, p1

    iget-wide v0, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerSet:J

    and-long v4, v0, p1

    cmp-long v2, v4, v2

    if-eqz v2, :cond_2

    new-instance v3, Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    iget-wide v4, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->upperSet:J

    not-long p1, p1

    and-long v6, v0, p1

    iget-wide v8, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerBound:J

    iget-object v10, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->belowBound:[J

    invoke-direct/range {v3 .. v10}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;-><init>(JJJ[J)V

    return-object v3

    :cond_0
    invoke-static {v0, v1, v7, v8}, Laa4;->g(JJ)I

    move-result v4

    if-ltz v4, :cond_1

    const-wide/16 v7, 0x80

    invoke-static {v0, v1, v7, v8}, Laa4;->g(JJ)I

    move-result v4

    if-gez v4, :cond_1

    long-to-int p1, v0

    add-int/lit8 p1, p1, -0x40

    shl-long p1, v5, p1

    iget-wide v0, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->upperSet:J

    and-long v4, v0, p1

    cmp-long v2, v4, v2

    if-eqz v2, :cond_2

    new-instance v3, Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    not-long p1, p1

    and-long v4, v0, p1

    iget-wide v6, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerSet:J

    iget-wide v8, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerBound:J

    iget-object v10, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->belowBound:[J

    invoke-direct/range {v3 .. v10}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;-><init>(JJJ[J)V

    return-object v3

    :cond_1
    invoke-static {v0, v1, v2, v3}, Laa4;->g(JJ)I

    move-result v0

    if-gez v0, :cond_2

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->belowBound:[J

    if-eqz v0, :cond_2

    invoke-static {v0, p1, p2}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->binarySearch([JJ)I

    move-result p1

    if-ltz p1, :cond_2

    new-instance v1, Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    iget-wide v2, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->upperSet:J

    iget-wide v4, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerSet:J

    iget-wide v6, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerBound:J

    invoke-static {v0, p1}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->withIdRemovedAt([JI)[J

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;-><init>(JJJ[J)V

    return-object v1

    :cond_2
    return-object p0
.end method

.method public final fastForEach(Lnl3;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Ljava/lang/Long;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->access$getBelowBound$p(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)[J

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_0

    aget-wide v4, v0, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p1, v4}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->access$getLowerSet$p(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    const-wide/16 v2, 0x1

    const/16 v6, 0x40

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    if-ge v0, v6, :cond_2

    invoke-static {p0}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->access$getLowerSet$p(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)J

    move-result-wide v7

    shl-long v9, v2, v0

    and-long/2addr v7, v9

    cmp-long v7, v7, v4

    if-eqz v7, :cond_1

    invoke-static {p0}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->access$getLowerBound$p(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)J

    move-result-wide v7

    int-to-long v9, v0

    add-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {p1, v7}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-static {p0}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->access$getUpperSet$p(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)J

    move-result-wide v7

    cmp-long v0, v7, v4

    if-eqz v0, :cond_4

    :goto_2
    if-ge v1, v6, :cond_4

    invoke-static {p0}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->access$getUpperSet$p(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)J

    move-result-wide v7

    shl-long v9, v2, v1

    and-long/2addr v7, v9

    cmp-long v0, v7, v4

    if-eqz v0, :cond_3

    invoke-static {p0}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->access$getLowerBound$p(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)J

    move-result-wide v7

    int-to-long v9, v1

    add-long/2addr v7, v9

    const-wide/16 v9, 0x40

    add-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final get(J)Z
    .locals 11

    iget-wide v0, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerBound:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Laa4;->g(JJ)I

    move-result v4

    const-wide/16 v5, 0x1

    const-wide/16 v7, 0x40

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-ltz v4, :cond_1

    invoke-static {v0, v1, v7, v8}, Laa4;->g(JJ)I

    move-result v4

    if-gez v4, :cond_1

    long-to-int p1, v0

    shl-long p1, v5, p1

    iget-wide v0, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerSet:J

    and-long p0, p1, v0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_0

    return v9

    :cond_0
    return v10

    :cond_1
    invoke-static {v0, v1, v7, v8}, Laa4;->g(JJ)I

    move-result v4

    if-ltz v4, :cond_3

    const-wide/16 v7, 0x80

    invoke-static {v0, v1, v7, v8}, Laa4;->g(JJ)I

    move-result v4

    if-gez v4, :cond_3

    long-to-int p1, v0

    add-int/lit8 p1, p1, -0x40

    shl-long p1, v5, p1

    iget-wide v0, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->upperSet:J

    and-long p0, p1, v0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_2

    return v9

    :cond_2
    return v10

    :cond_3
    invoke-static {v0, v1, v2, v3}, Laa4;->g(JJ)I

    move-result v0

    if-lez v0, :cond_4

    return v10

    :cond_4
    iget-object p0, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->belowBound:[J

    if-eqz p0, :cond_5

    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->binarySearch([JJ)I

    move-result p0

    if-ltz p0, :cond_5

    return v9

    :cond_5
    return v10
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet$iterator$1;-><init>(Landroidx/compose/runtime/snapshots/SnapshotIdSet;Le02;)V

    invoke-static {v0}, Lly1;->d(Lbm3;)Lap7;

    move-result-object p0

    return-object p0
.end method

.method public final lowest(J)J
    .locals 5

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->belowBound:[J

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    aget-wide p0, v0, p0

    return-wide p0

    :cond_0
    iget-wide v0, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerSet:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-wide p0, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerBound:J

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result p2

    int-to-long v0, p2

    add-long/2addr p0, v0

    return-wide p0

    :cond_1
    iget-wide v0, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->upperSet:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    iget-wide p0, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerBound:J

    const-wide/16 v2, 0x40

    add-long/2addr p0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result p2

    int-to-long v0, p2

    add-long/2addr p0, v0

    return-wide p0

    :cond_2
    return-wide p1
.end method

.method public final or(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)Landroidx/compose/runtime/snapshots/SnapshotIdSet;
    .locals 13

    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->EMPTY:Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    if-ne p0, v0, :cond_1

    return-object p1

    :cond_1
    iget-wide v0, p1, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerBound:J

    iget-wide v7, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerBound:J

    cmp-long v0, v0, v7

    if-nez v0, :cond_2

    iget-object v0, p1, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->belowBound:[J

    iget-object v9, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->belowBound:[J

    if-ne v0, v9, :cond_2

    new-instance v2, Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    iget-wide v0, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->upperSet:J

    iget-wide v3, p1, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->upperSet:J

    or-long/2addr v3, v0

    iget-wide v0, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerSet:J

    iget-wide p0, p1, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerSet:J

    or-long v5, v0, p0

    invoke-direct/range {v2 .. v9}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;-><init>(JJJ[J)V

    return-object v2

    :cond_2
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->belowBound:[J

    const-wide/16 v1, 0x40

    const-wide/16 v3, 0x1

    const/16 v5, 0x40

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    if-nez v0, :cond_8

    invoke-static {p0}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->access$getBelowBound$p(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)[J

    move-result-object v0

    if-eqz v0, :cond_3

    array-length v9, v0

    move v10, v6

    :goto_0
    if-ge v10, v9, :cond_3

    aget-wide v11, v0, v10

    invoke-virtual {p1, v11, v12}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->set(J)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object p1

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_3
    invoke-static {p0}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->access$getLowerSet$p(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)J

    move-result-wide v9

    cmp-long v0, v9, v7

    if-eqz v0, :cond_5

    move v0, v6

    :goto_1
    if-ge v0, v5, :cond_5

    invoke-static {p0}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->access$getLowerSet$p(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)J

    move-result-wide v9

    shl-long v11, v3, v0

    and-long/2addr v9, v11

    cmp-long v9, v9, v7

    if-eqz v9, :cond_4

    invoke-static {p0}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->access$getLowerBound$p(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)J

    move-result-wide v9

    int-to-long v11, v0

    add-long/2addr v9, v11

    invoke-virtual {p1, v9, v10}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->set(J)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object p1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    invoke-static {p0}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->access$getUpperSet$p(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)J

    move-result-wide v9

    cmp-long v0, v9, v7

    if-eqz v0, :cond_7

    :goto_2
    if-ge v6, v5, :cond_7

    invoke-static {p0}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->access$getUpperSet$p(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)J

    move-result-wide v9

    shl-long v11, v3, v6

    and-long/2addr v9, v11

    cmp-long v0, v9, v7

    if-eqz v0, :cond_6

    invoke-static {p0}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->access$getLowerBound$p(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)J

    move-result-wide v9

    int-to-long v11, v6

    add-long/2addr v9, v11

    add-long/2addr v9, v1

    invoke-virtual {p1, v9, v10}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->set(J)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object p1

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_7
    return-object p1

    :cond_8
    invoke-static {p1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->access$getBelowBound$p(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)[J

    move-result-object v0

    if-eqz v0, :cond_9

    array-length v9, v0

    move v10, v6

    :goto_3
    if-ge v10, v9, :cond_9

    aget-wide v11, v0, v10

    invoke-virtual {p0, v11, v12}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->set(J)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object p0

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_9
    invoke-static {p1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->access$getLowerSet$p(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)J

    move-result-wide v9

    cmp-long v0, v9, v7

    if-eqz v0, :cond_b

    move v0, v6

    :goto_4
    if-ge v0, v5, :cond_b

    invoke-static {p1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->access$getLowerSet$p(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)J

    move-result-wide v9

    shl-long v11, v3, v0

    and-long/2addr v9, v11

    cmp-long v9, v9, v7

    if-eqz v9, :cond_a

    invoke-static {p1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->access$getLowerBound$p(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)J

    move-result-wide v9

    int-to-long v11, v0

    add-long/2addr v9, v11

    invoke-virtual {p0, v9, v10}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->set(J)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object p0

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_b
    invoke-static {p1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->access$getUpperSet$p(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)J

    move-result-wide v9

    cmp-long v0, v9, v7

    if-eqz v0, :cond_d

    :goto_5
    if-ge v6, v5, :cond_d

    invoke-static {p1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->access$getUpperSet$p(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)J

    move-result-wide v9

    shl-long v11, v3, v6

    and-long/2addr v9, v11

    cmp-long v0, v9, v7

    if-eqz v0, :cond_c

    invoke-static {p1}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->access$getLowerBound$p(Landroidx/compose/runtime/snapshots/SnapshotIdSet;)J

    move-result-wide v9

    int-to-long v11, v6

    add-long/2addr v9, v11

    add-long/2addr v9, v1

    invoke-virtual {p0, v9, v10}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->set(J)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object p0

    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_d
    return-object p0
.end method

.method public final set(J)Landroidx/compose/runtime/snapshots/SnapshotIdSet;
    .locals 27

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    iget-wide v3, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerBound:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x0

    invoke-static {v3, v4, v5, v6}, Laa4;->g(JJ)I

    move-result v7

    const-wide/16 v8, 0x40

    const-wide/16 v10, 0x1

    if-ltz v7, :cond_0

    invoke-static {v3, v4, v8, v9}, Laa4;->g(JJ)I

    move-result v7

    if-gez v7, :cond_0

    long-to-int v1, v3

    shl-long v1, v10, v1

    iget-wide v3, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerSet:J

    and-long v7, v3, v1

    cmp-long v5, v7, v5

    if-nez v5, :cond_d

    new-instance v6, Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    iget-wide v7, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->upperSet:J

    or-long v9, v3, v1

    iget-wide v11, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerBound:J

    iget-object v13, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->belowBound:[J

    invoke-direct/range {v6 .. v13}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;-><init>(JJJ[J)V

    return-object v6

    :cond_0
    invoke-static {v3, v4, v8, v9}, Laa4;->g(JJ)I

    move-result v7

    const/16 v12, 0x40

    const-wide/16 v13, 0x80

    if-ltz v7, :cond_1

    invoke-static {v3, v4, v13, v14}, Laa4;->g(JJ)I

    move-result v7

    if-gez v7, :cond_1

    long-to-int v1, v3

    sub-int/2addr v1, v12

    shl-long v1, v10, v1

    iget-wide v3, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->upperSet:J

    and-long v7, v3, v1

    cmp-long v5, v7, v5

    if-nez v5, :cond_d

    new-instance v6, Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    or-long v7, v3, v1

    iget-wide v9, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerSet:J

    iget-wide v11, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerBound:J

    iget-object v13, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->belowBound:[J

    invoke-direct/range {v6 .. v13}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;-><init>(JJJ[J)V

    return-object v6

    :cond_1
    invoke-static {v3, v4, v13, v14}, Laa4;->g(JJ)I

    move-result v3

    if-ltz v3, :cond_b

    invoke-virtual/range {p0 .. p2}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->get(J)Z

    move-result v3

    if-nez v3, :cond_d

    iget-wide v13, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->upperSet:J

    move-wide v15, v8

    iget-wide v8, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerSet:J

    move-wide/from16 v17, v10

    iget-wide v10, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerBound:J

    add-long v19, v1, v17

    div-long v19, v19, v15

    move-wide/from16 v21, v13

    mul-long v12, v19, v15

    invoke-static {v12, v13, v5, v6}, Laa4;->g(JJ)I

    move-result v7

    if-gez v7, :cond_2

    const-wide v12, 0x7fffffffffffff80L

    :cond_2
    const/4 v7, 0x0

    move-wide/from16 v20, v21

    :goto_0
    invoke-static {v10, v11, v12, v13}, Laa4;->g(JJ)I

    move-result v14

    if-gez v14, :cond_8

    cmp-long v14, v8, v5

    if-eqz v14, :cond_6

    if-nez v7, :cond_3

    new-instance v7, Landroidx/compose/runtime/snapshots/SnapshotIdArrayBuilder;

    iget-object v14, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->belowBound:[J

    invoke-direct {v7, v14}, Landroidx/compose/runtime/snapshots/SnapshotIdArrayBuilder;-><init>([J)V

    :cond_3
    const/4 v3, 0x0

    const/16 v14, 0x40

    :goto_1
    if-ge v3, v14, :cond_5

    shl-long v22, v17, v3

    and-long v22, v8, v22

    cmp-long v19, v22, v5

    move-wide/from16 v22, v5

    const/4 v6, 0x0

    if-eqz v19, :cond_4

    int-to-long v4, v3

    add-long/2addr v4, v10

    invoke-virtual {v7, v4, v5}, Landroidx/compose/runtime/snapshots/SnapshotIdArrayBuilder;->add(J)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v5, v22

    goto :goto_1

    :cond_5
    :goto_2
    move-wide/from16 v22, v5

    const/4 v6, 0x0

    goto :goto_3

    :cond_6
    const/16 v14, 0x40

    goto :goto_2

    :goto_3
    cmp-long v3, v20, v22

    if-nez v3, :cond_7

    move-wide/from16 v24, v12

    goto :goto_4

    :cond_7
    add-long/2addr v10, v15

    move-wide/from16 v8, v20

    move-wide/from16 v5, v22

    move-wide/from16 v20, v5

    goto :goto_0

    :cond_8
    move-wide/from16 v22, v8

    move-wide/from16 v24, v10

    :goto_4
    new-instance v19, Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    if-eqz v7, :cond_a

    invoke-virtual {v7}, Landroidx/compose/runtime/snapshots/SnapshotIdArrayBuilder;->toArray()[J

    move-result-object v3

    if-nez v3, :cond_9

    goto :goto_6

    :cond_9
    :goto_5
    move-object/from16 v26, v3

    goto :goto_7

    :cond_a
    :goto_6
    iget-object v3, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->belowBound:[J

    goto :goto_5

    :goto_7
    invoke-direct/range {v19 .. v26}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;-><init>(JJJ[J)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v2}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->set(J)Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    move-result-object v0

    return-object v0

    :cond_b
    const/4 v6, 0x0

    iget-object v3, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->belowBound:[J

    const/4 v4, 0x1

    if-nez v3, :cond_c

    new-instance v7, Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    iget-wide v8, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->upperSet:J

    iget-wide v10, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerSet:J

    iget-wide v12, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerBound:J

    new-array v14, v4, [J

    aput-wide v1, v14, v6

    invoke-direct/range {v7 .. v14}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;-><init>(JJJ[J)V

    return-object v7

    :cond_c
    invoke-static {v3, v1, v2}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->binarySearch([JJ)I

    move-result v5

    if-gez v5, :cond_d

    add-int/2addr v5, v4

    neg-int v4, v5

    invoke-static {v3, v4, v1, v2}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->withIdInsertedAt([JIJ)[J

    move-result-object v12

    new-instance v5, Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    iget-wide v6, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->upperSet:J

    iget-wide v8, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerSet:J

    iget-wide v10, v0, Landroidx/compose/runtime/snapshots/SnapshotIdSet;->lowerBound:J

    invoke-direct/range {v5 .. v12}, Landroidx/compose/runtime/snapshots/SnapshotIdSet;-><init>(JJJ[J)V

    return-object v5

    :cond_d
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/16 v9, 0x3f

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v10}, Landroidx/compose/runtime/snapshots/ListUtilsKt;->fastJoinToString$default(Ljava/util/List;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lnl3;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x5d

    invoke-static {v0, p0, v1}, Lxp;->e(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
