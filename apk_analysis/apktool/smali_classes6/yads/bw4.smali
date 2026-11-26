.class public final Lyads/bw4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final s:Lyads/h14;


# instance fields
.field public final a:Lyads/kx5;

.field public final b:Lyads/h14;

.field public final c:J

.field public final d:J

.field public final e:I

.field public final f:Lyads/up2;

.field public final g:Z

.field public final h:Lyads/g06;

.field public final i:Lyads/q06;

.field public final j:Ljava/util/List;

.field public final k:Lyads/h14;

.field public final l:Z

.field public final m:I

.field public final n:Lyads/dw4;

.field public final o:Z

.field public volatile p:J

.field public volatile q:J

.field public volatile r:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lyads/h14;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, v1}, Lyads/h14;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lyads/bw4;->s:Lyads/h14;

    return-void
.end method

.method public constructor <init>(Lyads/kx5;Lyads/h14;JJILyads/up2;ZLyads/g06;Lyads/q06;Ljava/util/List;Lyads/h14;ZILyads/dw4;JJJZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/bw4;->a:Lyads/kx5;

    iput-object p2, p0, Lyads/bw4;->b:Lyads/h14;

    iput-wide p3, p0, Lyads/bw4;->c:J

    iput-wide p5, p0, Lyads/bw4;->d:J

    iput p7, p0, Lyads/bw4;->e:I

    iput-object p8, p0, Lyads/bw4;->f:Lyads/up2;

    iput-boolean p9, p0, Lyads/bw4;->g:Z

    iput-object p10, p0, Lyads/bw4;->h:Lyads/g06;

    iput-object p11, p0, Lyads/bw4;->i:Lyads/q06;

    iput-object p12, p0, Lyads/bw4;->j:Ljava/util/List;

    iput-object p13, p0, Lyads/bw4;->k:Lyads/h14;

    iput-boolean p14, p0, Lyads/bw4;->l:Z

    iput p15, p0, Lyads/bw4;->m:I

    move-object/from16 p1, p16

    iput-object p1, p0, Lyads/bw4;->n:Lyads/dw4;

    move-wide/from16 p1, p17

    iput-wide p1, p0, Lyads/bw4;->p:J

    move-wide/from16 p1, p19

    iput-wide p1, p0, Lyads/bw4;->q:J

    move-wide/from16 p1, p21

    iput-wide p1, p0, Lyads/bw4;->r:J

    move/from16 p1, p23

    iput-boolean p1, p0, Lyads/bw4;->o:Z

    return-void
.end method


# virtual methods
.method public final a(I)Lyads/bw4;
    .locals 26

    move-object/from16 v0, p0

    .line 82
    new-instance v1, Lyads/bw4;

    move-object v2, v1

    iget-object v1, v0, Lyads/bw4;->a:Lyads/kx5;

    move-object v3, v2

    iget-object v2, v0, Lyads/bw4;->b:Lyads/h14;

    move-object v5, v3

    iget-wide v3, v0, Lyads/bw4;->c:J

    move-object v7, v5

    iget-wide v5, v0, Lyads/bw4;->d:J

    iget-object v8, v0, Lyads/bw4;->f:Lyads/up2;

    iget-boolean v9, v0, Lyads/bw4;->g:Z

    iget-object v10, v0, Lyads/bw4;->h:Lyads/g06;

    iget-object v11, v0, Lyads/bw4;->i:Lyads/q06;

    iget-object v12, v0, Lyads/bw4;->j:Ljava/util/List;

    iget-object v13, v0, Lyads/bw4;->k:Lyads/h14;

    iget-boolean v14, v0, Lyads/bw4;->l:Z

    iget v15, v0, Lyads/bw4;->m:I

    move-object/from16 v16, v1

    iget-object v1, v0, Lyads/bw4;->n:Lyads/dw4;

    move-object/from16 v18, v1

    move-object/from16 v17, v2

    iget-wide v1, v0, Lyads/bw4;->p:J

    move-wide/from16 v19, v1

    iget-wide v1, v0, Lyads/bw4;->q:J

    move-wide/from16 v21, v1

    iget-wide v1, v0, Lyads/bw4;->r:J

    iget-boolean v0, v0, Lyads/bw4;->o:Z

    move/from16 v23, v0

    move-object v0, v7

    move/from16 v7, p1

    move-wide/from16 v24, v1

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v16, v18

    move-wide/from16 v17, v19

    move-wide/from16 v19, v21

    move-wide/from16 v21, v24

    invoke-direct/range {v0 .. v23}, Lyads/bw4;-><init>(Lyads/kx5;Lyads/h14;JJILyads/up2;ZLyads/g06;Lyads/q06;Ljava/util/List;Lyads/h14;ZILyads/dw4;JJJZ)V

    return-object v0
.end method

.method public final a(Lyads/h14;)Lyads/bw4;
    .locals 26

    move-object/from16 v0, p0

    new-instance v1, Lyads/bw4;

    move-object v2, v1

    iget-object v1, v0, Lyads/bw4;->a:Lyads/kx5;

    move-object v3, v2

    iget-object v2, v0, Lyads/bw4;->b:Lyads/h14;

    move-object v5, v3

    iget-wide v3, v0, Lyads/bw4;->c:J

    move-object v7, v5

    iget-wide v5, v0, Lyads/bw4;->d:J

    move-object v8, v7

    iget v7, v0, Lyads/bw4;->e:I

    move-object v9, v8

    iget-object v8, v0, Lyads/bw4;->f:Lyads/up2;

    move-object v10, v9

    iget-boolean v9, v0, Lyads/bw4;->g:Z

    move-object v11, v10

    iget-object v10, v0, Lyads/bw4;->h:Lyads/g06;

    move-object v12, v11

    iget-object v11, v0, Lyads/bw4;->i:Lyads/q06;

    move-object v13, v12

    iget-object v12, v0, Lyads/bw4;->j:Ljava/util/List;

    iget-boolean v14, v0, Lyads/bw4;->l:Z

    iget v15, v0, Lyads/bw4;->m:I

    move-object/from16 v16, v1

    iget-object v1, v0, Lyads/bw4;->n:Lyads/dw4;

    move-object/from16 v18, v1

    move-object/from16 v17, v2

    iget-wide v1, v0, Lyads/bw4;->p:J

    move-wide/from16 v19, v1

    iget-wide v1, v0, Lyads/bw4;->q:J

    move-wide/from16 v21, v1

    iget-wide v1, v0, Lyads/bw4;->r:J

    iget-boolean v0, v0, Lyads/bw4;->o:Z

    move/from16 v23, v0

    move-object v0, v13

    move-object/from16 v13, p1

    move-wide/from16 v24, v1

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v16, v18

    move-wide/from16 v17, v19

    move-wide/from16 v19, v21

    move-wide/from16 v21, v24

    invoke-direct/range {v0 .. v23}, Lyads/bw4;-><init>(Lyads/kx5;Lyads/h14;JJILyads/up2;ZLyads/g06;Lyads/q06;Ljava/util/List;Lyads/h14;ZILyads/dw4;JJJZ)V

    return-object v0
.end method

.method public final a(Lyads/h14;JJJJLyads/g06;Lyads/q06;Ljava/util/List;)Lyads/bw4;
    .locals 24

    move-object/from16 v0, p0

    .line 84
    new-instance v1, Lyads/bw4;

    move-object v2, v1

    iget-object v1, v0, Lyads/bw4;->a:Lyads/kx5;

    iget v7, v0, Lyads/bw4;->e:I

    iget-object v8, v0, Lyads/bw4;->f:Lyads/up2;

    iget-boolean v9, v0, Lyads/bw4;->g:Z

    iget-object v13, v0, Lyads/bw4;->k:Lyads/h14;

    iget-boolean v14, v0, Lyads/bw4;->l:Z

    iget v15, v0, Lyads/bw4;->m:I

    iget-object v3, v0, Lyads/bw4;->n:Lyads/dw4;

    iget-wide v4, v0, Lyads/bw4;->p:J

    iget-boolean v0, v0, Lyads/bw4;->o:Z

    move-wide/from16 v21, p2

    move-wide/from16 v19, p8

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move/from16 v23, v0

    move-object v0, v2

    move-object/from16 v16, v3

    move-wide/from16 v17, v4

    move-object/from16 v2, p1

    move-wide/from16 v3, p4

    move-wide/from16 v5, p6

    invoke-direct/range {v0 .. v23}, Lyads/bw4;-><init>(Lyads/kx5;Lyads/h14;JJILyads/up2;ZLyads/g06;Lyads/q06;Ljava/util/List;Lyads/h14;ZILyads/dw4;JJJZ)V

    return-object v0
.end method

.method public final a(Lyads/kx5;)Lyads/bw4;
    .locals 26

    move-object/from16 v0, p0

    .line 81
    new-instance v1, Lyads/bw4;

    iget-object v2, v0, Lyads/bw4;->b:Lyads/h14;

    iget-wide v3, v0, Lyads/bw4;->c:J

    iget-wide v5, v0, Lyads/bw4;->d:J

    iget v7, v0, Lyads/bw4;->e:I

    iget-object v8, v0, Lyads/bw4;->f:Lyads/up2;

    iget-boolean v9, v0, Lyads/bw4;->g:Z

    iget-object v10, v0, Lyads/bw4;->h:Lyads/g06;

    iget-object v11, v0, Lyads/bw4;->i:Lyads/q06;

    iget-object v12, v0, Lyads/bw4;->j:Ljava/util/List;

    iget-object v13, v0, Lyads/bw4;->k:Lyads/h14;

    iget-boolean v14, v0, Lyads/bw4;->l:Z

    iget v15, v0, Lyads/bw4;->m:I

    move-object/from16 v16, v1

    iget-object v1, v0, Lyads/bw4;->n:Lyads/dw4;

    move-object/from16 v18, v1

    move-object/from16 v17, v2

    iget-wide v1, v0, Lyads/bw4;->p:J

    move-wide/from16 v19, v1

    iget-wide v1, v0, Lyads/bw4;->q:J

    move-wide/from16 v21, v1

    iget-wide v1, v0, Lyads/bw4;->r:J

    iget-boolean v0, v0, Lyads/bw4;->o:Z

    move/from16 v23, v0

    move-object/from16 v0, v16

    move-object/from16 v16, v18

    move-wide/from16 v24, v1

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move-wide/from16 v17, v19

    move-wide/from16 v19, v21

    move-wide/from16 v21, v24

    invoke-direct/range {v0 .. v23}, Lyads/bw4;-><init>(Lyads/kx5;Lyads/h14;JJILyads/up2;ZLyads/g06;Lyads/q06;Ljava/util/List;Lyads/h14;ZILyads/dw4;JJJZ)V

    return-object v0
.end method

.method public final a(Lyads/up2;)Lyads/bw4;
    .locals 26

    move-object/from16 v0, p0

    .line 83
    new-instance v1, Lyads/bw4;

    move-object v2, v1

    iget-object v1, v0, Lyads/bw4;->a:Lyads/kx5;

    move-object v3, v2

    iget-object v2, v0, Lyads/bw4;->b:Lyads/h14;

    move-object v5, v3

    iget-wide v3, v0, Lyads/bw4;->c:J

    move-object v7, v5

    iget-wide v5, v0, Lyads/bw4;->d:J

    move-object v8, v7

    iget v7, v0, Lyads/bw4;->e:I

    iget-boolean v9, v0, Lyads/bw4;->g:Z

    iget-object v10, v0, Lyads/bw4;->h:Lyads/g06;

    iget-object v11, v0, Lyads/bw4;->i:Lyads/q06;

    iget-object v12, v0, Lyads/bw4;->j:Ljava/util/List;

    iget-object v13, v0, Lyads/bw4;->k:Lyads/h14;

    iget-boolean v14, v0, Lyads/bw4;->l:Z

    iget v15, v0, Lyads/bw4;->m:I

    move-object/from16 v16, v1

    iget-object v1, v0, Lyads/bw4;->n:Lyads/dw4;

    move-object/from16 v18, v1

    move-object/from16 v17, v2

    iget-wide v1, v0, Lyads/bw4;->p:J

    move-wide/from16 v19, v1

    iget-wide v1, v0, Lyads/bw4;->q:J

    move-wide/from16 v21, v1

    iget-wide v1, v0, Lyads/bw4;->r:J

    iget-boolean v0, v0, Lyads/bw4;->o:Z

    move/from16 v23, v0

    move-object v0, v8

    move-object/from16 v8, p1

    move-wide/from16 v24, v1

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v16, v18

    move-wide/from16 v17, v19

    move-wide/from16 v19, v21

    move-wide/from16 v21, v24

    invoke-direct/range {v0 .. v23}, Lyads/bw4;-><init>(Lyads/kx5;Lyads/h14;JJILyads/up2;ZLyads/g06;Lyads/q06;Ljava/util/List;Lyads/h14;ZILyads/dw4;JJJZ)V

    return-object v0
.end method
