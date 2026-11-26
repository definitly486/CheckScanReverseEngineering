.class public final Lyads/ai5;
.super Lyads/zh5;
.source "SourceFile"


# instance fields
.field public final j:Ljava/util/List;


# direct methods
.method public constructor <init>(Lyads/y35;JJJJLjava/util/List;JLjava/util/List;JJ)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-object/from16 v10, p10

    move-wide/from16 v11, p11

    move-wide/from16 v13, p14

    move-wide/from16 v15, p16

    invoke-direct/range {v0 .. v16}, Lyads/zh5;-><init>(Lyads/y35;JJJJLjava/util/List;JJJ)V

    move-object/from16 v1, p13

    iput-object v1, v0, Lyads/ai5;->j:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(J)J
    .locals 0

    .line 14
    iget-object p0, p0, Lyads/ai5;->j:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method public final a(Lyads/m75;J)Lyads/y35;
    .locals 2

    iget-object p1, p0, Lyads/ai5;->j:Ljava/util/List;

    iget-wide v0, p0, Lyads/zh5;->d:J

    sub-long/2addr p2, v0

    long-to-int p0, p2

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/y35;

    return-object p0
.end method

.method public final a()Z
    .locals 0

    .line 13
    const/4 p0, 0x1

    return p0
.end method
