.class public final Lcom/monetization/ads/exo/source/dash/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/ku3;


# instance fields
.field public final synthetic b:Lcom/monetization/ads/exo/source/dash/i;


# direct methods
.method public constructor <init>(Lcom/monetization/ads/exo/source/dash/i;)V
    .locals 0

    iput-object p1, p0, Lcom/monetization/ads/exo/source/dash/g;->b:Lcom/monetization/ads/exo/source/dash/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lyads/nu3;JJLjava/io/IOException;I)Lyads/lu3;
    .locals 16

    move-object/from16 v0, p6

    .line 80
    move-object/from16 v1, p1

    check-cast v1, Lyads/jt4;

    move-object/from16 v2, p0

    .line 81
    iget-object v2, v2, Lcom/monetization/ads/exo/source/dash/g;->b:Lcom/monetization/ads/exo/source/dash/i;

    .line 82
    iget-object v3, v2, Lcom/monetization/ads/exo/source/dash/i;->q:Lyads/k14;

    .line 83
    new-instance v4, Lyads/cu3;

    iget-wide v5, v1, Lyads/jt4;->a:J

    .line 84
    iget-object v5, v1, Lyads/jt4;->d:Lyads/rq5;

    .line 85
    iget-object v5, v5, Lyads/rq5;->c:Landroid/net/Uri;

    .line 86
    invoke-direct {v4}, Lyads/cu3;-><init>()V

    iget v7, v1, Lyads/jt4;->c:I

    .line 87
    new-instance v6, Lyads/r04;

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 88
    invoke-virtual {v3, v8, v9}, Lyads/k14;->a(J)J

    move-result-wide v12

    .line 89
    invoke-virtual {v3, v8, v9}, Lyads/k14;->a(J)J

    move-result-wide v14

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v6 .. v15}, Lyads/r04;-><init>(IILyads/vz2;ILjava/lang/Object;JJ)V

    const/4 v1, 0x1

    .line 90
    invoke-virtual {v3, v4, v6, v0, v1}, Lyads/k14;->a(Lyads/cu3;Lyads/r04;Ljava/io/IOException;Z)V

    .line 91
    iget-object v1, v2, Lcom/monetization/ads/exo/source/dash/i;->n:Lyads/ll0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    invoke-virtual {v2, v0}, Lcom/monetization/ads/exo/source/dash/i;->a(Ljava/io/IOException;)V

    .line 93
    sget-object v0, Lyads/ru3;->d:Lyads/lu3;

    return-object v0
.end method

.method public final a(Lyads/nu3;JJ)V
    .locals 10

    check-cast p1, Lyads/jt4;

    iget-object p0, p0, Lcom/monetization/ads/exo/source/dash/g;->b:Lcom/monetization/ads/exo/source/dash/i;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p4, Lyads/cu3;

    iget-wide v0, p1, Lyads/jt4;->a:J

    iget-object p5, p1, Lyads/jt4;->d:Lyads/rq5;

    iget-object p5, p5, Lyads/rq5;->c:Landroid/net/Uri;

    invoke-direct {p4}, Lyads/cu3;-><init>()V

    iget-object p5, p0, Lcom/monetization/ads/exo/source/dash/i;->n:Lyads/ll0;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p5, p0, Lcom/monetization/ads/exo/source/dash/i;->q:Lyads/k14;

    iget v1, p1, Lyads/jt4;->c:I

    new-instance v0, Lyads/r04;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {p5, v2, v3}, Lyads/k14;->a(J)J

    move-result-wide v6

    invoke-virtual {p5, v2, v3}, Lyads/k14;->a(J)J

    move-result-wide v8

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v9}, Lyads/r04;-><init>(IILyads/vz2;ILjava/lang/Object;JJ)V

    invoke-virtual {p5, p4, v0}, Lyads/k14;->b(Lyads/cu3;Lyads/r04;)V

    iget-object p1, p1, Lyads/jt4;->f:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p4

    sub-long/2addr p4, p2

    iput-wide p4, p0, Lcom/monetization/ads/exo/source/dash/i;->L:J

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/monetization/ads/exo/source/dash/i;->a(Z)V

    return-void
.end method

.method public final a(Lyads/nu3;JJZ)V
    .locals 11

    .line 68
    check-cast p1, Lyads/jt4;

    .line 69
    iget-object p0, p0, Lcom/monetization/ads/exo/source/dash/g;->b:Lcom/monetization/ads/exo/source/dash/i;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    new-instance v0, Lyads/cu3;

    iget-wide v1, p1, Lyads/jt4;->a:J

    .line 71
    iget-object v1, p1, Lyads/jt4;->d:Lyads/rq5;

    .line 72
    iget-object v1, v1, Lyads/rq5;->c:Landroid/net/Uri;

    .line 73
    invoke-direct {v0}, Lyads/cu3;-><init>()V

    .line 74
    iget-object v1, p0, Lcom/monetization/ads/exo/source/dash/i;->n:Lyads/ll0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    iget-object p0, p0, Lcom/monetization/ads/exo/source/dash/i;->q:Lyads/k14;

    iget v2, p1, Lyads/jt4;->c:I

    .line 76
    new-instance v1, Lyads/r04;

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 77
    invoke-virtual {p0, v3, v4}, Lyads/k14;->a(J)J

    move-result-wide v7

    .line 78
    invoke-virtual {p0, v3, v4}, Lyads/k14;->a(J)J

    move-result-wide v9

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v10}, Lyads/r04;-><init>(IILyads/vz2;ILjava/lang/Object;JJ)V

    .line 79
    invoke-virtual {p0, v0, v1}, Lyads/k14;->a(Lyads/cu3;Lyads/r04;)V

    return-void
.end method
