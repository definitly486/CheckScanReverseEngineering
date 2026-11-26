.class public final Lyads/kc0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:J

.field public final c:J

.field public final d:Z

.field public final e:J

.field public final f:J

.field public final g:J

.field public final h:J

.field public final i:Lyads/t56;

.field public final j:Lyads/bj5;

.field public final k:Landroid/net/Uri;

.field public final l:Lyads/w05;

.field public final m:Ljava/util/List;


# direct methods
.method public constructor <init>(JJJZJJJJLyads/w05;Lyads/t56;Lyads/bj5;Landroid/net/Uri;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lyads/kc0;->a:J

    iput-wide p3, p0, Lyads/kc0;->b:J

    iput-wide p5, p0, Lyads/kc0;->c:J

    iput-boolean p7, p0, Lyads/kc0;->d:Z

    iput-wide p8, p0, Lyads/kc0;->e:J

    iput-wide p10, p0, Lyads/kc0;->f:J

    iput-wide p12, p0, Lyads/kc0;->g:J

    iput-wide p14, p0, Lyads/kc0;->h:J

    move-object/from16 p1, p16

    iput-object p1, p0, Lyads/kc0;->l:Lyads/w05;

    move-object/from16 p1, p17

    iput-object p1, p0, Lyads/kc0;->i:Lyads/t56;

    move-object/from16 p1, p19

    iput-object p1, p0, Lyads/kc0;->k:Landroid/net/Uri;

    move-object/from16 p1, p18

    iput-object p1, p0, Lyads/kc0;->j:Lyads/bj5;

    move-object/from16 p1, p20

    iput-object p1, p0, Lyads/kc0;->m:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(I)J
    .locals 5

    .line 250
    iget-object v0, p0, Lyads/kc0;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    .line 251
    iget-wide v0, p0, Lyads/kc0;->b:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    :cond_0
    iget-object p0, p0, Lyads/kc0;->m:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/au4;

    iget-wide p0, p0, Lyads/au4;->b:J

    :goto_0
    sub-long/2addr v0, p0

    return-wide v0

    .line 252
    :cond_1
    iget-object v0, p0, Lyads/kc0;->m:Ljava/util/List;

    add-int/lit8 v1, p1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/au4;

    iget-wide v0, v0, Lyads/au4;->b:J

    iget-object p0, p0, Lyads/kc0;->m:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/au4;

    iget-wide p0, p0, Lyads/au4;->b:J

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)Lyads/kc0;
    .locals 25

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/LinkedList;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance v2, Lyads/bs5;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3, v3}, Lyads/bs5;-><init>(III)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    :goto_0
    iget-object v6, v0, Lyads/kc0;->m:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v5, v6, :cond_5

    invoke-virtual {v1}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lyads/bs5;

    iget v6, v6, Lyads/bs5;->b:I

    if-eq v6, v5, :cond_1

    invoke-virtual {v0, v5}, Lyads/kc0;->a(I)J

    move-result-wide v9

    cmp-long v6, v9, v7

    if-eqz v6, :cond_0

    add-long/2addr v3, v9

    goto/16 :goto_3

    :cond_0
    move-wide/from16 v23, v3

    goto/16 :goto_2

    :cond_1
    iget-object v6, v0, Lyads/kc0;->m:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lyads/au4;

    iget-object v9, v6, Lyads/au4;->c:Ljava/util/List;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lyads/bs5;

    iget v10, v7, Lyads/bs5;->b:I

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    iget v8, v7, Lyads/bs5;->c:I

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lyads/eb;

    iget-object v12, v11, Lyads/eb;->c:Ljava/util/List;

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    iget v7, v7, Lyads/bs5;->d:I

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lyads/o75;

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lyads/bs5;

    iget v14, v7, Lyads/bs5;->b:I

    if-ne v14, v10, :cond_3

    iget v14, v7, Lyads/bs5;->c:I

    if-eq v14, v8, :cond_2

    :cond_3
    new-instance v16, Lyads/eb;

    iget v8, v11, Lyads/eb;->a:I

    iget v12, v11, Lyads/eb;->b:I

    iget-object v14, v11, Lyads/eb;->d:Ljava/util/List;

    move-wide/from16 v23, v3

    iget-object v3, v11, Lyads/eb;->e:Ljava/util/List;

    iget-object v4, v11, Lyads/eb;->f:Ljava/util/List;

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move/from16 v17, v8

    move/from16 v18, v12

    move-object/from16 v19, v13

    move-object/from16 v20, v14

    invoke-direct/range {v16 .. v22}, Lyads/eb;-><init>(IILjava/util/ArrayList;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    move-object/from16 v3, v16

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v3, v7, Lyads/bs5;->b:I

    if-eq v3, v10, :cond_4

    invoke-virtual {v1, v7}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    new-instance v11, Lyads/au4;

    iget-object v12, v6, Lyads/au4;->a:Ljava/lang/String;

    iget-wide v3, v6, Lyads/au4;->b:J

    sub-long v13, v3, v23

    iget-object v3, v6, Lyads/au4;->d:Ljava/util/List;

    move-object/from16 v16, v3

    invoke-direct/range {v11 .. v16}, Lyads/au4;-><init>(Ljava/lang/String;JLjava/util/ArrayList;Ljava/util/List;)V

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    move-wide/from16 v3, v23

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_4
    move-wide/from16 v3, v23

    goto :goto_1

    :cond_5
    move-wide/from16 v23, v3

    iget-wide v3, v0, Lyads/kc0;->b:J

    cmp-long v1, v3, v7

    if-eqz v1, :cond_6

    sub-long v7, v3, v23

    :cond_6
    new-instance v4, Lyads/kc0;

    iget-wide v5, v0, Lyads/kc0;->a:J

    iget-wide v9, v0, Lyads/kc0;->c:J

    iget-boolean v11, v0, Lyads/kc0;->d:Z

    iget-wide v12, v0, Lyads/kc0;->e:J

    iget-wide v14, v0, Lyads/kc0;->f:J

    move-object/from16 v24, v2

    iget-wide v1, v0, Lyads/kc0;->g:J

    move-wide/from16 v16, v1

    iget-wide v1, v0, Lyads/kc0;->h:J

    iget-object v3, v0, Lyads/kc0;->l:Lyads/w05;

    move-wide/from16 v18, v1

    iget-object v1, v0, Lyads/kc0;->i:Lyads/t56;

    iget-object v2, v0, Lyads/kc0;->j:Lyads/bj5;

    iget-object v0, v0, Lyads/kc0;->k:Landroid/net/Uri;

    move-object/from16 v23, v0

    move-object/from16 v21, v1

    move-object/from16 v22, v2

    move-object/from16 v20, v3

    invoke-direct/range {v4 .. v24}, Lyads/kc0;-><init>(JJJZJJJJLyads/w05;Lyads/t56;Lyads/bj5;Landroid/net/Uri;Ljava/util/ArrayList;)V

    return-object v4
.end method
