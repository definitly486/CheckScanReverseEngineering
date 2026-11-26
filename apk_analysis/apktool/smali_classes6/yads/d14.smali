.class public final Lyads/d14;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/hx5;

.field public final b:Lyads/jx5;

.field public final c:Lyads/ge;

.field public final d:Landroid/os/Handler;

.field public e:J

.field public f:I

.field public g:Z

.field public h:Lyads/a14;

.field public i:Lyads/a14;

.field public j:Lyads/a14;

.field public k:I

.field public l:Ljava/lang/Object;

.field public m:J


# direct methods
.method public constructor <init>(Lyads/ge;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/d14;->c:Lyads/ge;

    iput-object p2, p0, Lyads/d14;->d:Landroid/os/Handler;

    new-instance p1, Lyads/hx5;

    invoke-direct {p1}, Lyads/hx5;-><init>()V

    iput-object p1, p0, Lyads/d14;->a:Lyads/hx5;

    new-instance p1, Lyads/jx5;

    invoke-direct {p1}, Lyads/jx5;-><init>()V

    iput-object p1, p0, Lyads/d14;->b:Lyads/jx5;

    return-void
.end method

.method public static a(Lyads/kx5;Ljava/lang/Object;JJLyads/jx5;Lyads/hx5;)Lyads/h14;
    .locals 6

    .line 614
    invoke-virtual {p0, p1, p7}, Lyads/kx5;->a(Ljava/lang/Object;Lyads/hx5;)Lyads/hx5;

    .line 615
    iget v0, p7, Lyads/hx5;->d:I

    const-wide/16 v1, 0x0

    .line 616
    invoke-virtual {p0, v0, p6, v1, v2}, Lyads/kx5;->a(ILyads/jx5;J)Lyads/jx5;

    .line 617
    invoke-virtual {p0, p1}, Lyads/kx5;->a(Ljava/lang/Object;)I

    move-result v0

    .line 618
    :goto_0
    iget-wide v3, p7, Lyads/hx5;->e:J

    cmp-long v3, v3, v1

    const/4 v4, -0x1

    if-nez v3, :cond_0

    .line 619
    iget-object v3, p7, Lyads/hx5;->h:Lyads/a6;

    iget v5, v3, Lyads/a6;->b:I

    if-lez v5, :cond_0

    .line 620
    iget v5, v3, Lyads/a6;->e:I

    .line 621
    invoke-virtual {v3, v5}, Lyads/a6;->a(I)Lyads/z5;

    move-result-object v3

    iget-boolean v3, v3, Lyads/z5;->h:Z

    if-eqz v3, :cond_0

    .line 622
    invoke-virtual {p7, v1, v2}, Lyads/hx5;->b(J)I

    move-result v3

    if-ne v3, v4, :cond_0

    add-int/lit8 v3, v0, 0x1

    iget v5, p6, Lyads/jx5;->q:I

    if-ge v0, v5, :cond_0

    const/4 p1, 0x1

    .line 623
    invoke-virtual {p0, v3, p7, p1}, Lyads/kx5;->a(ILyads/hx5;Z)Lyads/hx5;

    .line 624
    iget-object p1, p7, Lyads/hx5;->c:Ljava/lang/Object;

    .line 625
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v0, v3

    goto :goto_0

    .line 626
    :cond_0
    invoke-virtual {p0, p1, p7}, Lyads/kx5;->a(Ljava/lang/Object;Lyads/hx5;)Lyads/hx5;

    move-wide v0, p2

    .line 627
    invoke-virtual {p7, v0, v1}, Lyads/hx5;->b(J)I

    move-result p2

    if-ne p2, v4, :cond_1

    .line 628
    invoke-virtual {p7, v0, v1}, Lyads/hx5;->a(J)I

    move-result p0

    .line 629
    new-instance p2, Lyads/h14;

    invoke-direct {p2, p1, p4, p5, p0}, Lyads/h14;-><init>(Ljava/lang/Object;JI)V

    return-object p2

    .line 630
    :cond_1
    invoke-virtual {p7, p2}, Lyads/hx5;->a(I)I

    move-result p3

    .line 631
    new-instance p0, Lyads/h14;

    invoke-direct/range {p0 .. p5}, Lyads/h14;-><init>(Ljava/lang/Object;IIJ)V

    return-object p0
.end method


# virtual methods
.method public final a()Lyads/a14;
    .locals 3

    .line 692
    iget-object v0, p0, Lyads/d14;->h:Lyads/a14;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 693
    :cond_0
    iget-object v2, p0, Lyads/d14;->i:Lyads/a14;

    if-ne v0, v2, :cond_1

    .line 694
    iget-object v2, v0, Lyads/a14;->l:Lyads/a14;

    .line 695
    iput-object v2, p0, Lyads/d14;->i:Lyads/a14;

    .line 696
    :cond_1
    invoke-virtual {v0}, Lyads/a14;->b()V

    .line 697
    iget v0, p0, Lyads/d14;->k:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lyads/d14;->k:I

    if-nez v0, :cond_2

    .line 698
    iput-object v1, p0, Lyads/d14;->j:Lyads/a14;

    .line 699
    iget-object v0, p0, Lyads/d14;->h:Lyads/a14;

    iget-object v1, v0, Lyads/a14;->b:Ljava/lang/Object;

    iput-object v1, p0, Lyads/d14;->l:Ljava/lang/Object;

    .line 700
    iget-object v0, v0, Lyads/a14;->f:Lyads/c14;

    iget-object v0, v0, Lyads/c14;->a:Lyads/h14;

    iget-wide v0, v0, Lyads/b14;->d:J

    iput-wide v0, p0, Lyads/d14;->m:J

    .line 701
    :cond_2
    iget-object v0, p0, Lyads/d14;->h:Lyads/a14;

    .line 702
    iget-object v0, v0, Lyads/a14;->l:Lyads/a14;

    .line 703
    iput-object v0, p0, Lyads/d14;->h:Lyads/a14;

    .line 704
    invoke-virtual {p0}, Lyads/d14;->c()V

    .line 705
    iget-object p0, p0, Lyads/d14;->h:Lyads/a14;

    return-object p0
.end method

.method public final a(Lyads/kx5;Ljava/lang/Object;IIJJ)Lyads/c14;
    .locals 14

    .line 706
    new-instance v0, Lyads/h14;

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-wide/from16 v4, p7

    invoke-direct/range {v0 .. v5}, Lyads/h14;-><init>(Ljava/lang/Object;IIJ)V

    .line 707
    iget-object v1, p0, Lyads/d14;->a:Lyads/hx5;

    move-object/from16 v4, p2

    .line 708
    invoke-virtual {p1, v4, v1}, Lyads/kx5;->a(Ljava/lang/Object;Lyads/hx5;)Lyads/hx5;

    move-result-object p1

    .line 709
    invoke-virtual {p1, v2, v3}, Lyads/hx5;->a(II)J

    move-result-wide v8

    .line 710
    iget-object p1, p0, Lyads/d14;->a:Lyads/hx5;

    invoke-virtual {p1, v2}, Lyads/hx5;->a(I)I

    move-result p1

    const-wide/16 v4, 0x0

    if-ne v3, p1, :cond_0

    .line 711
    iget-object p1, p0, Lyads/d14;->a:Lyads/hx5;

    .line 712
    iget-object p1, p1, Lyads/hx5;->h:Lyads/a6;

    .line 713
    iget-wide v6, p1, Lyads/a6;->c:J

    goto :goto_0

    :cond_0
    move-wide v6, v4

    .line 714
    :goto_0
    iget-object p0, p0, Lyads/d14;->a:Lyads/hx5;

    .line 715
    iget-object p0, p0, Lyads/hx5;->h:Lyads/a6;

    .line 716
    invoke-virtual {p0, v2}, Lyads/a6;->a(I)Lyads/z5;

    move-result-object p0

    iget-boolean v10, p0, Lyads/z5;->h:Z

    const-wide p0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p0, v8, p0

    if-eqz p0, :cond_1

    cmp-long p0, v6, v8

    if-ltz p0, :cond_1

    const-wide/16 p0, 0x1

    sub-long p0, v8, p0

    .line 717
    invoke-static {v4, v5, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    :cond_1
    move-object v1, v0

    move-wide v2, v6

    .line 718
    new-instance v0, Lyads/c14;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v11, 0x0

    move-wide/from16 v4, p5

    invoke-direct/range {v0 .. v13}, Lyads/c14;-><init>(Lyads/h14;JJJJZZZZ)V

    return-object v0
.end method

.method public final a(Lyads/kx5;Ljava/lang/Object;JJJ)Lyads/c14;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    .line 719
    iget-object v5, v0, Lyads/d14;->a:Lyads/hx5;

    invoke-virtual {v1, v2, v5}, Lyads/kx5;->a(Ljava/lang/Object;Lyads/hx5;)Lyads/hx5;

    .line 720
    iget-object v5, v0, Lyads/d14;->a:Lyads/hx5;

    invoke-virtual {v5, v3, v4}, Lyads/hx5;->a(J)I

    move-result v5

    .line 721
    iget-object v6, v0, Lyads/d14;->a:Lyads/hx5;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, -0x1

    if-ne v5, v9, :cond_1

    .line 722
    iget-object v6, v6, Lyads/hx5;->h:Lyads/a6;

    .line 723
    iget v10, v6, Lyads/a6;->b:I

    if-lez v10, :cond_0

    .line 724
    iget v10, v6, Lyads/a6;->e:I

    .line 725
    invoke-virtual {v6, v10}, Lyads/a6;->a(I)Lyads/z5;

    move-result-object v6

    iget-boolean v6, v6, Lyads/z5;->h:Z

    if-eqz v6, :cond_0

    move v6, v7

    goto :goto_2

    :cond_0
    :goto_0
    move v6, v8

    goto :goto_2

    .line 726
    :cond_1
    iget-object v6, v6, Lyads/hx5;->h:Lyads/a6;

    .line 727
    invoke-virtual {v6, v5}, Lyads/a6;->a(I)Lyads/z5;

    move-result-object v6

    iget-boolean v6, v6, Lyads/z5;->h:Z

    if-eqz v6, :cond_0

    .line 728
    iget-object v6, v0, Lyads/d14;->a:Lyads/hx5;

    .line 729
    iget-object v6, v6, Lyads/hx5;->h:Lyads/a6;

    .line 730
    invoke-virtual {v6, v5}, Lyads/a6;->a(I)Lyads/z5;

    move-result-object v6

    iget-wide v10, v6, Lyads/z5;->b:J

    .line 731
    iget-object v6, v0, Lyads/d14;->a:Lyads/hx5;

    iget-wide v12, v6, Lyads/hx5;->e:J

    cmp-long v10, v10, v12

    if-nez v10, :cond_0

    .line 732
    iget-object v6, v6, Lyads/hx5;->h:Lyads/a6;

    .line 733
    invoke-virtual {v6, v5}, Lyads/a6;->a(I)Lyads/z5;

    move-result-object v6

    .line 734
    iget v10, v6, Lyads/z5;->c:I

    if-ne v10, v9, :cond_2

    goto :goto_0

    :cond_2
    move v10, v8

    .line 735
    :goto_1
    iget v11, v6, Lyads/z5;->c:I

    if-ge v10, v11, :cond_4

    .line 736
    iget-object v11, v6, Lyads/z5;->e:[I

    aget v11, v11, v10

    if-eqz v11, :cond_0

    if-ne v11, v7, :cond_3

    goto :goto_0

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_4
    move v6, v7

    move v5, v9

    .line 737
    :goto_2
    new-instance v11, Lyads/h14;

    move-wide/from16 v12, p7

    invoke-direct {v11, v2, v12, v13, v5}, Lyads/h14;-><init>(Ljava/lang/Object;JI)V

    .line 738
    invoke-virtual {v11}, Lyads/b14;->a()Z

    move-result v10

    if-nez v10, :cond_5

    if-ne v5, v9, :cond_5

    move v10, v7

    goto :goto_3

    :cond_5
    move v10, v8

    .line 739
    :goto_3
    invoke-virtual {v11}, Lyads/b14;->a()Z

    move-result v12

    const-wide/16 v13, 0x0

    if-nez v12, :cond_6

    if-ne v5, v9, :cond_6

    .line 740
    iget-object v12, v0, Lyads/d14;->a:Lyads/hx5;

    invoke-virtual {v1, v2, v12}, Lyads/kx5;->a(Ljava/lang/Object;Lyads/hx5;)Lyads/hx5;

    move-result-object v12

    iget v12, v12, Lyads/hx5;->d:I

    .line 741
    invoke-virtual/range {p1 .. p2}, Lyads/kx5;->a(Ljava/lang/Object;)I

    move-result v2

    .line 742
    iget-object v15, v0, Lyads/d14;->b:Lyads/jx5;

    .line 743
    invoke-virtual {v1, v12, v15, v13, v14}, Lyads/kx5;->a(ILyads/jx5;J)Lyads/jx5;

    move-result-object v12

    .line 744
    iget v12, v12, Lyads/jx5;->q:I

    if-ne v12, v2, :cond_6

    move/from16 v22, v7

    goto :goto_4

    :cond_6
    move/from16 v22, v8

    .line 745
    :goto_4
    invoke-virtual {v0, v1, v11, v10}, Lyads/d14;->a(Lyads/kx5;Lyads/h14;Z)Z

    move-result v23

    if-eq v5, v9, :cond_7

    .line 746
    iget-object v1, v0, Lyads/d14;->a:Lyads/hx5;

    .line 747
    iget-object v1, v1, Lyads/hx5;->h:Lyads/a6;

    .line 748
    invoke-virtual {v1, v5}, Lyads/a6;->a(I)Lyads/z5;

    move-result-object v1

    iget-boolean v1, v1, Lyads/z5;->h:Z

    if-eqz v1, :cond_7

    move/from16 v20, v7

    goto :goto_5

    :cond_7
    move/from16 v20, v8

    :goto_5
    if-eq v5, v9, :cond_8

    .line 749
    iget-object v9, v0, Lyads/d14;->a:Lyads/hx5;

    .line 750
    iget-object v9, v9, Lyads/hx5;->h:Lyads/a6;

    .line 751
    invoke-virtual {v9, v5}, Lyads/a6;->a(I)Lyads/z5;

    move-result-object v5

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iget-wide v1, v5, Lyads/z5;->b:J

    :goto_6
    move-wide/from16 v16, v1

    goto :goto_7

    :cond_8
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v6, :cond_9

    .line 752
    iget-object v1, v0, Lyads/d14;->a:Lyads/hx5;

    iget-wide v1, v1, Lyads/hx5;->e:J

    goto :goto_6

    :cond_9
    move-wide/from16 v16, p1

    :goto_7
    cmp-long v1, v16, p1

    if-eqz v1, :cond_b

    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v1, v16, v1

    if-nez v1, :cond_a

    goto :goto_8

    :cond_a
    move-wide/from16 v18, v16

    goto :goto_9

    .line 753
    :cond_b
    :goto_8
    iget-object v0, v0, Lyads/d14;->a:Lyads/hx5;

    iget-wide v0, v0, Lyads/hx5;->e:J

    move-wide/from16 v18, v0

    :goto_9
    cmp-long v0, v18, p1

    if-eqz v0, :cond_e

    cmp-long v0, v3, v18

    if-ltz v0, :cond_e

    if-nez v23, :cond_d

    if-nez v6, :cond_c

    goto :goto_a

    :cond_c
    move v7, v8

    :cond_d
    :goto_a
    int-to-long v0, v7

    sub-long v0, v18, v0

    .line 754
    invoke-static {v13, v14, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    move-wide v12, v0

    :goto_b
    move/from16 v21, v10

    goto :goto_c

    :cond_e
    move-wide v12, v3

    goto :goto_b

    .line 755
    :goto_c
    new-instance v10, Lyads/c14;

    move-wide/from16 v14, p5

    invoke-direct/range {v10 .. v23}, Lyads/c14;-><init>(Lyads/h14;JJJJZZZZ)V

    return-object v10
.end method

.method public final a(Lyads/kx5;Lyads/a14;J)Lyads/c14;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v9, p2

    iget-object v10, v9, Lyads/a14;->f:Lyads/c14;

    iget-wide v2, v9, Lyads/a14;->o:J

    iget-wide v4, v10, Lyads/c14;->e:J

    add-long/2addr v2, v4

    sub-long v7, v2, p3

    iget-boolean v2, v10, Lyads/c14;->g:Z

    iget-object v11, v10, Lyads/c14;->a:Lyads/h14;

    const/4 v13, 0x1

    const/4 v14, -0x1

    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v17, 0x0

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_8

    iget-object v2, v11, Lyads/b14;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lyads/kx5;->a(Ljava/lang/Object;)I

    move-result v2

    move-wide v4, v3

    iget-object v3, v0, Lyads/d14;->a:Lyads/hx5;

    move-wide v5, v4

    iget-object v4, v0, Lyads/d14;->b:Lyads/jx5;

    move-wide/from16 v18, v5

    iget v5, v0, Lyads/d14;->f:I

    iget-boolean v6, v0, Lyads/d14;->g:Z

    invoke-virtual/range {v1 .. v6}, Lyads/kx5;->a(ILyads/hx5;Lyads/jx5;IZ)I

    move-result v2

    if-ne v2, v14, :cond_0

    return-object v17

    :cond_0
    iget-object v3, v0, Lyads/d14;->a:Lyads/hx5;

    invoke-virtual {v1, v2, v3, v13}, Lyads/kx5;->a(ILyads/hx5;Z)Lyads/hx5;

    move-result-object v3

    iget v4, v3, Lyads/hx5;->d:I

    iget-object v3, v0, Lyads/d14;->a:Lyads/hx5;

    iget-object v3, v3, Lyads/hx5;->c:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v10, Lyads/c14;->a:Lyads/h14;

    iget-wide v5, v5, Lyads/b14;->d:J

    iget-object v11, v0, Lyads/d14;->b:Lyads/jx5;

    const-wide/16 v12, 0x0

    invoke-virtual {v1, v4, v11, v12, v13}, Lyads/kx5;->a(ILyads/jx5;J)Lyads/jx5;

    move-result-object v11

    iget v11, v11, Lyads/jx5;->p:I

    if-ne v11, v2, :cond_3

    iget-object v2, v0, Lyads/d14;->b:Lyads/jx5;

    iget-object v3, v0, Lyads/d14;->a:Lyads/hx5;

    invoke-static {v12, v13, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual/range {v1 .. v8}, Lyads/kx5;->a(Lyads/jx5;Lyads/hx5;IJJ)Landroid/util/Pair;

    move-result-object v2

    if-nez v2, :cond_1

    return-object v17

    :cond_1
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v1, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v4, v9, Lyads/a14;->l:Lyads/a14;

    if-eqz v4, :cond_2

    iget-object v5, v4, Lyads/a14;->b:Ljava/lang/Object;

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v4, v4, Lyads/a14;->f:Lyads/c14;

    iget-object v4, v4, Lyads/c14;->a:Lyads/h14;

    iget-wide v5, v4, Lyads/b14;->d:J

    :goto_0
    move-wide v12, v1

    move-object v2, v3

    move-wide v3, v12

    move-wide v12, v15

    goto :goto_1

    :cond_2
    iget-wide v5, v0, Lyads/d14;->e:J

    const-wide/16 v7, 0x1

    add-long/2addr v7, v5

    iput-wide v7, v0, Lyads/d14;->e:J

    goto :goto_0

    :cond_3
    move-object v2, v3

    move-wide v3, v12

    :goto_1
    iget-object v7, v0, Lyads/d14;->b:Lyads/jx5;

    iget-object v8, v0, Lyads/d14;->a:Lyads/hx5;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v8}, Lyads/d14;->a(Lyads/kx5;Ljava/lang/Object;JJLyads/jx5;Lyads/hx5;)Lyads/h14;

    move-result-object v2

    cmp-long v5, v12, v15

    if-eqz v5, :cond_5

    iget-wide v5, v10, Lyads/c14;->c:J

    cmp-long v5, v5, v15

    if-eqz v5, :cond_5

    iget-object v5, v10, Lyads/c14;->a:Lyads/h14;

    iget-object v5, v5, Lyads/b14;->a:Ljava/lang/Object;

    iget-object v6, v0, Lyads/d14;->a:Lyads/hx5;

    invoke-virtual {v1, v5, v6}, Lyads/kx5;->a(Ljava/lang/Object;Lyads/hx5;)Lyads/hx5;

    move-result-object v5

    iget-object v5, v5, Lyads/hx5;->h:Lyads/a6;

    iget v5, v5, Lyads/a6;->b:I

    if-lez v5, :cond_4

    iget-object v5, v0, Lyads/d14;->a:Lyads/hx5;

    iget-object v5, v5, Lyads/hx5;->h:Lyads/a6;

    iget v6, v5, Lyads/a6;->e:I

    invoke-virtual {v5, v6}, Lyads/a6;->a(I)Lyads/z5;

    move-result-object v5

    iget-boolean v5, v5, Lyads/z5;->h:Z

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v2}, Lyads/b14;->a()Z

    move-result v6

    if-eqz v6, :cond_6

    if-eqz v5, :cond_6

    iget-wide v12, v10, Lyads/c14;->c:J

    :cond_5
    :goto_3
    move-wide v5, v12

    goto :goto_4

    :cond_6
    if-eqz v5, :cond_5

    iget-wide v3, v10, Lyads/c14;->c:J

    goto :goto_3

    :goto_4
    iget-object v7, v2, Lyads/b14;->a:Ljava/lang/Object;

    iget-object v8, v0, Lyads/d14;->a:Lyads/hx5;

    invoke-virtual {v1, v7, v8}, Lyads/kx5;->a(Ljava/lang/Object;Lyads/hx5;)Lyads/hx5;

    invoke-virtual {v2}, Lyads/b14;->a()Z

    move-result v7

    iget-object v8, v2, Lyads/b14;->a:Ljava/lang/Object;

    if-eqz v7, :cond_7

    iget v3, v2, Lyads/b14;->b:I

    iget v4, v2, Lyads/b14;->c:I

    move-object v9, v8

    iget-wide v7, v2, Lyads/b14;->d:J

    move-object v2, v9

    invoke-virtual/range {v0 .. v8}, Lyads/d14;->a(Lyads/kx5;Ljava/lang/Object;IIJJ)Lyads/c14;

    move-result-object v0

    return-object v0

    :cond_7
    move-object v9, v8

    iget-wide v7, v2, Lyads/b14;->d:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v9

    invoke-virtual/range {v0 .. v8}, Lyads/d14;->a(Lyads/kx5;Ljava/lang/Object;JJJ)Lyads/c14;

    move-result-object v0

    return-object v0

    :cond_8
    move-wide v12, v3

    iget-object v2, v11, Lyads/b14;->a:Ljava/lang/Object;

    iget-object v3, v0, Lyads/d14;->a:Lyads/hx5;

    invoke-virtual {v1, v2, v3}, Lyads/kx5;->a(Ljava/lang/Object;Lyads/hx5;)Lyads/hx5;

    invoke-virtual {v11}, Lyads/b14;->a()Z

    move-result v2

    const-wide/high16 v18, -0x8000000000000000L

    if-eqz v2, :cond_e

    iget v3, v11, Lyads/b14;->b:I

    iget-object v2, v0, Lyads/d14;->a:Lyads/hx5;

    iget-object v2, v2, Lyads/hx5;->h:Lyads/a6;

    invoke-virtual {v2, v3}, Lyads/a6;->a(I)Lyads/z5;

    move-result-object v2

    iget v2, v2, Lyads/z5;->c:I

    if-ne v2, v14, :cond_9

    return-object v17

    :cond_9
    iget-object v4, v0, Lyads/d14;->a:Lyads/hx5;

    iget v5, v11, Lyads/b14;->c:I

    iget-object v4, v4, Lyads/hx5;->h:Lyads/a6;

    invoke-virtual {v4, v3}, Lyads/a6;->a(I)Lyads/z5;

    move-result-object v4

    invoke-virtual {v4, v5}, Lyads/z5;->a(I)I

    move-result v4

    if-ge v4, v2, :cond_a

    iget-object v2, v11, Lyads/b14;->a:Ljava/lang/Object;

    iget-wide v5, v10, Lyads/c14;->c:J

    iget-wide v7, v11, Lyads/b14;->d:J

    invoke-virtual/range {v0 .. v8}, Lyads/d14;->a(Lyads/kx5;Ljava/lang/Object;IIJJ)Lyads/c14;

    move-result-object v0

    return-object v0

    :cond_a
    move-object v9, v0

    iget-wide v0, v10, Lyads/c14;->c:J

    cmp-long v2, v0, v15

    if-nez v2, :cond_c

    iget-object v1, v9, Lyads/d14;->b:Lyads/jx5;

    iget-object v2, v9, Lyads/d14;->a:Lyads/hx5;

    iget v3, v2, Lyads/hx5;->d:I

    invoke-static {v12, v13, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v7}, Lyads/kx5;->a(Lyads/jx5;Lyads/hx5;IJJ)Landroid/util/Pair;

    move-result-object v1

    move-object v2, v0

    if-nez v1, :cond_b

    return-object v17

    :cond_b
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_5

    :cond_c
    move-object/from16 v2, p1

    :goto_5
    iget-object v3, v11, Lyads/b14;->a:Ljava/lang/Object;

    iget v4, v11, Lyads/b14;->b:I

    iget-object v5, v9, Lyads/d14;->a:Lyads/hx5;

    invoke-virtual {v2, v3, v5}, Lyads/kx5;->a(Ljava/lang/Object;Lyads/hx5;)Lyads/hx5;

    iget-object v3, v9, Lyads/d14;->a:Lyads/hx5;

    iget-object v3, v3, Lyads/hx5;->h:Lyads/a6;

    invoke-virtual {v3, v4}, Lyads/a6;->a(I)Lyads/z5;

    move-result-object v3

    iget-wide v5, v3, Lyads/z5;->b:J

    cmp-long v3, v5, v18

    iget-object v7, v9, Lyads/d14;->a:Lyads/hx5;

    if-nez v3, :cond_d

    iget-wide v3, v7, Lyads/hx5;->e:J

    goto :goto_6

    :cond_d
    iget-object v3, v7, Lyads/hx5;->h:Lyads/a6;

    invoke-virtual {v3, v4}, Lyads/a6;->a(I)Lyads/z5;

    move-result-object v3

    iget-wide v3, v3, Lyads/z5;->g:J

    add-long/2addr v3, v5

    :goto_6
    iget-object v2, v11, Lyads/b14;->a:Ljava/lang/Object;

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iget-wide v5, v10, Lyads/c14;->c:J

    iget-wide v7, v11, Lyads/b14;->d:J

    move-object/from16 v1, p1

    move-object v0, v9

    invoke-virtual/range {v0 .. v8}, Lyads/d14;->a(Lyads/kx5;Ljava/lang/Object;JJJ)Lyads/c14;

    move-result-object v0

    return-object v0

    :cond_e
    iget-object v1, v0, Lyads/d14;->a:Lyads/hx5;

    iget v2, v11, Lyads/b14;->e:I

    invoke-virtual {v1, v2}, Lyads/hx5;->a(I)I

    move-result v4

    iget-object v1, v0, Lyads/d14;->a:Lyads/hx5;

    iget v2, v11, Lyads/b14;->e:I

    iget-object v1, v1, Lyads/hx5;->h:Lyads/a6;

    invoke-virtual {v1, v2}, Lyads/a6;->a(I)Lyads/z5;

    move-result-object v1

    iget-boolean v1, v1, Lyads/z5;->h:Z

    if-eqz v1, :cond_10

    iget-object v1, v0, Lyads/d14;->a:Lyads/hx5;

    iget v2, v11, Lyads/b14;->e:I

    iget-object v1, v1, Lyads/hx5;->h:Lyads/a6;

    invoke-virtual {v1, v2}, Lyads/a6;->a(I)Lyads/z5;

    move-result-object v1

    iget v2, v1, Lyads/z5;->c:I

    if-eq v2, v14, :cond_f

    iget-object v1, v1, Lyads/z5;->e:[I

    aget v1, v1, v4

    goto :goto_7

    :cond_f
    const/4 v1, 0x0

    :goto_7
    const/4 v2, 0x3

    if-ne v1, v2, :cond_10

    const/4 v12, 0x1

    goto :goto_8

    :cond_10
    const/4 v12, 0x0

    :goto_8
    iget-object v1, v0, Lyads/d14;->a:Lyads/hx5;

    iget v2, v11, Lyads/b14;->e:I

    iget-object v1, v1, Lyads/hx5;->h:Lyads/a6;

    invoke-virtual {v1, v2}, Lyads/a6;->a(I)Lyads/z5;

    move-result-object v1

    iget v1, v1, Lyads/z5;->c:I

    if-eq v4, v1, :cond_11

    if-eqz v12, :cond_12

    :cond_11
    move-object/from16 v1, p1

    goto :goto_9

    :cond_12
    iget-object v2, v11, Lyads/b14;->a:Ljava/lang/Object;

    iget v3, v11, Lyads/b14;->e:I

    iget-wide v5, v10, Lyads/c14;->e:J

    iget-wide v7, v11, Lyads/b14;->d:J

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v8}, Lyads/d14;->a(Lyads/kx5;Ljava/lang/Object;IIJJ)Lyads/c14;

    move-result-object v0

    return-object v0

    :goto_9
    iget-object v2, v11, Lyads/b14;->a:Ljava/lang/Object;

    iget v3, v11, Lyads/b14;->e:I

    iget-object v4, v0, Lyads/d14;->a:Lyads/hx5;

    invoke-virtual {v1, v2, v4}, Lyads/kx5;->a(Ljava/lang/Object;Lyads/hx5;)Lyads/hx5;

    iget-object v2, v0, Lyads/d14;->a:Lyads/hx5;

    iget-object v2, v2, Lyads/hx5;->h:Lyads/a6;

    invoke-virtual {v2, v3}, Lyads/a6;->a(I)Lyads/z5;

    move-result-object v2

    iget-wide v4, v2, Lyads/z5;->b:J

    cmp-long v2, v4, v18

    iget-object v6, v0, Lyads/d14;->a:Lyads/hx5;

    if-nez v2, :cond_13

    iget-wide v2, v6, Lyads/hx5;->e:J

    :goto_a
    move-wide v3, v2

    goto :goto_b

    :cond_13
    iget-object v2, v6, Lyads/hx5;->h:Lyads/a6;

    invoke-virtual {v2, v3}, Lyads/a6;->a(I)Lyads/z5;

    move-result-object v2

    iget-wide v2, v2, Lyads/z5;->g:J

    add-long/2addr v2, v4

    goto :goto_a

    :goto_b
    iget-object v2, v11, Lyads/b14;->a:Ljava/lang/Object;

    iget-wide v5, v10, Lyads/c14;->e:J

    iget-wide v7, v11, Lyads/b14;->d:J

    invoke-virtual/range {v0 .. v8}, Lyads/d14;->a(Lyads/kx5;Ljava/lang/Object;JJJ)Lyads/c14;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lyads/kx5;Lyads/c14;)Lyads/c14;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 588
    iget-object v3, v2, Lyads/c14;->a:Lyads/h14;

    .line 589
    invoke-virtual {v3}, Lyads/b14;->a()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, -0x1

    if-nez v4, :cond_0

    iget v4, v3, Lyads/b14;->e:I

    if-ne v4, v7, :cond_0

    move v11, v6

    goto :goto_0

    :cond_0
    move v11, v5

    .line 590
    :goto_0
    invoke-virtual {v3}, Lyads/b14;->a()Z

    move-result v4

    if-nez v4, :cond_1

    iget v4, v3, Lyads/b14;->e:I

    if-ne v4, v7, :cond_1

    .line 591
    iget-object v4, v3, Lyads/b14;->a:Ljava/lang/Object;

    iget-object v8, v0, Lyads/d14;->a:Lyads/hx5;

    invoke-virtual {v1, v4, v8}, Lyads/kx5;->a(Ljava/lang/Object;Lyads/hx5;)Lyads/hx5;

    move-result-object v4

    iget v4, v4, Lyads/hx5;->d:I

    .line 592
    iget-object v8, v3, Lyads/b14;->a:Ljava/lang/Object;

    invoke-virtual {v1, v8}, Lyads/kx5;->a(Ljava/lang/Object;)I

    move-result v8

    .line 593
    iget-object v9, v0, Lyads/d14;->b:Lyads/jx5;

    const-wide/16 v12, 0x0

    .line 594
    invoke-virtual {v1, v4, v9, v12, v13}, Lyads/kx5;->a(ILyads/jx5;J)Lyads/jx5;

    move-result-object v4

    .line 595
    iget v4, v4, Lyads/jx5;->q:I

    if-ne v4, v8, :cond_1

    move v12, v6

    goto :goto_1

    :cond_1
    move v12, v5

    .line 596
    :goto_1
    invoke-virtual {v0, v1, v3, v11}, Lyads/d14;->a(Lyads/kx5;Lyads/h14;Z)Z

    move-result v13

    .line 597
    iget-object v4, v2, Lyads/c14;->a:Lyads/h14;

    iget-object v4, v4, Lyads/b14;->a:Ljava/lang/Object;

    iget-object v8, v0, Lyads/d14;->a:Lyads/hx5;

    invoke-virtual {v1, v4, v8}, Lyads/kx5;->a(Ljava/lang/Object;Lyads/hx5;)Lyads/hx5;

    .line 598
    invoke-virtual {v3}, Lyads/b14;->a()Z

    move-result v1

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v1, :cond_3

    iget v1, v3, Lyads/b14;->e:I

    if-ne v1, v7, :cond_2

    goto :goto_2

    .line 599
    :cond_2
    iget-object v4, v0, Lyads/d14;->a:Lyads/hx5;

    .line 600
    iget-object v4, v4, Lyads/hx5;->h:Lyads/a6;

    .line 601
    invoke-virtual {v4, v1}, Lyads/a6;->a(I)Lyads/z5;

    move-result-object v1

    iget-wide v14, v1, Lyads/z5;->b:J

    goto :goto_3

    :cond_3
    :goto_2
    move-wide v14, v8

    .line 602
    :goto_3
    invoke-virtual {v3}, Lyads/b14;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 603
    iget-object v1, v0, Lyads/d14;->a:Lyads/hx5;

    iget v4, v3, Lyads/b14;->b:I

    iget v8, v3, Lyads/b14;->c:I

    invoke-virtual {v1, v4, v8}, Lyads/hx5;->a(II)J

    move-result-wide v8

    goto :goto_5

    :cond_4
    cmp-long v1, v14, v8

    if-eqz v1, :cond_6

    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v1, v14, v8

    if-nez v1, :cond_5

    goto :goto_4

    :cond_5
    move-wide v8, v14

    goto :goto_5

    .line 604
    :cond_6
    :goto_4
    iget-object v1, v0, Lyads/d14;->a:Lyads/hx5;

    .line 605
    iget-wide v8, v1, Lyads/hx5;->e:J

    .line 606
    :goto_5
    invoke-virtual {v3}, Lyads/b14;->a()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 607
    iget-object v0, v0, Lyads/d14;->a:Lyads/hx5;

    iget v1, v3, Lyads/b14;->b:I

    .line 608
    iget-object v0, v0, Lyads/hx5;->h:Lyads/a6;

    .line 609
    invoke-virtual {v0, v1}, Lyads/a6;->a(I)Lyads/z5;

    move-result-object v0

    iget-boolean v5, v0, Lyads/z5;->h:Z

    :cond_7
    move v10, v5

    goto :goto_6

    .line 610
    :cond_8
    iget v1, v3, Lyads/b14;->e:I

    if-eq v1, v7, :cond_7

    iget-object v0, v0, Lyads/d14;->a:Lyads/hx5;

    .line 611
    iget-object v0, v0, Lyads/hx5;->h:Lyads/a6;

    .line 612
    invoke-virtual {v0, v1}, Lyads/a6;->a(I)Lyads/z5;

    move-result-object v0

    iget-boolean v0, v0, Lyads/z5;->h:Z

    if-eqz v0, :cond_7

    move v10, v6

    .line 613
    :goto_6
    new-instance v0, Lyads/c14;

    iget-wide v4, v2, Lyads/c14;->b:J

    iget-wide v1, v2, Lyads/c14;->c:J

    move-wide v6, v1

    move-object v1, v3

    move-wide v2, v4

    move-wide v4, v6

    move-wide v6, v14

    invoke-direct/range {v0 .. v13}, Lyads/c14;-><init>(Lyads/h14;JJJJZZZZ)V

    return-object v0
.end method

.method public final a(Lyads/kx5;Ljava/lang/Object;J)Lyads/h14;
    .locals 14

    move-object/from16 v1, p2

    .line 648
    iget-object v2, p0, Lyads/d14;->a:Lyads/hx5;

    invoke-virtual {p1, v1, v2}, Lyads/kx5;->a(Ljava/lang/Object;Lyads/hx5;)Lyads/hx5;

    move-result-object v2

    iget v2, v2, Lyads/hx5;->d:I

    .line 649
    iget-object v3, p0, Lyads/d14;->l:Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-eqz v3, :cond_0

    .line 650
    invoke-virtual {p1, v3}, Lyads/kx5;->a(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v5, :cond_0

    .line 651
    iget-object v6, p0, Lyads/d14;->a:Lyads/hx5;

    .line 652
    invoke-virtual {p1, v3, v6, v4}, Lyads/kx5;->a(ILyads/hx5;Z)Lyads/hx5;

    move-result-object v3

    .line 653
    iget v3, v3, Lyads/hx5;->d:I

    if-ne v3, v2, :cond_0

    .line 654
    iget-wide v2, p0, Lyads/d14;->m:J

    goto :goto_2

    .line 655
    :cond_0
    iget-object v3, p0, Lyads/d14;->h:Lyads/a14;

    :goto_0
    if-eqz v3, :cond_2

    .line 656
    iget-object v6, v3, Lyads/a14;->b:Ljava/lang/Object;

    invoke-virtual {v6, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 657
    iget-object v2, v3, Lyads/a14;->f:Lyads/c14;

    iget-object v2, v2, Lyads/c14;->a:Lyads/h14;

    iget-wide v2, v2, Lyads/b14;->d:J

    goto :goto_2

    .line 658
    :cond_1
    iget-object v3, v3, Lyads/a14;->l:Lyads/a14;

    goto :goto_0

    .line 659
    :cond_2
    iget-object v3, p0, Lyads/d14;->h:Lyads/a14;

    :goto_1
    if-eqz v3, :cond_4

    .line 660
    iget-object v6, v3, Lyads/a14;->b:Ljava/lang/Object;

    invoke-virtual {p1, v6}, Lyads/kx5;->a(Ljava/lang/Object;)I

    move-result v6

    if-eq v6, v5, :cond_3

    .line 661
    iget-object v7, p0, Lyads/d14;->a:Lyads/hx5;

    .line 662
    invoke-virtual {p1, v6, v7, v4}, Lyads/kx5;->a(ILyads/hx5;Z)Lyads/hx5;

    move-result-object v6

    .line 663
    iget v6, v6, Lyads/hx5;->d:I

    if-ne v6, v2, :cond_3

    .line 664
    iget-object v2, v3, Lyads/a14;->f:Lyads/c14;

    iget-object v2, v2, Lyads/c14;->a:Lyads/h14;

    iget-wide v2, v2, Lyads/b14;->d:J

    goto :goto_2

    .line 665
    :cond_3
    iget-object v3, v3, Lyads/a14;->l:Lyads/a14;

    goto :goto_1

    .line 666
    :cond_4
    iget-wide v2, p0, Lyads/d14;->e:J

    const-wide/16 v6, 0x1

    add-long/2addr v6, v2

    iput-wide v6, p0, Lyads/d14;->e:J

    .line 667
    iget-object v6, p0, Lyads/d14;->h:Lyads/a14;

    if-nez v6, :cond_5

    .line 668
    iput-object v1, p0, Lyads/d14;->l:Ljava/lang/Object;

    .line 669
    iput-wide v2, p0, Lyads/d14;->m:J

    .line 670
    :cond_5
    :goto_2
    iget-object v6, p0, Lyads/d14;->a:Lyads/hx5;

    invoke-virtual {p1, v1, v6}, Lyads/kx5;->a(Ljava/lang/Object;Lyads/hx5;)Lyads/hx5;

    .line 671
    iget-object v6, p0, Lyads/d14;->a:Lyads/hx5;

    iget v6, v6, Lyads/hx5;->d:I

    iget-object v7, p0, Lyads/d14;->b:Lyads/jx5;

    const-wide/16 v8, 0x0

    .line 672
    invoke-virtual {p1, v6, v7, v8, v9}, Lyads/kx5;->a(ILyads/jx5;J)Lyads/jx5;

    .line 673
    invoke-virtual/range {p1 .. p2}, Lyads/kx5;->a(Ljava/lang/Object;)I

    move-result v6

    move v7, v4

    :goto_3
    iget-object v10, p0, Lyads/d14;->b:Lyads/jx5;

    iget v10, v10, Lyads/jx5;->p:I

    if-lt v6, v10, :cond_9

    .line 674
    iget-object v10, p0, Lyads/d14;->a:Lyads/hx5;

    const/4 v11, 0x1

    invoke-virtual {p1, v6, v10, v11}, Lyads/kx5;->a(ILyads/hx5;Z)Lyads/hx5;

    .line 675
    iget-object v10, p0, Lyads/d14;->a:Lyads/hx5;

    .line 676
    iget-object v12, v10, Lyads/hx5;->h:Lyads/a6;

    .line 677
    iget v12, v12, Lyads/a6;->b:I

    if-lez v12, :cond_6

    goto :goto_4

    :cond_6
    move v11, v4

    :goto_4
    or-int/2addr v7, v11

    .line 678
    iget-wide v12, v10, Lyads/hx5;->e:J

    invoke-virtual {v10, v12, v13}, Lyads/hx5;->b(J)I

    move-result v10

    if-eq v10, v5, :cond_7

    .line 679
    iget-object v1, p0, Lyads/d14;->a:Lyads/hx5;

    iget-object v1, v1, Lyads/hx5;->c:Ljava/lang/Object;

    .line 680
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_7
    if-eqz v7, :cond_8

    if-eqz v11, :cond_9

    .line 681
    iget-object v10, p0, Lyads/d14;->a:Lyads/hx5;

    iget-wide v10, v10, Lyads/hx5;->e:J

    cmp-long v10, v10, v8

    if-eqz v10, :cond_8

    goto :goto_5

    :cond_8
    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    .line 682
    :cond_9
    :goto_5
    iget-object v6, p0, Lyads/d14;->b:Lyads/jx5;

    iget-object v7, p0, Lyads/d14;->a:Lyads/hx5;

    move-object v0, p1

    move-wide v4, v2

    move-wide/from16 v2, p3

    invoke-static/range {v0 .. v7}, Lyads/d14;->a(Lyads/kx5;Ljava/lang/Object;JJLyads/jx5;Lyads/hx5;)Lyads/h14;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lyads/ke3;Lyads/h14;)V
    .locals 2

    .line 632
    iget-object p0, p0, Lyads/d14;->c:Lyads/ge;

    invoke-virtual {p1}, Lyads/ke3;->a()Lyads/k55;

    move-result-object p1

    check-cast p0, Lyads/cj0;

    .line 633
    iget-object v0, p0, Lyads/cj0;->d:Lyads/bj0;

    .line 634
    iget-object p0, p0, Lyads/cj0;->g:Lyads/eq2;

    .line 635
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 636
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 637
    invoke-static {p1}, Lyads/oe3;->a(Ljava/util/Collection;)Lyads/oe3;

    move-result-object v1

    iput-object v1, v0, Lyads/bj0;->b:Lyads/oe3;

    .line 638
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 639
    invoke-virtual {p1, v1}, Lyads/k55;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyads/h14;

    iput-object p1, v0, Lyads/bj0;->e:Lyads/h14;

    .line 640
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 641
    iput-object p2, v0, Lyads/bj0;->f:Lyads/h14;

    .line 642
    :cond_0
    iget-object p1, v0, Lyads/bj0;->d:Lyads/h14;

    if-nez p1, :cond_1

    .line 643
    iget-object p1, v0, Lyads/bj0;->b:Lyads/oe3;

    iget-object p2, v0, Lyads/bj0;->e:Lyads/h14;

    iget-object v1, v0, Lyads/bj0;->a:Lyads/hx5;

    .line 644
    invoke-static {p0, p1, p2, v1}, Lyads/bj0;->a(Lyads/eq2;Lyads/oe3;Lyads/h14;Lyads/hx5;)Lyads/h14;

    move-result-object p1

    iput-object p1, v0, Lyads/bj0;->d:Lyads/h14;

    .line 645
    :cond_1
    invoke-virtual {p0}, Lyads/eq2;->q()V

    .line 646
    iget-object p0, p0, Lyads/eq2;->b0:Lyads/bw4;

    iget-object p0, p0, Lyads/bw4;->a:Lyads/kx5;

    .line 647
    invoke-virtual {v0, p0}, Lyads/bj0;->a(Lyads/kx5;)V

    return-void
.end method

.method public final a(Lyads/a14;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 550
    iget-object v1, p0, Lyads/d14;->j:Lyads/a14;

    if-eq p1, v1, :cond_5

    .line 551
    iput-object p1, p0, Lyads/d14;->j:Lyads/a14;

    move v1, v0

    .line 552
    :goto_0
    iget-object p1, p1, Lyads/a14;->l:Lyads/a14;

    if-eqz p1, :cond_1

    .line 553
    iget-object v2, p0, Lyads/d14;->i:Lyads/a14;

    const/4 v3, 0x1

    if-ne p1, v2, :cond_0

    .line 554
    iget-object v1, p0, Lyads/d14;->h:Lyads/a14;

    iput-object v1, p0, Lyads/d14;->i:Lyads/a14;

    move v1, v3

    .line 555
    :cond_0
    invoke-virtual {p1}, Lyads/a14;->b()V

    .line 556
    iget v2, p0, Lyads/d14;->k:I

    sub-int/2addr v2, v3

    iput v2, p0, Lyads/d14;->k:I

    goto :goto_0

    .line 557
    :cond_1
    iget-object p1, p0, Lyads/d14;->j:Lyads/a14;

    .line 558
    iget-object v2, p1, Lyads/a14;->l:Lyads/a14;

    if-nez v2, :cond_2

    goto :goto_2

    .line 559
    :cond_2
    invoke-virtual {p1}, Lyads/a14;->a()V

    const/4 v2, 0x0

    .line 560
    iput-object v2, p1, Lyads/a14;->l:Lyads/a14;

    .line 561
    :goto_1
    iget-object v2, p1, Lyads/a14;->n:Lyads/q06;

    iget v3, v2, Lyads/q06;->a:I

    if-ge v0, v3, :cond_4

    .line 562
    invoke-virtual {v2, v0}, Lyads/q06;->a(I)Z

    move-result v2

    .line 563
    iget-object v3, p1, Lyads/a14;->n:Lyads/q06;

    iget-object v3, v3, Lyads/q06;->c:[Lyads/er2;

    aget-object v3, v3, v0

    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    .line 564
    invoke-interface {v3}, Lyads/er2;->a()V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 565
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lyads/d14;->c()V

    return v1

    :cond_5
    return v0

    .line 566
    :cond_6
    invoke-static {}, Lud;->g()V

    return v0
.end method

.method public final a(Lyads/kx5;)Z
    .locals 8

    .line 683
    iget-object v0, p0, Lyads/d14;->h:Lyads/a14;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 684
    :cond_0
    iget-object v2, v0, Lyads/a14;->b:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Lyads/kx5;->a(Ljava/lang/Object;)I

    move-result v2

    move v3, v2

    .line 685
    :goto_0
    iget-object v4, p0, Lyads/d14;->a:Lyads/hx5;

    iget-object v5, p0, Lyads/d14;->b:Lyads/jx5;

    iget v6, p0, Lyads/d14;->f:I

    iget-boolean v7, p0, Lyads/d14;->g:Z

    move-object v2, p1

    .line 686
    invoke-virtual/range {v2 .. v7}, Lyads/kx5;->a(ILyads/hx5;Lyads/jx5;IZ)I

    move-result v3

    .line 687
    :goto_1
    iget-object p1, v0, Lyads/a14;->l:Lyads/a14;

    if-eqz p1, :cond_1

    .line 688
    iget-object v4, v0, Lyads/a14;->f:Lyads/c14;

    iget-boolean v4, v4, Lyads/c14;->g:Z

    if-nez v4, :cond_1

    move-object v0, p1

    goto :goto_1

    :cond_1
    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    if-nez p1, :cond_2

    goto :goto_2

    .line 689
    :cond_2
    iget-object v4, p1, Lyads/a14;->b:Ljava/lang/Object;

    invoke-virtual {v2, v4}, Lyads/kx5;->a(Ljava/lang/Object;)I

    move-result v4

    if-eq v4, v3, :cond_3

    goto :goto_2

    :cond_3
    move-object v0, p1

    move-object p1, v2

    goto :goto_0

    .line 690
    :cond_4
    :goto_2
    invoke-virtual {p0, v0}, Lyads/d14;->a(Lyads/a14;)Z

    move-result p1

    .line 691
    iget-object v3, v0, Lyads/a14;->f:Lyads/c14;

    invoke-virtual {p0, v2, v3}, Lyads/d14;->a(Lyads/kx5;Lyads/c14;)Lyads/c14;

    move-result-object p0

    iput-object p0, v0, Lyads/a14;->f:Lyads/c14;

    xor-int/lit8 p0, p1, 0x1

    return p0
.end method

.method public final a(Lyads/kx5;JJ)Z
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 567
    iget-object v2, v0, Lyads/d14;->h:Lyads/a14;

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-eqz v2, :cond_c

    .line 568
    iget-object v5, v2, Lyads/a14;->f:Lyads/c14;

    if-nez v3, :cond_0

    .line 569
    invoke-virtual {v0, v1, v5}, Lyads/d14;->a(Lyads/kx5;Lyads/c14;)Lyads/c14;

    move-result-object v3

    move-wide/from16 v6, p2

    goto :goto_1

    :cond_0
    move-wide/from16 v6, p2

    .line 570
    invoke-virtual {v0, v1, v3, v6, v7}, Lyads/d14;->a(Lyads/kx5;Lyads/a14;J)Lyads/c14;

    move-result-object v8

    if-nez v8, :cond_1

    .line 571
    invoke-virtual {v0, v3}, Lyads/d14;->a(Lyads/a14;)Z

    move-result v0

    xor-int/2addr v0, v4

    return v0

    .line 572
    :cond_1
    iget-wide v9, v5, Lyads/c14;->b:J

    iget-wide v11, v8, Lyads/c14;->b:J

    cmp-long v9, v9, v11

    if-nez v9, :cond_b

    iget-object v9, v5, Lyads/c14;->a:Lyads/h14;

    iget-object v10, v8, Lyads/c14;->a:Lyads/h14;

    invoke-virtual {v9, v10}, Lyads/b14;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    move-object v3, v8

    .line 573
    :goto_1
    iget-wide v12, v5, Lyads/c14;->c:J

    .line 574
    iget-wide v8, v3, Lyads/c14;->c:J

    cmp-long v8, v12, v8

    if-nez v8, :cond_2

    move-object v8, v3

    move/from16 v23, v4

    move-object/from16 v22, v5

    goto :goto_2

    .line 575
    :cond_2
    new-instance v8, Lyads/c14;

    iget-object v9, v3, Lyads/c14;->a:Lyads/h14;

    iget-wide v10, v3, Lyads/c14;->b:J

    iget-wide v14, v3, Lyads/c14;->d:J

    move/from16 v23, v4

    move-object/from16 v22, v5

    iget-wide v4, v3, Lyads/c14;->e:J

    iget-boolean v1, v3, Lyads/c14;->f:Z

    move/from16 v18, v1

    iget-boolean v1, v3, Lyads/c14;->g:Z

    move/from16 v19, v1

    iget-boolean v1, v3, Lyads/c14;->h:Z

    move/from16 v20, v1

    iget-boolean v1, v3, Lyads/c14;->i:Z

    move/from16 v21, v1

    move-wide/from16 v16, v4

    invoke-direct/range {v8 .. v21}, Lyads/c14;-><init>(Lyads/h14;JJJJZZZZ)V

    .line 576
    :goto_2
    iput-object v8, v2, Lyads/a14;->f:Lyads/c14;

    move-object/from16 v1, v22

    .line 577
    iget-wide v4, v1, Lyads/c14;->e:J

    iget-wide v9, v3, Lyads/c14;->e:J

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v4, v11

    if-eqz v1, :cond_a

    cmp-long v1, v4, v9

    if-nez v1, :cond_3

    goto :goto_5

    .line 578
    :cond_3
    iget-object v1, v2, Lyads/a14;->a:Ljava/lang/Object;

    instance-of v3, v1, Lyads/t00;

    const-wide/high16 v4, -0x8000000000000000L

    if-eqz v3, :cond_5

    .line 579
    iget-wide v6, v8, Lyads/c14;->d:J

    cmp-long v3, v6, v11

    if-nez v3, :cond_4

    move-wide v6, v4

    .line 580
    :cond_4
    check-cast v1, Lyads/t00;

    const-wide/16 v13, 0x0

    .line 581
    iput-wide v13, v1, Lyads/t00;->f:J

    .line 582
    iput-wide v6, v1, Lyads/t00;->g:J

    :cond_5
    cmp-long v1, v9, v11

    if-nez v1, :cond_6

    const-wide v6, 0x7fffffffffffffffL

    goto :goto_3

    .line 583
    :cond_6
    iget-wide v6, v2, Lyads/a14;->o:J

    add-long/2addr v6, v9

    .line 584
    :goto_3
    iget-object v1, v0, Lyads/d14;->i:Lyads/a14;

    const/4 v3, 0x0

    if-ne v2, v1, :cond_8

    iget-boolean v1, v8, Lyads/c14;->f:Z

    if-nez v1, :cond_8

    cmp-long v1, p4, v4

    if-eqz v1, :cond_7

    cmp-long v1, p4, v6

    if-ltz v1, :cond_8

    :cond_7
    move/from16 v1, v23

    goto :goto_4

    :cond_8
    move v1, v3

    .line 585
    :goto_4
    invoke-virtual {v0, v2}, Lyads/d14;->a(Lyads/a14;)Z

    move-result v0

    if-nez v0, :cond_9

    if-nez v1, :cond_9

    return v23

    :cond_9
    return v3

    .line 586
    :cond_a
    :goto_5
    iget-object v1, v2, Lyads/a14;->l:Lyads/a14;

    move-object v3, v2

    move-object v2, v1

    move-object/from16 v1, p1

    goto/16 :goto_0

    :cond_b
    move/from16 v23, v4

    .line 587
    invoke-virtual {v0, v3}, Lyads/d14;->a(Lyads/a14;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_c
    move/from16 v23, v4

    return v23
.end method

.method public final a(Lyads/kx5;Lyads/h14;Z)Z
    .locals 7

    .line 756
    iget-object p2, p2, Lyads/b14;->a:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lyads/kx5;->a(Ljava/lang/Object;)I

    move-result v1

    .line 757
    iget-object p2, p0, Lyads/d14;->a:Lyads/hx5;

    const/4 v6, 0x0

    .line 758
    invoke-virtual {p1, v1, p2, v6}, Lyads/kx5;->a(ILyads/hx5;Z)Lyads/hx5;

    move-result-object p2

    .line 759
    iget p2, p2, Lyads/hx5;->d:I

    .line 760
    iget-object v0, p0, Lyads/d14;->b:Lyads/jx5;

    const-wide/16 v2, 0x0

    .line 761
    invoke-virtual {p1, p2, v0, v2, v3}, Lyads/kx5;->a(ILyads/jx5;J)Lyads/jx5;

    move-result-object p2

    .line 762
    iget-boolean p2, p2, Lyads/jx5;->j:Z

    if-nez p2, :cond_0

    iget-object v2, p0, Lyads/d14;->a:Lyads/hx5;

    iget-object v3, p0, Lyads/d14;->b:Lyads/jx5;

    iget v4, p0, Lyads/d14;->f:I

    iget-boolean v5, p0, Lyads/d14;->g:Z

    move-object v0, p1

    .line 763
    invoke-virtual/range {v0 .. v5}, Lyads/kx5;->a(ILyads/hx5;Lyads/jx5;IZ)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_0

    if-eqz p3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v6
.end method

.method public final b()V
    .locals 3

    iget v0, p0, Lyads/d14;->k:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lyads/d14;->h:Lyads/a14;

    if-eqz v0, :cond_2

    iget-object v1, v0, Lyads/a14;->b:Ljava/lang/Object;

    iput-object v1, p0, Lyads/d14;->l:Ljava/lang/Object;

    iget-object v1, v0, Lyads/a14;->f:Lyads/c14;

    iget-object v1, v1, Lyads/c14;->a:Lyads/h14;

    iget-wide v1, v1, Lyads/b14;->d:J

    iput-wide v1, p0, Lyads/d14;->m:J

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lyads/a14;->b()V

    iget-object v0, v0, Lyads/a14;->l:Lyads/a14;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lyads/d14;->h:Lyads/a14;

    iput-object v0, p0, Lyads/d14;->j:Lyads/a14;

    iput-object v0, p0, Lyads/d14;->i:Lyads/a14;

    const/4 v0, 0x0

    iput v0, p0, Lyads/d14;->k:I

    invoke-virtual {p0}, Lyads/d14;->c()V

    return-void

    :cond_2
    invoke-static {}, Lud;->g()V

    return-void
.end method

.method public final c()V
    .locals 4

    sget-object v0, Lyads/oe3;->c:Lyads/le3;

    new-instance v0, Lyads/ke3;

    invoke-direct {v0}, Lyads/ke3;-><init>()V

    iget-object v1, p0, Lyads/d14;->h:Lyads/a14;

    :goto_0
    if-eqz v1, :cond_0

    iget-object v2, v1, Lyads/a14;->f:Lyads/c14;

    iget-object v2, v2, Lyads/c14;->a:Lyads/h14;

    invoke-virtual {v0, v2}, Lyads/ke3;->a(Ljava/lang/Object;)Lyads/ke3;

    iget-object v1, v1, Lyads/a14;->l:Lyads/a14;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lyads/d14;->i:Lyads/a14;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    iget-object v1, v1, Lyads/a14;->f:Lyads/c14;

    iget-object v1, v1, Lyads/c14;->a:Lyads/h14;

    :goto_1
    iget-object v2, p0, Lyads/d14;->d:Landroid/os/Handler;

    new-instance v3, Ljs9;

    invoke-direct {v3, p0, v0, v1}, Ljs9;-><init>(Lyads/d14;Lyads/ke3;Lyads/h14;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
