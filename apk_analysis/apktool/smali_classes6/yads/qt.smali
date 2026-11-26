.class public abstract Lyads/qt;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/kt;

.field public final b:Lyads/pt;

.field public c:Lyads/mt;

.field public final d:I


# direct methods
.method public constructor <init>(Lyads/nt;Lyads/pt;JJJJJI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/qt;->b:Lyads/pt;

    iput p13, p0, Lyads/qt;->d:I

    move-object p2, p1

    new-instance p1, Lyads/kt;

    invoke-direct/range {p1 .. p12}, Lyads/kt;-><init>(Lyads/nt;JJJJJ)V

    iput-object p1, p0, Lyads/qt;->a:Lyads/kt;

    return-void
.end method


# virtual methods
.method public final a(Lyads/wk0;Lyads/qx4;)I
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    :goto_0
    iget-object v3, v0, Lyads/qt;->c:Lyads/mt;

    const/4 v4, 0x0

    if-eqz v3, :cond_b

    iget-wide v5, v3, Lyads/mt;->f:J

    iget-wide v7, v3, Lyads/mt;->g:J

    iget-wide v9, v3, Lyads/mt;->h:J

    sub-long/2addr v7, v5

    iget v11, v0, Lyads/qt;->d:I

    int-to-long v11, v11

    cmp-long v7, v7, v11

    const/4 v8, 0x0

    const/4 v11, 0x1

    if-gtz v7, :cond_1

    iput-object v8, v0, Lyads/qt;->c:Lyads/mt;

    iget-object v0, v0, Lyads/qt;->b:Lyads/pt;

    invoke-interface {v0}, Lyads/pt;->a()V

    iget-wide v0, v1, Lyads/wk0;->d:J

    cmp-long v0, v5, v0

    if-nez v0, :cond_0

    return v4

    :cond_0
    iput-wide v5, v2, Lyads/qx4;->a:J

    return v11

    :cond_1
    iget-wide v5, v1, Lyads/wk0;->d:J

    sub-long v12, v9, v5

    const-wide/16 v14, 0x0

    cmp-long v7, v12, v14

    if-ltz v7, :cond_9

    const-wide/32 v16, 0x40000

    cmp-long v7, v12, v16

    if-gtz v7, :cond_9

    long-to-int v5, v12

    invoke-virtual {v1, v5}, Lyads/wk0;->a(I)V

    iput v4, v1, Lyads/wk0;->f:I

    iget-object v5, v0, Lyads/qt;->b:Lyads/pt;

    iget-wide v6, v3, Lyads/mt;->b:J

    invoke-interface {v5, v1, v6, v7}, Lyads/pt;->a(Lyads/wk0;J)Lyads/ot;

    move-result-object v5

    iget v6, v5, Lyads/ot;->a:I

    const/4 v7, -0x3

    if-eq v6, v7, :cond_7

    const/4 v7, -0x2

    if-eq v6, v7, :cond_6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_5

    if-nez v6, :cond_4

    iget-wide v6, v5, Lyads/ot;->c:J

    iget-wide v9, v1, Lyads/wk0;->d:J

    sub-long/2addr v6, v9

    cmp-long v3, v6, v14

    if-ltz v3, :cond_2

    cmp-long v3, v6, v16

    if-gtz v3, :cond_2

    long-to-int v3, v6

    invoke-virtual {v1, v3}, Lyads/wk0;->a(I)V

    :cond_2
    iput-object v8, v0, Lyads/qt;->c:Lyads/mt;

    iget-object v0, v0, Lyads/qt;->b:Lyads/pt;

    invoke-interface {v0}, Lyads/pt;->a()V

    iget-wide v5, v5, Lyads/ot;->c:J

    iget-wide v0, v1, Lyads/wk0;->d:J

    cmp-long v0, v5, v0

    if-nez v0, :cond_3

    return v4

    :cond_3
    iput-wide v5, v2, Lyads/qx4;->a:J

    return v11

    :cond_4
    const-string v0, "Invalid case"

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return v4

    :cond_5
    iget-wide v9, v5, Lyads/ot;->b:J

    iget-wide v13, v5, Lyads/ot;->c:J

    iput-wide v9, v3, Lyads/mt;->e:J

    iput-wide v13, v3, Lyads/mt;->g:J

    iget-wide v5, v3, Lyads/mt;->b:J

    iget-wide v7, v3, Lyads/mt;->d:J

    iget-wide v11, v3, Lyads/mt;->f:J

    move-wide v15, v5

    iget-wide v4, v3, Lyads/mt;->c:J

    move-wide/from16 v18, v15

    move-wide v15, v4

    move-wide/from16 v5, v18

    invoke-static/range {v5 .. v16}, Lyads/mt;->a(JJJJJJ)J

    move-result-wide v4

    iput-wide v4, v3, Lyads/mt;->h:J

    goto/16 :goto_0

    :cond_6
    iget-wide v8, v5, Lyads/ot;->b:J

    iget-wide v12, v5, Lyads/ot;->c:J

    iput-wide v8, v3, Lyads/mt;->d:J

    iput-wide v12, v3, Lyads/mt;->f:J

    iget-wide v6, v3, Lyads/mt;->b:J

    iget-wide v10, v3, Lyads/mt;->e:J

    iget-wide v14, v3, Lyads/mt;->g:J

    iget-wide v4, v3, Lyads/mt;->c:J

    move-wide/from16 v16, v4

    invoke-static/range {v6 .. v17}, Lyads/mt;->a(JJJJJJ)J

    move-result-wide v4

    iput-wide v4, v3, Lyads/mt;->h:J

    goto/16 :goto_0

    :cond_7
    iput-object v8, v0, Lyads/qt;->c:Lyads/mt;

    iget-object v0, v0, Lyads/qt;->b:Lyads/pt;

    invoke-interface {v0}, Lyads/pt;->a()V

    iget-wide v0, v1, Lyads/wk0;->d:J

    cmp-long v0, v9, v0

    if-nez v0, :cond_8

    return v4

    :cond_8
    iput-wide v9, v2, Lyads/qx4;->a:J

    return v11

    :cond_9
    cmp-long v0, v9, v5

    if-nez v0, :cond_a

    return v4

    :cond_a
    iput-wide v9, v2, Lyads/qx4;->a:J

    return v11

    :cond_b
    invoke-static {}, Lud;->g()V

    return v4
.end method

.method public final a(J)V
    .locals 16

    move-object/from16 v0, p0

    move-wide/from16 v2, p1

    .line 215
    iget-object v1, v0, Lyads/qt;->c:Lyads/mt;

    if-eqz v1, :cond_0

    .line 216
    iget-wide v4, v1, Lyads/mt;->a:J

    cmp-long v1, v4, v2

    if-nez v1, :cond_0

    return-void

    .line 217
    :cond_0
    new-instance v1, Lyads/mt;

    iget-object v4, v0, Lyads/qt;->a:Lyads/kt;

    .line 218
    iget-object v4, v4, Lyads/kt;->a:Lyads/nt;

    .line 219
    invoke-interface {v4, v2, v3}, Lyads/nt;->a(J)J

    move-result-wide v4

    .line 220
    iget-object v6, v0, Lyads/qt;->a:Lyads/kt;

    iget-wide v7, v6, Lyads/kt;->c:J

    move-wide v10, v7

    iget-wide v8, v6, Lyads/kt;->d:J

    move-wide v12, v10

    iget-wide v10, v6, Lyads/kt;->e:J

    iget-wide v6, v6, Lyads/kt;->f:J

    move-wide v14, v12

    move-wide v12, v6

    move-wide v6, v14

    invoke-direct/range {v1 .. v13}, Lyads/mt;-><init>(JJJJJJ)V

    .line 221
    iput-object v1, v0, Lyads/qt;->c:Lyads/mt;

    return-void
.end method
