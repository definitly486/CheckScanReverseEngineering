.class public final Lyads/vj0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/tm;


# instance fields
.field public A:I

.field public B:J

.field public C:J

.field public D:J

.field public E:J

.field public F:I

.field public G:Z

.field public H:Z

.field public I:J

.field public J:F

.field public K:[Lyads/mm;

.field public L:[Ljava/nio/ByteBuffer;

.field public M:Ljava/nio/ByteBuffer;

.field public N:I

.field public O:Ljava/nio/ByteBuffer;

.field public P:[B

.field public Q:I

.field public R:I

.field public S:Z

.field public T:Z

.field public U:Z

.field public V:Z

.field public W:I

.field public X:Lyads/an;

.field public Y:Z

.field public Z:J

.field public final a:Lyads/fm;

.field public a0:Z

.field public final b:Lyads/oj0;

.field public b0:Z

.field public final c:Z

.field public final d:Lyads/sy;

.field public final e:Lyads/i26;

.field public final f:[Lyads/mm;

.field public final g:[Lyads/mm;

.field public final h:Lyads/m50;

.field public final i:Lyads/xm;

.field public final j:Ljava/util/ArrayDeque;

.field public final k:Z

.field public final l:I

.field public m:Lyads/uj0;

.field public final n:Lyads/rj0;

.field public final o:Lyads/rj0;

.field public final p:Lyads/xj0;

.field public q:Lyads/rw4;

.field public r:Lyads/ry3;

.field public s:Lyads/nj0;

.field public t:Lyads/nj0;

.field public u:Landroid/media/AudioTrack;

.field public v:Lyads/am;

.field public w:Lyads/qj0;

.field public x:Lyads/qj0;

.field public y:Lyads/dw4;

.field public z:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Lyads/mj0;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lyads/mj0;->a:Lyads/fm;

    iput-object v0, p0, Lyads/vj0;->a:Lyads/fm;

    iget-object v0, p1, Lyads/mj0;->b:Lyads/oj0;

    iput-object v0, p0, Lyads/vj0;->b:Lyads/oj0;

    sget v1, Lyads/u56;->a:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lyads/vj0;->c:Z

    iput-boolean v1, p0, Lyads/vj0;->k:Z

    iput v1, p0, Lyads/vj0;->l:I

    iget-object p1, p1, Lyads/mj0;->c:Lyads/xj0;

    iput-object p1, p0, Lyads/vj0;->p:Lyads/xj0;

    new-instance p1, Lyads/m50;

    invoke-direct {p1, v1}, Lyads/m50;-><init>(I)V

    iput-object p1, p0, Lyads/vj0;->h:Lyads/m50;

    invoke-virtual {p1}, Lyads/m50;->d()Z

    new-instance p1, Lyads/xm;

    new-instance v2, Lyads/sj0;

    invoke-direct {v2, p0}, Lyads/sj0;-><init>(Lyads/vj0;)V

    invoke-direct {p1, v2}, Lyads/xm;-><init>(Lyads/sj0;)V

    iput-object p1, p0, Lyads/vj0;->i:Lyads/xm;

    new-instance p1, Lyads/sy;

    invoke-direct {p1}, Lyads/sy;-><init>()V

    iput-object p1, p0, Lyads/vj0;->d:Lyads/sy;

    new-instance v2, Lyads/i26;

    invoke-direct {v2}, Lyads/i26;-><init>()V

    iput-object v2, p0, Lyads/vj0;->e:Lyads/i26;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lyads/t85;

    invoke-direct {v4}, Lyads/t85;-><init>()V

    const/4 v5, 0x3

    new-array v5, v5, [Lyads/wp;

    aput-object v4, v5, v1

    const/4 v4, 0x1

    aput-object p1, v5, v4

    const/4 p1, 0x2

    aput-object v2, v5, p1

    invoke-static {v3, v5}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    iget-object p1, v0, Lyads/oj0;->a:[Lyads/mm;

    invoke-static {v3, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    new-array p1, v1, [Lyads/mm;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lyads/mm;

    iput-object p1, p0, Lyads/vj0;->f:[Lyads/mm;

    new-instance p1, Lyads/oy2;

    invoke-direct {p1}, Lyads/oy2;-><init>()V

    new-array v0, v4, [Lyads/mm;

    aput-object p1, v0, v1

    iput-object v0, p0, Lyads/vj0;->g:[Lyads/mm;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lyads/vj0;->J:F

    sget-object p1, Lyads/am;->h:Lyads/am;

    iput-object p1, p0, Lyads/vj0;->v:Lyads/am;

    iput v1, p0, Lyads/vj0;->W:I

    new-instance p1, Lyads/an;

    invoke-direct {p1}, Lyads/an;-><init>()V

    iput-object p1, p0, Lyads/vj0;->X:Lyads/an;

    new-instance v2, Lyads/qj0;

    sget-object v3, Lyads/dw4;->e:Lyads/dw4;

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v2 .. v8}, Lyads/qj0;-><init>(Lyads/dw4;ZJJ)V

    iput-object v2, p0, Lyads/vj0;->x:Lyads/qj0;

    iput-object v3, p0, Lyads/vj0;->y:Lyads/dw4;

    const/4 p1, -0x1

    iput p1, p0, Lyads/vj0;->R:I

    new-array p1, v1, [Lyads/mm;

    iput-object p1, p0, Lyads/vj0;->K:[Lyads/mm;

    new-array p1, v1, [Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lyads/vj0;->L:[Ljava/nio/ByteBuffer;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lyads/vj0;->j:Ljava/util/ArrayDeque;

    new-instance p1, Lyads/rj0;

    invoke-direct {p1}, Lyads/rj0;-><init>()V

    iput-object p1, p0, Lyads/vj0;->n:Lyads/rj0;

    new-instance p1, Lyads/rj0;

    invoke-direct {p1}, Lyads/rj0;-><init>()V

    iput-object p1, p0, Lyads/vj0;->o:Lyads/rj0;

    return-void
.end method

.method public static a(Landroid/media/AudioTrack;)Z
    .locals 2

    .line 1351
    sget v0, Lyads/u56;->a:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/media/AudioTrack;->isOffloadedPlayback()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Lyads/vz2;)I
    .locals 3

    .line 1167
    iget-object v0, p1, Lyads/vz2;->m:Ljava/lang/String;

    const-string v1, "audio/raw"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_3

    .line 1168
    iget v0, p1, Lyads/vz2;->B:I

    invoke-static {v0}, Lyads/u56;->d(I)Z

    move-result v0

    .line 1169
    iget p1, p1, Lyads/vz2;->B:I

    if-nez v0, :cond_0

    .line 1170
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Invalid PCM encoding: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DefaultAudioSink"

    invoke-static {p1, p0}, Lyads/sv3;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    if-eq p1, v2, :cond_2

    .line 1171
    iget-boolean p0, p0, Lyads/vj0;->c:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x4

    if-ne p1, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v2

    .line 1172
    :cond_3
    iget-boolean v0, p0, Lyads/vj0;->a0:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lyads/vj0;->v:Lyads/am;

    invoke-virtual {p0, v0, p1}, Lyads/vj0;->a(Lyads/am;Lyads/vz2;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v2

    .line 1173
    :cond_4
    iget-object p0, p0, Lyads/vj0;->a:Lyads/fm;

    .line 1174
    invoke-virtual {p0, p1}, Lyads/fm;->a(Lyads/vz2;)Landroid/util/Pair;

    move-result-object p0

    if-eqz p0, :cond_5

    return v2

    :cond_5
    return v1
.end method

.method public final a(Z)J
    .locals 29

    move-object/from16 v0, p0

    .line 952
    invoke-virtual {v0}, Lyads/vj0;->f()Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-boolean v1, v0, Lyads/vj0;->H:Z

    if-eqz v1, :cond_0

    goto/16 :goto_19

    .line 953
    :cond_0
    iget-object v1, v0, Lyads/vj0;->i:Lyads/xm;

    .line 954
    iget-object v2, v1, Lyads/xm;->c:Landroid/media/AudioTrack;

    .line 955
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 956
    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v2

    const/4 v8, 0x3

    const/4 v9, 0x2

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x3e8

    const/4 v14, 0x1

    if-ne v2, v8, :cond_1

    .line 957
    invoke-virtual {v1}, Lyads/xm;->a()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lyads/xm;->a(J)J

    move-result-wide v2

    cmp-long v4, v2, v10

    if-nez v4, :cond_2

    :cond_1
    move-wide/from16 v17, v12

    goto/16 :goto_a

    .line 958
    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v17

    div-long v5, v17, v12

    move-wide/from16 v17, v12

    .line 959
    iget-wide v12, v1, Lyads/xm;->m:J

    sub-long v12, v5, v12

    const-wide/16 v21, 0x7530

    cmp-long v4, v12, v21

    if-ltz v4, :cond_4

    .line 960
    iget-object v4, v1, Lyads/xm;->b:[J

    iget v12, v1, Lyads/xm;->v:I

    sub-long v21, v2, v5

    aput-wide v21, v4, v12

    add-int/2addr v12, v14

    const/16 v4, 0xa

    .line 961
    rem-int/2addr v12, v4

    iput v12, v1, Lyads/xm;->v:I

    .line 962
    iget v12, v1, Lyads/xm;->w:I

    if-ge v12, v4, :cond_3

    add-int/2addr v12, v14

    .line 963
    iput v12, v1, Lyads/xm;->w:I

    .line 964
    :cond_3
    iput-wide v5, v1, Lyads/xm;->m:J

    .line 965
    iput-wide v10, v1, Lyads/xm;->l:J

    const/4 v4, 0x0

    .line 966
    :goto_0
    iget v12, v1, Lyads/xm;->w:I

    if-ge v4, v12, :cond_4

    move-wide/from16 v21, v10

    .line 967
    iget-wide v10, v1, Lyads/xm;->l:J

    iget-object v13, v1, Lyads/xm;->b:[J

    aget-wide v23, v13, v4

    int-to-long v12, v12

    div-long v23, v23, v12

    add-long v10, v23, v10

    iput-wide v10, v1, Lyads/xm;->l:J

    add-int/lit8 v4, v4, 0x1

    move-wide/from16 v10, v21

    goto :goto_0

    :cond_4
    move-wide/from16 v21, v10

    .line 968
    iget-boolean v4, v1, Lyads/xm;->h:Z

    if-eqz v4, :cond_5

    goto/16 :goto_a

    .line 969
    :cond_5
    iget-object v4, v1, Lyads/xm;->f:Lyads/wm;

    .line 970
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 971
    iget-object v10, v4, Lyads/wm;->a:Lyads/vm;

    const/4 v13, 0x4

    const-wide/32 v23, 0x7a120

    if-eqz v10, :cond_e

    iget-wide v11, v4, Lyads/wm;->e:J

    sub-long v11, v5, v11

    iget-wide v7, v4, Lyads/wm;->d:J

    cmp-long v7, v11, v7

    if-gez v7, :cond_6

    goto :goto_1

    .line 972
    :cond_6
    iput-wide v5, v4, Lyads/wm;->e:J

    .line 973
    invoke-virtual {v10}, Lyads/vm;->b()Z

    move-result v7

    .line 974
    iget v8, v4, Lyads/wm;->b:I

    if-eqz v8, :cond_c

    if-eq v8, v14, :cond_a

    if-eq v8, v9, :cond_9

    const/4 v10, 0x3

    if-eq v8, v10, :cond_8

    if-ne v8, v13, :cond_7

    goto :goto_2

    .line 975
    :cond_7
    invoke-static {}, Lud;->g()V

    return-wide v21

    :cond_8
    if-eqz v7, :cond_f

    .line 976
    invoke-virtual {v4}, Lyads/wm;->a()V

    goto :goto_2

    :cond_9
    if-nez v7, :cond_f

    .line 977
    invoke-virtual {v4}, Lyads/wm;->a()V

    goto :goto_2

    :cond_a
    if-eqz v7, :cond_b

    .line 978
    iget-object v8, v4, Lyads/wm;->a:Lyads/vm;

    .line 979
    iget-wide v10, v8, Lyads/vm;->e:J

    .line 980
    iget-wide v13, v4, Lyads/wm;->f:J

    cmp-long v10, v10, v13

    if-lez v10, :cond_f

    .line 981
    invoke-virtual {v4, v9}, Lyads/wm;->a(I)V

    goto :goto_2

    .line 982
    :cond_b
    invoke-virtual {v4}, Lyads/wm;->a()V

    goto :goto_2

    :cond_c
    if-eqz v7, :cond_d

    .line 983
    iget-object v10, v4, Lyads/wm;->a:Lyads/vm;

    invoke-virtual {v10}, Lyads/vm;->a()J

    move-result-wide v10

    iget-wide v13, v4, Lyads/wm;->c:J

    cmp-long v10, v10, v13

    if-ltz v10, :cond_e

    .line 984
    iget-object v10, v4, Lyads/wm;->a:Lyads/vm;

    .line 985
    iget-wide v10, v10, Lyads/vm;->e:J

    .line 986
    iput-wide v10, v4, Lyads/wm;->f:J

    const/4 v8, 0x1

    .line 987
    invoke-virtual {v4, v8}, Lyads/wm;->a(I)V

    goto :goto_2

    .line 988
    :cond_d
    iget-wide v10, v4, Lyads/wm;->c:J

    sub-long v10, v5, v10

    cmp-long v10, v10, v23

    if-lez v10, :cond_f

    const/4 v10, 0x3

    .line 989
    invoke-virtual {v4, v10}, Lyads/wm;->a(I)V

    goto :goto_2

    :cond_e
    :goto_1
    const/4 v7, 0x0

    :cond_f
    :goto_2
    const-string v10, "DefaultAudioSink"

    if-nez v7, :cond_10

    const-wide/32 v25, 0x4c4b40

    goto/16 :goto_8

    .line 990
    :cond_10
    iget-object v7, v4, Lyads/wm;->a:Lyads/vm;

    if-eqz v7, :cond_11

    invoke-virtual {v7}, Lyads/vm;->a()J

    move-result-wide v25

    move-wide/from16 v12, v25

    :goto_3
    const-wide/32 v25, 0x4c4b40

    goto :goto_4

    :cond_11
    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_3

    .line 991
    :goto_4
    iget-object v11, v4, Lyads/wm;->a:Lyads/vm;

    if-eqz v11, :cond_12

    .line 992
    iget-wide v7, v11, Lyads/vm;->e:J

    goto :goto_5

    :cond_12
    const-wide/16 v7, -0x1

    :goto_5
    sub-long v27, v12, v5

    .line 993
    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->abs(J)J

    move-result-wide v27

    cmp-long v11, v27, v25

    const-string v14, ", "

    if-lez v11, :cond_14

    .line 994
    iget-object v11, v1, Lyads/xm;->a:Lyads/sj0;

    .line 995
    const-string v15, "Spurious audio timestamp (system clock mismatch): "

    .line 996
    invoke-static {v7, v8, v15, v14}, Lxp;->f(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 997
    invoke-virtual {v7, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 998
    invoke-static {v7, v14, v5, v6, v14}, Ldq;->d(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 999
    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v11, Lyads/sj0;->a:Lyads/vj0;

    .line 1000
    iget-object v3, v2, Lyads/vj0;->t:Lyads/nj0;

    .line 1001
    iget v8, v3, Lyads/nj0;->c:I

    if-nez v8, :cond_13

    .line 1002
    iget-wide v12, v2, Lyads/vj0;->B:J

    iget v2, v3, Lyads/nj0;->b:I

    int-to-long v2, v2

    div-long/2addr v12, v2

    goto :goto_6

    .line 1003
    :cond_13
    iget-wide v12, v2, Lyads/vj0;->C:J

    .line 1004
    :goto_6
    invoke-virtual {v7, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v11, Lyads/sj0;->a:Lyads/vj0;

    .line 1005
    invoke-virtual {v2}, Lyads/vj0;->d()J

    move-result-wide v2

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1006
    invoke-static {v10, v2}, Lyads/sv3;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x4

    .line 1007
    invoke-virtual {v4, v7}, Lyads/wm;->a(I)V

    goto :goto_8

    .line 1008
    :cond_14
    invoke-virtual {v1, v7, v8}, Lyads/xm;->a(J)J

    move-result-wide v15

    sub-long/2addr v15, v2

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(J)J

    move-result-wide v15

    cmp-long v11, v15, v25

    if-lez v11, :cond_16

    .line 1009
    iget-object v11, v1, Lyads/xm;->a:Lyads/sj0;

    .line 1010
    const-string v15, "Spurious audio timestamp (frame position mismatch): "

    .line 1011
    invoke-static {v7, v8, v15, v14}, Lxp;->f(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1012
    invoke-virtual {v7, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1013
    invoke-static {v7, v14, v5, v6, v14}, Ldq;->d(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 1014
    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v11, Lyads/sj0;->a:Lyads/vj0;

    .line 1015
    iget-object v3, v2, Lyads/vj0;->t:Lyads/nj0;

    .line 1016
    iget v8, v3, Lyads/nj0;->c:I

    if-nez v8, :cond_15

    .line 1017
    iget-wide v12, v2, Lyads/vj0;->B:J

    iget v2, v3, Lyads/nj0;->b:I

    int-to-long v2, v2

    div-long/2addr v12, v2

    goto :goto_7

    .line 1018
    :cond_15
    iget-wide v12, v2, Lyads/vj0;->C:J

    .line 1019
    :goto_7
    invoke-virtual {v7, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v11, Lyads/sj0;->a:Lyads/vj0;

    .line 1020
    invoke-virtual {v2}, Lyads/vj0;->d()J

    move-result-wide v2

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1021
    invoke-static {v10, v2}, Lyads/sv3;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x4

    .line 1022
    invoke-virtual {v4, v7}, Lyads/wm;->a(I)V

    goto :goto_8

    :cond_16
    const/4 v7, 0x4

    .line 1023
    iget v2, v4, Lyads/wm;->b:I

    if-ne v2, v7, :cond_17

    .line 1024
    invoke-virtual {v4}, Lyads/wm;->a()V

    .line 1025
    :cond_17
    :goto_8
    iget-boolean v2, v1, Lyads/xm;->q:Z

    if-eqz v2, :cond_19

    iget-object v2, v1, Lyads/xm;->n:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_19

    iget-wide v3, v1, Lyads/xm;->r:J

    sub-long v3, v5, v3

    cmp-long v3, v3, v23

    if-ltz v3, :cond_19

    const/4 v3, 0x0

    .line 1026
    :try_start_0
    iget-object v4, v1, Lyads/xm;->c:Landroid/media/AudioTrack;

    .line 1027
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1028
    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    sget v4, Lyads/u56;->a:I

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v7, v2

    mul-long v7, v7, v17

    iget-wide v11, v1, Lyads/xm;->i:J

    sub-long/2addr v7, v11

    iput-wide v7, v1, Lyads/xm;->o:J

    move-wide/from16 v11, v21

    .line 1029
    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    iput-wide v7, v1, Lyads/xm;->o:J

    cmp-long v2, v7, v25

    if-lez v2, :cond_18

    .line 1030
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Ignoring impossibly large audio latency: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Lyads/sv3;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v11, 0x0

    .line 1031
    iput-wide v11, v1, Lyads/xm;->o:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    .line 1032
    :catch_0
    iput-object v3, v1, Lyads/xm;->n:Ljava/lang/reflect/Method;

    .line 1033
    :cond_18
    :goto_9
    iput-wide v5, v1, Lyads/xm;->r:J

    .line 1034
    :cond_19
    :goto_a
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    div-long v2, v2, v17

    .line 1035
    iget-object v4, v1, Lyads/xm;->f:Lyads/wm;

    .line 1036
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1037
    iget v5, v4, Lyads/wm;->b:I

    if-ne v5, v9, :cond_1a

    const/4 v7, 0x1

    goto :goto_b

    :cond_1a
    const/4 v7, 0x0

    :goto_b
    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v7, :cond_1e

    .line 1038
    iget-object v6, v4, Lyads/wm;->a:Lyads/vm;

    if-eqz v6, :cond_1b

    .line 1039
    iget-wide v10, v6, Lyads/vm;->e:J

    goto :goto_c

    :cond_1b
    const-wide/16 v10, -0x1

    .line 1040
    :goto_c
    invoke-virtual {v1, v10, v11}, Lyads/xm;->a(J)J

    move-result-wide v10

    .line 1041
    iget-object v4, v4, Lyads/wm;->a:Lyads/vm;

    if-eqz v4, :cond_1c

    invoke-virtual {v4}, Lyads/vm;->a()J

    move-result-wide v12

    move-wide/from16 v19, v12

    goto :goto_d

    :cond_1c
    const-wide v19, -0x7fffffffffffffffL    # -4.9E-324

    :goto_d
    sub-long v12, v2, v19

    .line 1042
    iget v4, v1, Lyads/xm;->j:F

    .line 1043
    sget v6, Lyads/u56;->a:I

    cmpl-float v6, v4, v5

    if-nez v6, :cond_1d

    goto :goto_e

    :cond_1d
    long-to-double v12, v12

    float-to-double v14, v4

    mul-double/2addr v12, v14

    .line 1044
    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    :goto_e
    add-long/2addr v12, v10

    goto :goto_11

    .line 1045
    :cond_1e
    iget v4, v1, Lyads/xm;->w:I

    if-nez v4, :cond_1f

    .line 1046
    invoke-virtual {v1}, Lyads/xm;->a()J

    move-result-wide v10

    invoke-virtual {v1, v10, v11}, Lyads/xm;->a(J)J

    move-result-wide v10

    :goto_f
    move-wide v12, v10

    goto :goto_10

    .line 1047
    :cond_1f
    iget-wide v10, v1, Lyads/xm;->l:J

    add-long/2addr v10, v2

    goto :goto_f

    :goto_10
    if-nez p1, :cond_20

    .line 1048
    iget-wide v10, v1, Lyads/xm;->o:J

    sub-long/2addr v12, v10

    const-wide/16 v10, 0x0

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    .line 1049
    :cond_20
    :goto_11
    iget-boolean v4, v1, Lyads/xm;->D:Z

    if-eq v4, v7, :cond_21

    .line 1050
    iget-wide v10, v1, Lyads/xm;->C:J

    iput-wide v10, v1, Lyads/xm;->F:J

    .line 1051
    iget-wide v10, v1, Lyads/xm;->B:J

    iput-wide v10, v1, Lyads/xm;->E:J

    .line 1052
    :cond_21
    iget-wide v10, v1, Lyads/xm;->F:J

    sub-long v10, v2, v10

    const-wide/32 v14, 0xf4240

    cmp-long v4, v10, v14

    if-gez v4, :cond_23

    move v4, v5

    .line 1053
    iget-wide v5, v1, Lyads/xm;->E:J

    iget v8, v1, Lyads/xm;->j:F

    .line 1054
    sget v16, Lyads/u56;->a:I

    cmpl-float v16, v8, v4

    move/from16 p1, v4

    move-wide/from16 v19, v5

    if-nez v16, :cond_22

    move v6, v9

    move-wide v4, v10

    move-wide/from16 v21, v4

    goto :goto_12

    :cond_22
    long-to-double v4, v10

    move v6, v9

    move-wide/from16 v21, v10

    float-to-double v9, v8

    mul-double/2addr v4, v9

    .line 1055
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    :goto_12
    add-long v4, v4, v19

    mul-long v10, v21, v17

    .line 1056
    div-long/2addr v10, v14

    mul-long/2addr v12, v10

    sub-long v8, v17, v10

    mul-long/2addr v8, v4

    add-long/2addr v8, v12

    .line 1057
    div-long v12, v8, v17

    goto :goto_13

    :cond_23
    move/from16 p1, v5

    move v6, v9

    .line 1058
    :goto_13
    iget-boolean v4, v1, Lyads/xm;->k:Z

    if-nez v4, :cond_25

    iget-wide v4, v1, Lyads/xm;->B:J

    cmp-long v8, v12, v4

    if-lez v8, :cond_25

    const/4 v8, 0x1

    .line 1059
    iput-boolean v8, v1, Lyads/xm;->k:Z

    sub-long v4, v12, v4

    .line 1060
    invoke-static {v4, v5}, Lyads/u56;->b(J)J

    move-result-wide v4

    .line 1061
    iget v8, v1, Lyads/xm;->j:F

    cmpl-float v9, v8, p1

    if-nez v9, :cond_24

    goto :goto_14

    :cond_24
    long-to-double v4, v4

    float-to-double v8, v8

    div-double/2addr v4, v8

    .line 1062
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    .line 1063
    :goto_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v4, v5}, Lyads/u56;->b(J)J

    move-result-wide v4

    sub-long/2addr v8, v4

    .line 1064
    iget-object v4, v1, Lyads/xm;->a:Lyads/sj0;

    .line 1065
    iget-object v4, v4, Lyads/sj0;->a:Lyads/vj0;

    .line 1066
    iget-object v4, v4, Lyads/vj0;->r:Lyads/ry3;

    if-eqz v4, :cond_25

    .line 1067
    iget-object v4, v4, Lyads/ry3;->a:Lyads/sy3;

    .line 1068
    iget-object v4, v4, Lyads/sy3;->H0:Lyads/nm;

    invoke-virtual {v4, v8, v9}, Lyads/nm;->b(J)V

    .line 1069
    :cond_25
    iput-wide v2, v1, Lyads/xm;->C:J

    .line 1070
    iput-wide v12, v1, Lyads/xm;->B:J

    .line 1071
    iput-boolean v7, v1, Lyads/xm;->D:Z

    .line 1072
    iget-object v1, v0, Lyads/vj0;->t:Lyads/nj0;

    invoke-virtual {v0}, Lyads/vj0;->d()J

    move-result-wide v2

    mul-long/2addr v2, v14

    .line 1073
    iget v1, v1, Lyads/nj0;->e:I

    int-to-long v4, v1

    .line 1074
    div-long/2addr v2, v4

    .line 1075
    invoke-static {v12, v13, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 1076
    :goto_15
    iget-object v3, v0, Lyads/vj0;->j:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_26

    iget-object v3, v0, Lyads/vj0;->j:Ljava/util/ArrayDeque;

    .line 1077
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/qj0;

    iget-wide v3, v3, Lyads/qj0;->d:J

    cmp-long v3, v1, v3

    if-ltz v3, :cond_26

    .line 1078
    iget-object v3, v0, Lyads/vj0;->j:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/qj0;

    iput-object v3, v0, Lyads/vj0;->x:Lyads/qj0;

    goto :goto_15

    .line 1079
    :cond_26
    iget-object v3, v0, Lyads/vj0;->x:Lyads/qj0;

    iget-wide v4, v3, Lyads/qj0;->d:J

    sub-long v7, v1, v4

    .line 1080
    iget-object v3, v3, Lyads/qj0;->a:Lyads/dw4;

    sget-object v4, Lyads/dw4;->e:Lyads/dw4;

    invoke-virtual {v3, v4}, Lyads/dw4;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 1081
    iget-object v1, v0, Lyads/vj0;->x:Lyads/qj0;

    iget-wide v1, v1, Lyads/qj0;->c:J

    add-long/2addr v1, v7

    goto :goto_18

    .line 1082
    :cond_27
    iget-object v3, v0, Lyads/vj0;->j:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 1083
    iget-object v1, v0, Lyads/vj0;->b:Lyads/oj0;

    .line 1084
    iget-object v1, v1, Lyads/oj0;->c:Lyads/po5;

    .line 1085
    iget-wide v2, v1, Lyads/po5;->o:J

    const-wide/16 v4, 0x400

    cmp-long v2, v2, v4

    if-ltz v2, :cond_29

    .line 1086
    iget-wide v2, v1, Lyads/po5;->n:J

    iget-object v4, v1, Lyads/po5;->j:Lyads/oo5;

    .line 1087
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1088
    iget v5, v4, Lyads/oo5;->k:I

    iget v4, v4, Lyads/oo5;->b:I

    mul-int/2addr v5, v4

    mul-int/2addr v5, v6

    int-to-long v4, v5

    sub-long v9, v2, v4

    .line 1089
    iget-object v2, v1, Lyads/po5;->h:Lyads/km;

    iget v2, v2, Lyads/km;->a:I

    iget-object v3, v1, Lyads/po5;->g:Lyads/km;

    iget v3, v3, Lyads/km;->a:I

    .line 1090
    iget-wide v11, v1, Lyads/po5;->o:J

    if-ne v2, v3, :cond_28

    .line 1091
    invoke-static/range {v7 .. v12}, Lyads/u56;->a(JJJ)J

    move-result-wide v1

    goto :goto_16

    :cond_28
    int-to-long v1, v2

    mul-long/2addr v9, v1

    int-to-long v1, v3

    mul-long/2addr v11, v1

    .line 1092
    invoke-static/range {v7 .. v12}, Lyads/u56;->a(JJJ)J

    move-result-wide v1

    goto :goto_16

    .line 1093
    :cond_29
    iget v1, v1, Lyads/po5;->c:F

    float-to-double v1, v1

    long-to-double v3, v7

    mul-double/2addr v1, v3

    double-to-long v1, v1

    .line 1094
    :goto_16
    iget-object v3, v0, Lyads/vj0;->x:Lyads/qj0;

    iget-wide v3, v3, Lyads/qj0;->c:J

    add-long/2addr v1, v3

    goto :goto_18

    .line 1095
    :cond_2a
    iget-object v3, v0, Lyads/vj0;->j:Ljava/util/ArrayDeque;

    .line 1096
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/qj0;

    .line 1097
    iget-wide v4, v3, Lyads/qj0;->d:J

    sub-long/2addr v4, v1

    .line 1098
    iget-object v1, v0, Lyads/vj0;->x:Lyads/qj0;

    iget-object v1, v1, Lyads/qj0;->a:Lyads/dw4;

    iget v1, v1, Lyads/dw4;->b:F

    .line 1099
    sget v2, Lyads/u56;->a:I

    cmpl-float v2, v1, p1

    if-nez v2, :cond_2b

    goto :goto_17

    :cond_2b
    long-to-double v4, v4

    float-to-double v1, v1

    mul-double/2addr v4, v1

    .line 1100
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    .line 1101
    :goto_17
    iget-wide v1, v3, Lyads/qj0;->c:J

    sub-long/2addr v1, v4

    .line 1102
    :goto_18
    iget-object v3, v0, Lyads/vj0;->t:Lyads/nj0;

    iget-object v0, v0, Lyads/vj0;->b:Lyads/oj0;

    .line 1103
    iget-object v0, v0, Lyads/oj0;->b:Lyads/lk5;

    .line 1104
    iget-wide v4, v0, Lyads/lk5;->t:J

    mul-long/2addr v4, v14

    .line 1105
    iget v0, v3, Lyads/nj0;->e:I

    int-to-long v6, v0

    .line 1106
    div-long/2addr v4, v6

    add-long/2addr v4, v1

    return-wide v4

    :cond_2c
    :goto_19
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.method public final a(J)V
    .locals 13

    .line 1286
    iget-boolean v0, p0, Lyads/vj0;->Y:Z

    const/4 v1, 0x4

    const/high16 v2, 0x30000000

    const/high16 v3, 0x20000000

    const-string v4, "audio/raw"

    if-nez v0, :cond_3

    iget-object v0, p0, Lyads/vj0;->t:Lyads/nj0;

    iget-object v0, v0, Lyads/nj0;->a:Lyads/vz2;

    iget-object v0, v0, Lyads/vz2;->m:Ljava/lang/String;

    .line 1287
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lyads/vj0;->t:Lyads/nj0;

    iget-object v0, v0, Lyads/nj0;->a:Lyads/vz2;

    iget v0, v0, Lyads/vz2;->B:I

    .line 1288
    iget-boolean v5, p0, Lyads/vj0;->c:Z

    if-eqz v5, :cond_0

    sget v5, Lyads/u56;->a:I

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_3

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 1289
    :cond_0
    iget-object v0, p0, Lyads/vj0;->b:Lyads/oj0;

    .line 1290
    invoke-virtual {p0}, Lyads/vj0;->c()Lyads/qj0;

    move-result-object v5

    iget-object v5, v5, Lyads/qj0;->a:Lyads/dw4;

    .line 1291
    iget-object v0, v0, Lyads/oj0;->c:Lyads/po5;

    .line 1292
    iget v6, v5, Lyads/dw4;->b:F

    .line 1293
    iget v7, v0, Lyads/po5;->c:F

    cmpl-float v7, v7, v6

    const/4 v8, 0x1

    if-eqz v7, :cond_1

    .line 1294
    iput v6, v0, Lyads/po5;->c:F

    .line 1295
    iput-boolean v8, v0, Lyads/po5;->i:Z

    .line 1296
    :cond_1
    iget v6, v5, Lyads/dw4;->c:F

    .line 1297
    iget v7, v0, Lyads/po5;->d:F

    cmpl-float v7, v7, v6

    if-eqz v7, :cond_2

    .line 1298
    iput v6, v0, Lyads/po5;->d:F

    .line 1299
    iput-boolean v8, v0, Lyads/po5;->i:Z

    :cond_2
    :goto_0
    move-object v7, v5

    goto :goto_2

    .line 1300
    :cond_3
    :goto_1
    sget-object v5, Lyads/dw4;->e:Lyads/dw4;

    goto :goto_0

    .line 1301
    :goto_2
    iget-boolean v0, p0, Lyads/vj0;->Y:Z

    const/4 v5, 0x0

    if-nez v0, :cond_5

    iget-object v0, p0, Lyads/vj0;->t:Lyads/nj0;

    iget-object v0, v0, Lyads/nj0;->a:Lyads/vz2;

    iget-object v0, v0, Lyads/vz2;->m:Ljava/lang/String;

    .line 1302
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lyads/vj0;->t:Lyads/nj0;

    iget-object v0, v0, Lyads/nj0;->a:Lyads/vz2;

    iget v0, v0, Lyads/vz2;->B:I

    .line 1303
    iget-boolean v4, p0, Lyads/vj0;->c:Z

    if-eqz v4, :cond_4

    sget v4, Lyads/u56;->a:I

    if-eq v0, v3, :cond_5

    if-eq v0, v2, :cond_5

    if-ne v0, v1, :cond_4

    goto :goto_3

    .line 1304
    :cond_4
    iget-object v0, p0, Lyads/vj0;->b:Lyads/oj0;

    .line 1305
    invoke-virtual {p0}, Lyads/vj0;->c()Lyads/qj0;

    move-result-object v1

    iget-boolean v1, v1, Lyads/qj0;->b:Z

    .line 1306
    iget-object v0, v0, Lyads/oj0;->b:Lyads/lk5;

    .line 1307
    iput-boolean v1, v0, Lyads/lk5;->m:Z

    move v8, v1

    goto :goto_4

    :cond_5
    :goto_3
    move v8, v5

    .line 1308
    :goto_4
    iget-object v0, p0, Lyads/vj0;->j:Ljava/util/ArrayDeque;

    new-instance v6, Lyads/qj0;

    const-wide/16 v1, 0x0

    .line 1309
    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    iget-object p1, p0, Lyads/vj0;->t:Lyads/nj0;

    .line 1310
    invoke-virtual {p0}, Lyads/vj0;->d()J

    move-result-wide v1

    const-wide/32 v3, 0xf4240

    mul-long/2addr v1, v3

    .line 1311
    iget p1, p1, Lyads/nj0;->e:I

    int-to-long p1, p1

    .line 1312
    div-long v11, v1, p1

    .line 1313
    invoke-direct/range {v6 .. v12}, Lyads/qj0;-><init>(Lyads/dw4;ZJJ)V

    .line 1314
    invoke-virtual {v0, v6}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 1315
    iget-object p1, p0, Lyads/vj0;->t:Lyads/nj0;

    iget-object p1, p1, Lyads/nj0;->i:[Lyads/mm;

    .line 1316
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 1317
    array-length v0, p1

    move v1, v5

    :goto_5
    if-ge v1, v0, :cond_7

    aget-object v2, p1, v1

    .line 1318
    invoke-interface {v2}, Lyads/mm;->isActive()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1319
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1320
    :cond_6
    invoke-interface {v2}, Lyads/mm;->flush()V

    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1321
    :cond_7
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 1322
    new-array v0, p1, [Lyads/mm;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lyads/mm;

    iput-object p2, p0, Lyads/vj0;->K:[Lyads/mm;

    .line 1323
    new-array p1, p1, [Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lyads/vj0;->L:[Ljava/nio/ByteBuffer;

    .line 1324
    :goto_7
    iget-object p1, p0, Lyads/vj0;->K:[Lyads/mm;

    array-length p2, p1

    if-ge v5, p2, :cond_8

    .line 1325
    aget-object p1, p1, v5

    .line 1326
    invoke-interface {p1}, Lyads/mm;->flush()V

    .line 1327
    iget-object p2, p0, Lyads/vj0;->L:[Ljava/nio/ByteBuffer;

    invoke-interface {p1}, Lyads/mm;->a()Ljava/nio/ByteBuffer;

    move-result-object p1

    aput-object p1, p2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 1328
    :cond_8
    iget-object p0, p0, Lyads/vj0;->r:Lyads/ry3;

    if-eqz p0, :cond_9

    .line 1329
    iget-object p0, p0, Lyads/ry3;->a:Lyads/sy3;

    .line 1330
    iget-object p0, p0, Lyads/sy3;->H0:Lyads/nm;

    invoke-virtual {p0, v8}, Lyads/nm;->b(Z)V

    :cond_9
    return-void
.end method

.method public final a(Ljava/nio/ByteBuffer;J)V
    .locals 12

    .line 1175
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 1176
    :cond_0
    iget-object v0, p0, Lyads/vj0;->O:Ljava/nio/ByteBuffer;

    const/16 v1, 0x15

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-ne v0, p1, :cond_1

    goto :goto_0

    .line 1177
    :cond_1
    invoke-static {}, Lmi2;->b()V

    return-void

    .line 1178
    :cond_2
    iput-object p1, p0, Lyads/vj0;->O:Ljava/nio/ByteBuffer;

    .line 1179
    sget v0, Lyads/u56;->a:I

    if-ge v0, v1, :cond_5

    .line 1180
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    .line 1181
    iget-object v3, p0, Lyads/vj0;->P:[B

    if-eqz v3, :cond_3

    array-length v3, v3

    if-ge v3, v0, :cond_4

    .line 1182
    :cond_3
    new-array v3, v0, [B

    iput-object v3, p0, Lyads/vj0;->P:[B

    .line 1183
    :cond_4
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v3

    .line 1184
    iget-object v4, p0, Lyads/vj0;->P:[B

    invoke-virtual {p1, v4, v2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 1185
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1186
    iput v2, p0, Lyads/vj0;->Q:I

    .line 1187
    :cond_5
    :goto_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v7

    .line 1188
    sget v0, Lyads/u56;->a:I

    const/4 v3, 0x1

    if-ge v0, v1, :cond_8

    .line 1189
    iget-object p2, p0, Lyads/vj0;->i:Lyads/xm;

    iget-wide v4, p0, Lyads/vj0;->D:J

    .line 1190
    invoke-virtual {p2}, Lyads/xm;->a()J

    move-result-wide v8

    .line 1191
    iget p3, p2, Lyads/xm;->d:I

    int-to-long v10, p3

    mul-long/2addr v8, v10

    sub-long/2addr v4, v8

    long-to-int p3, v4

    .line 1192
    iget p2, p2, Lyads/xm;->e:I

    sub-int/2addr p2, p3

    if-lez p2, :cond_7

    .line 1193
    invoke-static {v7, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 1194
    iget-object p3, p0, Lyads/vj0;->u:Landroid/media/AudioTrack;

    iget-object v1, p0, Lyads/vj0;->P:[B

    iget v4, p0, Lyads/vj0;->Q:I

    .line 1195
    invoke-virtual {p3, v1, v4, p2}, Landroid/media/AudioTrack;->write([BII)I

    move-result p2

    if-lez p2, :cond_6

    .line 1196
    iget p3, p0, Lyads/vj0;->Q:I

    add-int/2addr p3, p2

    iput p3, p0, Lyads/vj0;->Q:I

    .line 1197
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p3

    add-int/2addr p3, p2

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_6
    move-object v6, p1

    goto/16 :goto_2

    :cond_7
    move-object v6, p1

    :goto_1
    move p2, v2

    goto/16 :goto_2

    .line 1198
    :cond_8
    iget-boolean v1, p0, Lyads/vj0;->Y:Z

    if-eqz v1, :cond_10

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, p2, v4

    if-eqz v1, :cond_f

    .line 1199
    iget-object v5, p0, Lyads/vj0;->u:Landroid/media/AudioTrack;

    const/16 v1, 0x1a

    const-wide/16 v8, 0x3e8

    if-lt v0, v1, :cond_9

    mul-long v9, p2, v8

    const/4 v8, 0x1

    move-object v6, p1

    .line 1200
    invoke-virtual/range {v5 .. v10}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;IIJ)I

    move-result p2

    goto :goto_2

    :cond_9
    move-object v6, p1

    .line 1201
    iget-object p1, p0, Lyads/vj0;->z:Ljava/nio/ByteBuffer;

    if-nez p1, :cond_a

    const/16 p1, 0x10

    .line 1202
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lyads/vj0;->z:Ljava/nio/ByteBuffer;

    .line 1203
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1204
    iget-object p1, p0, Lyads/vj0;->z:Ljava/nio/ByteBuffer;

    const v1, 0x55550001

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1205
    :cond_a
    iget p1, p0, Lyads/vj0;->A:I

    if-nez p1, :cond_b

    .line 1206
    iget-object p1, p0, Lyads/vj0;->z:Ljava/nio/ByteBuffer;

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v7}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 1207
    iget-object p1, p0, Lyads/vj0;->z:Ljava/nio/ByteBuffer;

    mul-long/2addr p2, v8

    const/16 v1, 0x8

    invoke-virtual {p1, v1, p2, p3}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 1208
    iget-object p1, p0, Lyads/vj0;->z:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1209
    iput v7, p0, Lyads/vj0;->A:I

    .line 1210
    :cond_b
    iget-object p1, p0, Lyads/vj0;->z:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result p1

    if-lez p1, :cond_d

    .line 1211
    iget-object p2, p0, Lyads/vj0;->z:Ljava/nio/ByteBuffer;

    .line 1212
    invoke-virtual {v5, p2, p1, v3}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p2

    if-gez p2, :cond_c

    .line 1213
    iput v2, p0, Lyads/vj0;->A:I

    goto :goto_2

    :cond_c
    if-ge p2, p1, :cond_d

    goto :goto_1

    .line 1214
    :cond_d
    invoke-virtual {v5, v6, v7, v3}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p2

    if-gez p2, :cond_e

    .line 1215
    iput v2, p0, Lyads/vj0;->A:I

    goto :goto_2

    .line 1216
    :cond_e
    iget p1, p0, Lyads/vj0;->A:I

    sub-int/2addr p1, p2

    iput p1, p0, Lyads/vj0;->A:I

    goto :goto_2

    .line 1217
    :cond_f
    invoke-static {}, Lud;->g()V

    return-void

    :cond_10
    move-object v6, p1

    .line 1218
    iget-object p1, p0, Lyads/vj0;->u:Landroid/media/AudioTrack;

    .line 1219
    invoke-virtual {p1, v6, v7, v3}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p2

    .line 1220
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lyads/vj0;->Z:J

    const/4 p1, 0x0

    if-gez p2, :cond_19

    const/16 p3, 0x18

    if-lt v0, p3, :cond_11

    const/4 p3, -0x6

    if-eq p2, p3, :cond_12

    :cond_11
    const/16 p3, -0x20

    if-ne p2, p3, :cond_13

    :cond_12
    move v2, v3

    :cond_13
    if-eqz v2, :cond_14

    .line 1221
    iget-object p3, p0, Lyads/vj0;->t:Lyads/nj0;

    .line 1222
    iget p3, p3, Lyads/nj0;->c:I

    if-ne p3, v3, :cond_14

    .line 1223
    iput-boolean v3, p0, Lyads/vj0;->a0:Z

    .line 1224
    :cond_14
    new-instance p3, Lyads/sm;

    iget-object v0, p0, Lyads/vj0;->t:Lyads/nj0;

    iget-object v0, v0, Lyads/nj0;->a:Lyads/vz2;

    invoke-direct {p3, p2, v0, v2}, Lyads/sm;-><init>(ILyads/vz2;Z)V

    .line 1225
    iget-object p2, p0, Lyads/vj0;->r:Lyads/ry3;

    if-eqz p2, :cond_15

    .line 1226
    const-string v0, "Audio sink error"

    .line 1227
    invoke-static {v0, p3}, Lyads/sv3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaCodecAudioRenderer"

    invoke-static {v1, v0}, Lyads/sv3;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1228
    iget-object p2, p2, Lyads/ry3;->a:Lyads/sy3;

    iget-object p2, p2, Lyads/sy3;->H0:Lyads/nm;

    invoke-virtual {p2, p3}, Lyads/nm;->b(Ljava/lang/Exception;)V

    .line 1229
    :cond_15
    iget-boolean p2, p3, Lyads/sm;->c:Z

    if-nez p2, :cond_18

    .line 1230
    iget-object p0, p0, Lyads/vj0;->o:Lyads/rj0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1231
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1232
    iget-object p2, p0, Lyads/rj0;->a:Ljava/lang/Exception;

    if-nez p2, :cond_16

    .line 1233
    iput-object p3, p0, Lyads/rj0;->a:Ljava/lang/Exception;

    const-wide/16 v2, 0x64

    add-long/2addr v2, v0

    .line 1234
    iput-wide v2, p0, Lyads/rj0;->b:J

    move-object p2, p3

    .line 1235
    :cond_16
    iget-wide v2, p0, Lyads/rj0;->b:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1f

    if-eq p2, p3, :cond_17

    .line 1236
    invoke-virtual {p2, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 1237
    :cond_17
    iget-object p2, p0, Lyads/rj0;->a:Ljava/lang/Exception;

    .line 1238
    iput-object p1, p0, Lyads/rj0;->a:Ljava/lang/Exception;

    .line 1239
    throw p2

    .line 1240
    :cond_18
    throw p3

    .line 1241
    :cond_19
    iget-object p3, p0, Lyads/vj0;->o:Lyads/rj0;

    .line 1242
    iput-object p1, p3, Lyads/rj0;->a:Ljava/lang/Exception;

    .line 1243
    iget-object p3, p0, Lyads/vj0;->u:Landroid/media/AudioTrack;

    invoke-static {p3}, Lyads/vj0;->a(Landroid/media/AudioTrack;)Z

    move-result p3

    if-eqz p3, :cond_1b

    .line 1244
    iget-wide v0, p0, Lyads/vj0;->E:J

    const-wide/16 v4, 0x0

    cmp-long p3, v0, v4

    if-lez p3, :cond_1a

    .line 1245
    iput-boolean v2, p0, Lyads/vj0;->b0:Z

    .line 1246
    :cond_1a
    iget-boolean p3, p0, Lyads/vj0;->U:Z

    if-eqz p3, :cond_1b

    iget-object p3, p0, Lyads/vj0;->r:Lyads/ry3;

    if-eqz p3, :cond_1b

    if-ge p2, v7, :cond_1b

    iget-boolean v0, p0, Lyads/vj0;->b0:Z

    if-nez v0, :cond_1b

    .line 1247
    iget-object p3, p3, Lyads/ry3;->a:Lyads/sy3;

    .line 1248
    iget-object p3, p3, Lyads/sy3;->Q0:Lyads/m65;

    if-eqz p3, :cond_1b

    .line 1249
    check-cast p3, Lyads/gq2;

    .line 1250
    iget-object p3, p3, Lyads/gq2;->a:Lyads/mq2;

    .line 1251
    iput-boolean v3, p3, Lyads/mq2;->H:Z

    .line 1252
    :cond_1b
    iget-object p3, p0, Lyads/vj0;->t:Lyads/nj0;

    iget p3, p3, Lyads/nj0;->c:I

    if-nez p3, :cond_1c

    .line 1253
    iget-wide v0, p0, Lyads/vj0;->D:J

    int-to-long v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lyads/vj0;->D:J

    :cond_1c
    if-ne p2, v7, :cond_1f

    if-eqz p3, :cond_1e

    .line 1254
    iget-object p2, p0, Lyads/vj0;->M:Ljava/nio/ByteBuffer;

    if-ne v6, p2, :cond_1d

    .line 1255
    iget-wide p2, p0, Lyads/vj0;->E:J

    iget v0, p0, Lyads/vj0;->F:I

    int-to-long v0, v0

    iget v2, p0, Lyads/vj0;->N:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    add-long/2addr v0, p2

    iput-wide v0, p0, Lyads/vj0;->E:J

    goto :goto_3

    .line 1256
    :cond_1d
    invoke-static {}, Lud;->g()V

    return-void

    .line 1257
    :cond_1e
    :goto_3
    iput-object p1, p0, Lyads/vj0;->O:Ljava/nio/ByteBuffer;

    :cond_1f
    :goto_4
    return-void
.end method

.method public final a(Lyads/dw4;)V
    .locals 2

    .line 1270
    invoke-virtual {p0}, Lyads/vj0;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1271
    new-instance v0, Landroid/media/PlaybackParams;

    invoke-direct {v0}, Landroid/media/PlaybackParams;-><init>()V

    .line 1272
    invoke-virtual {v0}, Landroid/media/PlaybackParams;->allowDefaults()Landroid/media/PlaybackParams;

    move-result-object v0

    iget v1, p1, Lyads/dw4;->b:F

    .line 1273
    invoke-virtual {v0, v1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    move-result-object v0

    iget p1, p1, Lyads/dw4;->c:F

    .line 1274
    invoke-virtual {v0, p1}, Landroid/media/PlaybackParams;->setPitch(F)Landroid/media/PlaybackParams;

    move-result-object p1

    const/4 v0, 0x2

    .line 1275
    invoke-virtual {p1, v0}, Landroid/media/PlaybackParams;->setAudioFallbackMode(I)Landroid/media/PlaybackParams;

    move-result-object p1

    .line 1276
    :try_start_0
    iget-object v0, p0, Lyads/vj0;->u:Landroid/media/AudioTrack;

    invoke-virtual {v0, p1}, Landroid/media/AudioTrack;->setPlaybackParams(Landroid/media/PlaybackParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1277
    const-string v0, "Failed to set playback params"

    .line 1278
    invoke-static {v0, p1}, Lyads/sv3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "DefaultAudioSink"

    invoke-static {v0, p1}, Lyads/sv3;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1279
    :goto_0
    new-instance p1, Lyads/dw4;

    iget-object v0, p0, Lyads/vj0;->u:Landroid/media/AudioTrack;

    .line 1280
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/PlaybackParams;->getSpeed()F

    move-result v0

    iget-object v1, p0, Lyads/vj0;->u:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/PlaybackParams;->getPitch()F

    move-result v1

    invoke-direct {p1, v0, v1}, Lyads/dw4;-><init>(FF)V

    .line 1281
    iget-object v1, p0, Lyads/vj0;->i:Lyads/xm;

    .line 1282
    iput v0, v1, Lyads/xm;->j:F

    .line 1283
    iget-object v0, v1, Lyads/xm;->f:Lyads/wm;

    if-eqz v0, :cond_0

    .line 1284
    invoke-virtual {v0}, Lyads/wm;->a()V

    .line 1285
    :cond_0
    iput-object p1, p0, Lyads/vj0;->y:Lyads/dw4;

    return-void
.end method

.method public final a(Lyads/vz2;[I)V
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    .line 1107
    iget-object v1, v2, Lyads/vz2;->m:Ljava/lang/String;

    const-string v3, "audio/raw"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_7

    .line 1108
    iget v1, v2, Lyads/vz2;->B:I

    invoke-static {v1}, Lyads/u56;->d(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1109
    iget v1, v2, Lyads/vz2;->B:I

    iget v6, v2, Lyads/vz2;->z:I

    invoke-static {v1, v6}, Lyads/u56;->a(II)I

    move-result v1

    .line 1110
    iget v6, v2, Lyads/vz2;->B:I

    .line 1111
    iget-boolean v7, v0, Lyads/vj0;->c:Z

    if-eqz v7, :cond_1

    const/high16 v7, 0x20000000

    if-eq v6, v7, :cond_0

    const/high16 v7, 0x30000000

    if-eq v6, v7, :cond_0

    const/4 v7, 0x4

    if-ne v6, v7, :cond_1

    .line 1112
    :cond_0
    iget-object v6, v0, Lyads/vj0;->g:[Lyads/mm;

    goto :goto_0

    .line 1113
    :cond_1
    iget-object v6, v0, Lyads/vj0;->f:[Lyads/mm;

    .line 1114
    :goto_0
    iget-object v7, v0, Lyads/vj0;->e:Lyads/i26;

    iget v8, v2, Lyads/vz2;->C:I

    iget v9, v2, Lyads/vz2;->D:I

    .line 1115
    iput v8, v7, Lyads/i26;->i:I

    .line 1116
    iput v9, v7, Lyads/i26;->j:I

    .line 1117
    sget v7, Lyads/u56;->a:I

    const/16 v8, 0x15

    if-ge v7, v8, :cond_2

    iget v7, v2, Lyads/vz2;->z:I

    const/16 v8, 0x8

    if-ne v7, v8, :cond_2

    if-nez p2, :cond_2

    const/4 v7, 0x6

    .line 1118
    new-array v8, v7, [I

    move v9, v5

    :goto_1
    if-ge v9, v7, :cond_3

    .line 1119
    aput v9, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    move-object/from16 v8, p2

    .line 1120
    :cond_3
    iget-object v7, v0, Lyads/vj0;->d:Lyads/sy;

    .line 1121
    iput-object v8, v7, Lyads/sy;->i:[I

    .line 1122
    new-instance v7, Lyads/km;

    iget v8, v2, Lyads/vz2;->A:I

    iget v9, v2, Lyads/vz2;->z:I

    iget v10, v2, Lyads/vz2;->B:I

    invoke-direct {v7, v8, v9, v10}, Lyads/km;-><init>(III)V

    .line 1123
    array-length v8, v6

    move v9, v5

    :goto_2
    if-ge v9, v8, :cond_5

    aget-object v10, v6, v9

    .line 1124
    :try_start_0
    invoke-interface {v10, v7}, Lyads/mm;->a(Lyads/km;)Lyads/km;

    move-result-object v11

    .line 1125
    invoke-interface {v10}, Lyads/mm;->isActive()Z

    move-result v10
    :try_end_0
    .catch Lyads/lm; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v10, :cond_4

    move-object v7, v11

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    .line 1126
    new-instance v1, Lyads/pm;

    invoke-direct {v1, v0, v2}, Lyads/pm;-><init>(Lyads/lm;Lyads/vz2;)V

    throw v1

    .line 1127
    :cond_5
    iget v8, v7, Lyads/km;->c:I

    .line 1128
    iget v9, v7, Lyads/km;->a:I

    .line 1129
    iget v10, v7, Lyads/km;->b:I

    invoke-static {v10}, Lyads/u56;->a(I)I

    move-result v10

    .line 1130
    iget v7, v7, Lyads/km;->b:I

    invoke-static {v8, v7}, Lyads/u56;->a(II)I

    move-result v7

    move v11, v10

    move-object v10, v6

    move v6, v9

    move v9, v11

    move v11, v5

    goto :goto_4

    .line 1131
    :cond_6
    invoke-static {}, Lmi2;->b()V

    return-void

    .line 1132
    :cond_7
    new-array v6, v5, [Lyads/mm;

    .line 1133
    iget v9, v2, Lyads/vz2;->A:I

    .line 1134
    iget-object v1, v0, Lyads/vj0;->v:Lyads/am;

    invoke-virtual {v0, v1, v2}, Lyads/vj0;->a(Lyads/am;Lyads/vz2;)Z

    move-result v1

    const/4 v7, -0x1

    if-eqz v1, :cond_8

    .line 1135
    iget-object v1, v2, Lyads/vz2;->m:Ljava/lang/String;

    .line 1136
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1137
    iget-object v8, v2, Lyads/vz2;->j:Ljava/lang/String;

    invoke-static {v1, v8}, Lyads/z84;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 1138
    iget v1, v2, Lyads/vz2;->z:I

    invoke-static {v1}, Lyads/u56;->a(I)I

    move-result v10

    move v1, v10

    move-object v10, v6

    move v6, v9

    move v9, v1

    move v11, v4

    :goto_3
    move v1, v7

    goto :goto_4

    .line 1139
    :cond_8
    iget-object v1, v0, Lyads/vj0;->a:Lyads/fm;

    .line 1140
    invoke-virtual {v1, v2}, Lyads/fm;->a(Lyads/vz2;)Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 1141
    iget-object v8, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1142
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    move v1, v10

    move-object v10, v6

    move v6, v9

    move v9, v1

    move v11, v3

    goto :goto_3

    .line 1143
    :goto_4
    iget-object v12, v0, Lyads/vj0;->p:Lyads/xj0;

    .line 1144
    invoke-static {v6, v9, v8}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v13

    const/4 v14, -0x2

    if-eq v13, v14, :cond_11

    .line 1145
    iget-boolean v14, v0, Lyads/vj0;->k:Z

    if-eqz v14, :cond_9

    const-wide/high16 v14, 0x4020000000000000L    # 8.0

    goto :goto_5

    :cond_9
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    .line 1146
    :goto_5
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/32 v16, 0xf4240

    if-eqz v11, :cond_d

    const v12, 0x13880

    const v18, 0xbb800

    const v19, 0x2ee00

    const v20, 0x225510

    const v21, 0x9c40

    const v22, 0x186a0

    const/16 v23, 0x3e80

    const/16 v24, 0x1b58

    const v25, 0x2ebae4

    const/16 v26, 0x1f40

    const v27, 0x3e800

    const v28, 0x52080

    if-eq v11, v4, :cond_c

    if-ne v11, v3, :cond_b

    const/4 v3, 0x5

    if-ne v8, v3, :cond_a

    const v3, 0x7a120

    goto :goto_6

    :cond_a
    const v3, 0x3d090

    :goto_6
    packed-switch v8, :pswitch_data_0

    .line 1147
    :pswitch_0
    invoke-static {}, Lmi2;->b()V

    return-void

    :pswitch_1
    move/from16 v29, v4

    move/from16 v12, v28

    goto :goto_7

    :pswitch_2
    move/from16 v29, v4

    move/from16 v12, v27

    goto :goto_7

    :pswitch_3
    move/from16 v29, v4

    move/from16 v12, v26

    goto :goto_7

    :pswitch_4
    move/from16 v29, v4

    move/from16 v12, v25

    goto :goto_7

    :pswitch_5
    move/from16 v29, v4

    move/from16 v12, v24

    goto :goto_7

    :pswitch_6
    move/from16 v29, v4

    move/from16 v12, v23

    goto :goto_7

    :pswitch_7
    move/from16 v29, v4

    move/from16 v12, v22

    goto :goto_7

    :pswitch_8
    move/from16 v29, v4

    move/from16 v12, v21

    goto :goto_7

    :pswitch_9
    move/from16 v29, v4

    move/from16 v12, v20

    goto :goto_7

    :pswitch_a
    move/from16 v29, v4

    move/from16 v12, v19

    goto :goto_7

    :pswitch_b
    move/from16 v29, v4

    move/from16 v12, v18

    goto :goto_7

    :pswitch_c
    move/from16 v29, v4

    :goto_7
    int-to-long v4, v3

    move v3, v1

    int-to-long v1, v12

    mul-long/2addr v4, v1

    .line 1148
    div-long v4, v4, v16

    invoke-static {v4, v5}, Lyads/bq3;->a(J)I

    move-result v1

    :goto_8
    move/from16 p2, v3

    goto/16 :goto_a

    .line 1149
    :cond_b
    invoke-static {}, Lmi2;->b()V

    return-void

    :cond_c
    move v3, v1

    move/from16 v29, v4

    packed-switch v8, :pswitch_data_1

    .line 1150
    :pswitch_d
    invoke-static {}, Lmi2;->b()V

    return-void

    :pswitch_e
    move/from16 v12, v28

    goto :goto_9

    :pswitch_f
    move/from16 v12, v27

    goto :goto_9

    :pswitch_10
    move/from16 v12, v26

    goto :goto_9

    :pswitch_11
    move/from16 v12, v25

    goto :goto_9

    :pswitch_12
    move/from16 v12, v24

    goto :goto_9

    :pswitch_13
    move/from16 v12, v23

    goto :goto_9

    :pswitch_14
    move/from16 v12, v22

    goto :goto_9

    :pswitch_15
    move/from16 v12, v21

    goto :goto_9

    :pswitch_16
    move/from16 v12, v20

    goto :goto_9

    :pswitch_17
    move/from16 v12, v19

    goto :goto_9

    :pswitch_18
    move/from16 v12, v18

    :goto_9
    :pswitch_19
    const-wide/32 v1, 0x2faf080

    int-to-long v4, v12

    mul-long/2addr v1, v4

    .line 1151
    div-long v1, v1, v16

    invoke-static {v1, v2}, Lyads/bq3;->a(J)I

    move-result v1

    goto :goto_8

    :cond_d
    move v3, v1

    move/from16 v29, v4

    mul-int/lit8 v1, v13, 0x4

    int-to-long v4, v6

    const-wide/32 v18, 0x3d090

    mul-long v18, v18, v4

    move/from16 p2, v3

    int-to-long v2, v7

    mul-long v18, v18, v2

    .line 1152
    div-long v18, v18, v16

    invoke-static/range {v18 .. v19}, Lyads/bq3;->a(J)I

    move-result v12

    const-wide/32 v18, 0xb71b0

    mul-long v18, v18, v4

    mul-long v18, v18, v2

    .line 1153
    div-long v18, v18, v16

    invoke-static/range {v18 .. v19}, Lyads/bq3;->a(J)I

    move-result v2

    .line 1154
    sget v3, Lyads/u56;->a:I

    .line 1155
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_a
    int-to-double v1, v1

    mul-double/2addr v1, v14

    double-to-int v1, v1

    .line 1156
    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v1, v7

    add-int/lit8 v1, v1, -0x1

    .line 1157
    div-int/2addr v1, v7

    mul-int/2addr v1, v7

    const-string v2, ") for: "

    if-eqz v8, :cond_10

    if-eqz v9, :cond_f

    const/4 v3, 0x0

    .line 1158
    iput-boolean v3, v0, Lyads/vj0;->a0:Z

    move v5, v7

    move v7, v9

    move v9, v1

    .line 1159
    new-instance v1, Lyads/nj0;

    move-object/from16 v2, p1

    move/from16 v3, p2

    move v4, v11

    invoke-direct/range {v1 .. v10}, Lyads/nj0;-><init>(Lyads/vz2;IIIIIII[Lyads/mm;)V

    .line 1160
    invoke-virtual {v0}, Lyads/vj0;->f()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1161
    iput-object v1, v0, Lyads/vj0;->s:Lyads/nj0;

    return-void

    .line 1162
    :cond_e
    iput-object v1, v0, Lyads/vj0;->t:Lyads/nj0;

    return-void

    :cond_f
    move-object/from16 v1, p1

    move v4, v11

    .line 1163
    new-instance v0, Lyads/pm;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Invalid output channel config (mode="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lyads/pm;-><init>(Ljava/lang/String;Lyads/vz2;)V

    throw v0

    :cond_10
    move-object/from16 v1, p1

    move v4, v11

    .line 1164
    new-instance v0, Lyads/pm;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Invalid output encoding (mode="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lyads/pm;-><init>(Ljava/lang/String;Lyads/vz2;)V

    throw v0

    .line 1165
    :cond_11
    invoke-static {}, Lud;->g()V

    return-void

    :cond_12
    move-object v1, v2

    .line 1166
    new-instance v0, Lyads/pm;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to configure passthrough for: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lyads/pm;-><init>(Ljava/lang/String;Lyads/vz2;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_b
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_d
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_18
    .end packed-switch
.end method

.method public final a()Z
    .locals 9

    .line 1258
    iget v0, p0, Lyads/vj0;->R:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 1259
    iput v2, p0, Lyads/vj0;->R:I

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_0
    move v0, v2

    .line 1260
    :goto_1
    iget v4, p0, Lyads/vj0;->R:I

    iget-object v5, p0, Lyads/vj0;->K:[Lyads/mm;

    array-length v6, v5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v4, v6, :cond_3

    .line 1261
    aget-object v4, v5, v4

    if-eqz v0, :cond_1

    .line 1262
    invoke-interface {v4}, Lyads/mm;->b()V

    .line 1263
    :cond_1
    invoke-virtual {p0, v7, v8}, Lyads/vj0;->b(J)V

    .line 1264
    invoke-interface {v4}, Lyads/mm;->c()Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    .line 1265
    :cond_2
    iget v0, p0, Lyads/vj0;->R:I

    add-int/2addr v0, v1

    iput v0, p0, Lyads/vj0;->R:I

    goto :goto_0

    .line 1266
    :cond_3
    iget-object v0, p0, Lyads/vj0;->O:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_4

    .line 1267
    invoke-virtual {p0, v0, v7, v8}, Lyads/vj0;->a(Ljava/nio/ByteBuffer;J)V

    .line 1268
    iget-object v0, p0, Lyads/vj0;->O:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_4

    return v2

    .line 1269
    :cond_4
    iput v3, p0, Lyads/vj0;->R:I

    return v1
.end method

.method public final a(Ljava/nio/ByteBuffer;JI)Z
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-wide/from16 v2, p2

    move/from16 v4, p4

    iget-object v5, v1, Lyads/vj0;->M:Ljava/nio/ByteBuffer;

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    if-ne v0, v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lmi2;->b()V

    return v6

    :cond_1
    :goto_0
    iget-object v5, v1, Lyads/vj0;->s:Lyads/nj0;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v5, :cond_7

    invoke-virtual {v1}, Lyads/vj0;->a()Z

    move-result v5

    if-nez v5, :cond_2

    return v6

    :cond_2
    iget-object v5, v1, Lyads/vj0;->s:Lyads/nj0;

    iget-object v10, v1, Lyads/vj0;->t:Lyads/nj0;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v11, v10, Lyads/nj0;->c:I

    iget v12, v5, Lyads/nj0;->c:I

    if-ne v11, v12, :cond_4

    iget v11, v10, Lyads/nj0;->g:I

    iget v12, v5, Lyads/nj0;->g:I

    if-ne v11, v12, :cond_4

    iget v11, v10, Lyads/nj0;->e:I

    iget v12, v5, Lyads/nj0;->e:I

    if-ne v11, v12, :cond_4

    iget v11, v10, Lyads/nj0;->f:I

    iget v12, v5, Lyads/nj0;->f:I

    if-ne v11, v12, :cond_4

    iget v10, v10, Lyads/nj0;->d:I

    iget v5, v5, Lyads/nj0;->d:I

    if-ne v10, v5, :cond_4

    iget-object v5, v1, Lyads/vj0;->s:Lyads/nj0;

    iput-object v5, v1, Lyads/vj0;->t:Lyads/nj0;

    iput-object v8, v1, Lyads/vj0;->s:Lyads/nj0;

    iget-object v5, v1, Lyads/vj0;->u:Landroid/media/AudioTrack;

    invoke-static {v5}, Lyads/vj0;->a(Landroid/media/AudioTrack;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget v5, v1, Lyads/vj0;->l:I

    if-eq v5, v7, :cond_6

    iget-object v5, v1, Lyads/vj0;->u:Landroid/media/AudioTrack;

    invoke-virtual {v5}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v5

    if-ne v5, v7, :cond_3

    iget-object v5, v1, Lyads/vj0;->u:Landroid/media/AudioTrack;

    invoke-virtual {v5}, Landroid/media/AudioTrack;->setOffloadEndOfStream()V

    :cond_3
    iget-object v5, v1, Lyads/vj0;->u:Landroid/media/AudioTrack;

    iget-object v10, v1, Lyads/vj0;->t:Lyads/nj0;

    iget-object v10, v10, Lyads/nj0;->a:Lyads/vz2;

    iget v11, v10, Lyads/vz2;->C:I

    iget v10, v10, Lyads/vz2;->D:I

    invoke-virtual {v5, v11, v10}, Landroid/media/AudioTrack;->setOffloadDelayPadding(II)V

    iput-boolean v9, v1, Lyads/vj0;->b0:Z

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Lyads/vj0;->i()V

    invoke-virtual {v1}, Lyads/vj0;->f()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, v1, Lyads/vj0;->i:Lyads/xm;

    invoke-virtual {v1}, Lyads/vj0;->d()J

    move-result-wide v10

    invoke-virtual {v5, v10, v11}, Lyads/xm;->b(J)Z

    move-result v5

    if-eqz v5, :cond_5

    return v6

    :cond_5
    invoke-virtual {v1}, Lyads/vj0;->b()V

    :cond_6
    :goto_1
    invoke-virtual {v1, v2, v3}, Lyads/vj0;->a(J)V

    :cond_7
    invoke-virtual {v1}, Lyads/vj0;->f()Z

    move-result v5

    if-nez v5, :cond_c

    :try_start_0
    invoke-virtual {v1}, Lyads/vj0;->e()Z

    move-result v5
    :try_end_0
    .catch Lyads/qm; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v5, :cond_c

    return v6

    :catch_0
    move-exception v0

    iget-boolean v2, v0, Lyads/qm;->c:Z

    if-nez v2, :cond_b

    iget-object v1, v1, Lyads/vj0;->n:Lyads/rj0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, v1, Lyads/rj0;->a:Ljava/lang/Exception;

    if-nez v4, :cond_8

    iput-object v0, v1, Lyads/rj0;->a:Ljava/lang/Exception;

    const-wide/16 v4, 0x64

    add-long/2addr v4, v2

    iput-wide v4, v1, Lyads/rj0;->b:J

    move-object v4, v0

    :cond_8
    iget-wide v9, v1, Lyads/rj0;->b:J

    cmp-long v2, v2, v9

    if-ltz v2, :cond_a

    if-eq v4, v0, :cond_9

    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_9
    iget-object v0, v1, Lyads/rj0;->a:Ljava/lang/Exception;

    iput-object v8, v1, Lyads/rj0;->a:Ljava/lang/Exception;

    throw v0

    :cond_a
    return v6

    :cond_b
    throw v0

    :cond_c
    iget-object v5, v1, Lyads/vj0;->n:Lyads/rj0;

    iput-object v8, v5, Lyads/rj0;->a:Ljava/lang/Exception;

    iget-boolean v5, v1, Lyads/vj0;->H:Z

    const-wide/16 v10, 0x0

    if-eqz v5, :cond_e

    invoke-static {v10, v11, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    iput-wide v12, v1, Lyads/vj0;->I:J

    iput-boolean v6, v1, Lyads/vj0;->G:Z

    iput-boolean v6, v1, Lyads/vj0;->H:Z

    iget-boolean v5, v1, Lyads/vj0;->k:Z

    if-eqz v5, :cond_d

    sget v5, Lyads/u56;->a:I

    const/16 v12, 0x17

    if-lt v5, v12, :cond_d

    iget-object v5, v1, Lyads/vj0;->y:Lyads/dw4;

    invoke-virtual {v1, v5}, Lyads/vj0;->a(Lyads/dw4;)V

    :cond_d
    invoke-virtual {v1, v2, v3}, Lyads/vj0;->a(J)V

    iget-boolean v5, v1, Lyads/vj0;->U:Z

    if-eqz v5, :cond_e

    invoke-virtual {v1}, Lyads/vj0;->h()V

    :cond_e
    iget-object v5, v1, Lyads/vj0;->i:Lyads/xm;

    invoke-virtual {v1}, Lyads/vj0;->d()J

    move-result-wide v12

    iget-object v14, v5, Lyads/xm;->c:Landroid/media/AudioTrack;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v14}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v14

    iget-boolean v15, v5, Lyads/xm;->h:Z

    move-wide/from16 v16, v10

    const/4 v10, 0x2

    if-eqz v15, :cond_10

    if-ne v14, v10, :cond_f

    iput-boolean v6, v5, Lyads/xm;->p:Z

    goto :goto_2

    :cond_f
    if-ne v14, v9, :cond_10

    invoke-virtual {v5}, Lyads/xm;->a()J

    move-result-wide v18

    cmp-long v11, v18, v16

    if-nez v11, :cond_10

    :goto_2
    return v6

    :cond_10
    iget-boolean v11, v5, Lyads/xm;->p:Z

    invoke-virtual {v5, v12, v13}, Lyads/xm;->b(J)Z

    move-result v12

    iput-boolean v12, v5, Lyads/xm;->p:Z

    if-eqz v11, :cond_11

    if-nez v12, :cond_11

    if-eq v14, v9, :cond_11

    iget-object v11, v5, Lyads/xm;->a:Lyads/sj0;

    iget v12, v5, Lyads/xm;->e:I

    iget-wide v13, v5, Lyads/xm;->i:J

    invoke-static {v13, v14}, Lyads/u56;->b(J)J

    move-result-wide v20

    iget-object v5, v11, Lyads/sj0;->a:Lyads/vj0;

    iget-object v5, v5, Lyads/vj0;->r:Lyads/ry3;

    if-eqz v5, :cond_11

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    iget-object v5, v11, Lyads/sj0;->a:Lyads/vj0;

    move v15, v10

    iget-wide v10, v5, Lyads/vj0;->Z:J

    sub-long v22, v13, v10

    iget-object v5, v5, Lyads/vj0;->r:Lyads/ry3;

    iget-object v5, v5, Lyads/ry3;->a:Lyads/sy3;

    iget-object v5, v5, Lyads/sy3;->H0:Lyads/nm;

    move-object/from16 v18, v5

    move/from16 v19, v12

    invoke-virtual/range {v18 .. v23}, Lyads/nm;->b(IJJ)V

    goto :goto_3

    :cond_11
    move v15, v10

    :goto_3
    iget-object v5, v1, Lyads/vj0;->M:Ljava/nio/ByteBuffer;

    if-nez v5, :cond_29

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v5

    sget-object v10, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v5, v10, :cond_28

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v5

    if-nez v5, :cond_12

    return v9

    :cond_12
    iget-object v5, v1, Lyads/vj0;->t:Lyads/nj0;

    iget v10, v5, Lyads/nj0;->c:I

    if-eqz v10, :cond_20

    iget v10, v1, Lyads/vj0;->F:I

    if-nez v10, :cond_20

    iget v5, v5, Lyads/nj0;->g:I

    const/4 v10, -0x2

    const/16 v11, 0xa

    const/16 v12, 0x10

    const/4 v13, -0x1

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    const-string v0, "Unexpected audio encoding: "

    invoke-static {v5, v0}, Lyads/vx4;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return v6

    :pswitch_1
    new-array v5, v12, [B

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v7

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    new-instance v7, Lyads/ns4;

    invoke-direct {v7, v5}, Lyads/ns4;-><init>([B)V

    invoke-static {v7}, Lyads/j0;->a(Lyads/ns4;)Lyads/i0;

    move-result-object v5

    iget v5, v5, Lyads/i0;->c:I

    goto/16 :goto_f

    :pswitch_2
    const/16 v5, 0x200

    goto/16 :goto_f

    :pswitch_3
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v5

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v7

    sub-int/2addr v7, v11

    move v11, v5

    :goto_4
    if-gt v11, v7, :cond_15

    add-int/lit8 v14, v11, 0x4

    sget v15, Lyads/u56;->a:I

    invoke-virtual {v0, v14}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v14

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v15

    move/from16 v18, v12

    sget-object v12, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v15, v12, :cond_13

    goto :goto_5

    :cond_13
    invoke-static {v14}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v14

    :goto_5
    and-int/lit8 v12, v14, -0x2

    const v14, -0x78d9046

    if-ne v12, v14, :cond_14

    sub-int/2addr v11, v5

    goto :goto_6

    :cond_14
    add-int/lit8 v11, v11, 0x1

    move/from16 v12, v18

    goto :goto_4

    :cond_15
    move/from16 v18, v12

    move v11, v13

    :goto_6
    if-ne v11, v13, :cond_16

    move v5, v6

    goto/16 :goto_f

    :cond_16
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v5

    add-int/2addr v5, v11

    add-int/lit8 v5, v5, 0x7

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    const/16 v7, 0xbb

    if-ne v5, v7, :cond_17

    move v5, v9

    goto :goto_7

    :cond_17
    move v5, v6

    :goto_7
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v7

    add-int/2addr v7, v11

    if-eqz v5, :cond_18

    const/16 v5, 0x9

    goto :goto_8

    :cond_18
    const/16 v5, 0x8

    :goto_8
    add-int/2addr v7, v5

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0x7

    const/16 v7, 0x28

    shl-int v5, v7, v5

    mul-int/lit8 v5, v5, 0x10

    goto/16 :goto_f

    :pswitch_4
    const/16 v5, 0x800

    goto/16 :goto_f

    :pswitch_5
    const/16 v5, 0x400

    goto/16 :goto_f

    :pswitch_6
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v5

    sget v7, Lyads/u56;->a:I

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v5

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v7

    sget-object v10, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v7, v10, :cond_19

    goto :goto_9

    :cond_19
    invoke-static {v5}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v5

    :goto_9
    invoke-static {v5}, Lyads/bb4;->b(I)I

    move-result v5

    if-eq v5, v13, :cond_1a

    goto/16 :goto_f

    :cond_1a
    invoke-static {}, Lmi2;->b()V

    return v6

    :pswitch_7
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    if-eq v7, v10, :cond_1d

    if-eq v7, v13, :cond_1c

    const/16 v10, 0x1f

    if-eq v7, v10, :cond_1b

    add-int/lit8 v7, v5, 0x4

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    and-int/2addr v7, v9

    shl-int/lit8 v7, v7, 0x6

    add-int/lit8 v5, v5, 0x5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    :goto_a
    and-int/lit16 v5, v5, 0xfc

    :goto_b
    shr-int/2addr v5, v15

    or-int/2addr v5, v7

    goto :goto_d

    :cond_1b
    add-int/lit8 v7, v5, 0x5

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    and-int/lit8 v7, v7, 0x7

    shl-int/lit8 v7, v7, 0x4

    add-int/lit8 v5, v5, 0x6

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    :goto_c
    and-int/lit8 v5, v5, 0x3c

    goto :goto_b

    :cond_1c
    add-int/lit8 v7, v5, 0x4

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    and-int/lit8 v7, v7, 0x7

    shl-int/lit8 v7, v7, 0x4

    add-int/lit8 v5, v5, 0x7

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    goto :goto_c

    :cond_1d
    add-int/lit8 v7, v5, 0x5

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    and-int/2addr v7, v9

    shl-int/lit8 v7, v7, 0x6

    add-int/lit8 v5, v5, 0x4

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    goto :goto_a

    :goto_d
    add-int/2addr v5, v9

    mul-int/lit8 v5, v5, 0x20

    goto :goto_f

    :pswitch_8
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v5

    add-int/lit8 v5, v5, 0x5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v5, v5, 0xf8

    shr-int/2addr v5, v7

    if-le v5, v11, :cond_1f

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v5

    add-int/lit8 v5, v5, 0x4

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v5, v5, 0xc0

    shr-int/lit8 v5, v5, 0x6

    if-ne v5, v7, :cond_1e

    goto :goto_e

    :cond_1e
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v5

    add-int/lit8 v5, v5, 0x4

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit8 v5, v5, 0x30

    shr-int/lit8 v7, v5, 0x4

    :goto_e
    sget-object v5, Lyads/f0;->a:[I

    aget v5, v5, v7

    mul-int/lit16 v5, v5, 0x100

    goto :goto_f

    :cond_1f
    const/16 v5, 0x600

    :goto_f
    iput v5, v1, Lyads/vj0;->F:I

    if-nez v5, :cond_20

    return v9

    :cond_20
    iget-object v5, v1, Lyads/vj0;->w:Lyads/qj0;

    if-eqz v5, :cond_22

    invoke-virtual {v1}, Lyads/vj0;->a()Z

    move-result v5

    if-nez v5, :cond_21

    return v6

    :cond_21
    invoke-virtual {v1, v2, v3}, Lyads/vj0;->a(J)V

    iput-object v8, v1, Lyads/vj0;->w:Lyads/qj0;

    :cond_22
    iget-wide v10, v1, Lyads/vj0;->I:J

    iget-object v5, v1, Lyads/vj0;->t:Lyads/nj0;

    iget v7, v5, Lyads/nj0;->c:I

    if-nez v7, :cond_23

    iget-wide v12, v1, Lyads/vj0;->B:J

    iget v7, v5, Lyads/nj0;->b:I

    int-to-long v14, v7

    div-long/2addr v12, v14

    goto :goto_10

    :cond_23
    iget-wide v12, v1, Lyads/vj0;->C:J

    :goto_10
    iget-object v7, v1, Lyads/vj0;->e:Lyads/i26;

    iget-wide v14, v7, Lyads/i26;->o:J

    sub-long/2addr v12, v14

    const-wide/32 v14, 0xf4240

    mul-long/2addr v12, v14

    iget-object v5, v5, Lyads/nj0;->a:Lyads/vz2;

    iget v5, v5, Lyads/vz2;->A:I

    int-to-long v14, v5

    div-long/2addr v12, v14

    add-long/2addr v12, v10

    iget-boolean v5, v1, Lyads/vj0;->G:Z

    if-nez v5, :cond_24

    sub-long v10, v12, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    const-wide/32 v14, 0x30d40

    cmp-long v5, v10, v14

    if-lez v5, :cond_24

    iget-object v5, v1, Lyads/vj0;->r:Lyads/ry3;

    new-instance v7, Lyads/rm;

    invoke-direct {v7, v2, v3, v12, v13}, Lyads/rm;-><init>(JJ)V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v10, "Audio sink error"

    invoke-static {v10, v7}, Lyads/sv3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "MediaCodecAudioRenderer"

    invoke-static {v11, v10}, Lyads/sv3;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v5, Lyads/ry3;->a:Lyads/sy3;

    iget-object v5, v5, Lyads/sy3;->H0:Lyads/nm;

    invoke-virtual {v5, v7}, Lyads/nm;->b(Ljava/lang/Exception;)V

    iput-boolean v9, v1, Lyads/vj0;->G:Z

    :cond_24
    iget-boolean v5, v1, Lyads/vj0;->G:Z

    if-eqz v5, :cond_26

    invoke-virtual {v1}, Lyads/vj0;->a()Z

    move-result v5

    if-nez v5, :cond_25

    return v6

    :cond_25
    sub-long v10, v2, v12

    iget-wide v12, v1, Lyads/vj0;->I:J

    add-long/2addr v12, v10

    iput-wide v12, v1, Lyads/vj0;->I:J

    iput-boolean v6, v1, Lyads/vj0;->G:Z

    invoke-virtual {v1, v2, v3}, Lyads/vj0;->a(J)V

    iget-object v5, v1, Lyads/vj0;->r:Lyads/ry3;

    if-eqz v5, :cond_26

    cmp-long v7, v10, v16

    if-eqz v7, :cond_26

    iget-object v5, v5, Lyads/ry3;->a:Lyads/sy3;

    iput-boolean v9, v5, Lyads/sy3;->O0:Z

    :cond_26
    iget-object v5, v1, Lyads/vj0;->t:Lyads/nj0;

    iget v5, v5, Lyads/nj0;->c:I

    if-nez v5, :cond_27

    iget-wide v10, v1, Lyads/vj0;->B:J

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v5

    int-to-long v12, v5

    add-long/2addr v10, v12

    iput-wide v10, v1, Lyads/vj0;->B:J

    goto :goto_11

    :cond_27
    iget-wide v10, v1, Lyads/vj0;->C:J

    iget v5, v1, Lyads/vj0;->F:I

    int-to-long v12, v5

    int-to-long v14, v4

    mul-long/2addr v12, v14

    add-long/2addr v12, v10

    iput-wide v12, v1, Lyads/vj0;->C:J

    :goto_11
    iput-object v0, v1, Lyads/vj0;->M:Ljava/nio/ByteBuffer;

    iput v4, v1, Lyads/vj0;->N:I

    goto :goto_12

    :cond_28
    invoke-static {}, Lmi2;->b()V

    return v6

    :cond_29
    :goto_12
    invoke-virtual {v1, v2, v3}, Lyads/vj0;->b(J)V

    iget-object v0, v1, Lyads/vj0;->M:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_2a

    iput-object v8, v1, Lyads/vj0;->M:Ljava/nio/ByteBuffer;

    iput v6, v1, Lyads/vj0;->N:I

    return v9

    :cond_2a
    iget-object v0, v1, Lyads/vj0;->i:Lyads/xm;

    invoke-virtual {v1}, Lyads/vj0;->d()J

    move-result-wide v2

    iget-wide v4, v0, Lyads/xm;->y:J

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v4, v7

    if-eqz v4, :cond_2b

    cmp-long v2, v2, v16

    if-lez v2, :cond_2b

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, v0, Lyads/xm;->y:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xc8

    cmp-long v0, v2, v4

    if-ltz v0, :cond_2b

    const-string v0, "DefaultAudioSink"

    const-string v2, "Resetting stalled audio track"

    invoke-static {v0, v2}, Lyads/sv3;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lyads/vj0;->b()V

    return v9

    :cond_2b
    return v6

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_8
    .end packed-switch
.end method

.method public final a(Lyads/am;Lyads/vz2;)Z
    .locals 6

    .line 1331
    sget v0, Lyads/u56;->a:I

    const/16 v1, 0x1d

    const/4 v2, 0x0

    if-lt v0, v1, :cond_e

    iget v1, p0, Lyads/vj0;->l:I

    if-nez v1, :cond_0

    goto/16 :goto_5

    .line 1332
    :cond_0
    iget-object v1, p2, Lyads/vz2;->m:Ljava/lang/String;

    .line 1333
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1334
    iget-object v3, p2, Lyads/vz2;->j:Ljava/lang/String;

    invoke-static {v1, v3}, Lyads/z84;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    return v2

    .line 1335
    :cond_1
    iget v3, p2, Lyads/vz2;->z:I

    invoke-static {v3}, Lyads/u56;->a(I)I

    move-result v3

    if-nez v3, :cond_2

    return v2

    .line 1336
    :cond_2
    iget v4, p2, Lyads/vz2;->A:I

    .line 1337
    new-instance v5, Landroid/media/AudioFormat$Builder;

    invoke-direct {v5}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 1338
    invoke-virtual {v5, v4}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v4

    .line 1339
    invoke-virtual {v4, v3}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v3

    .line 1340
    invoke-virtual {v3, v1}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    .line 1341
    invoke-virtual {v1}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v1

    .line 1342
    iget-object v3, p1, Lyads/am;->g:Lyads/zl;

    if-nez v3, :cond_3

    .line 1343
    new-instance v3, Lyads/zl;

    invoke-direct {v3, p1}, Lyads/zl;-><init>(Lyads/am;)V

    iput-object v3, p1, Lyads/am;->g:Lyads/zl;

    .line 1344
    :cond_3
    iget-object p1, v3, Lyads/zl;->a:Landroid/media/AudioAttributes;

    const/16 v3, 0x1f

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-lt v0, v3, :cond_4

    .line 1345
    invoke-static {v1, p1}, Landroid/media/AudioManager;->getPlaybackOffloadSupport(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)I

    move-result p1

    goto :goto_0

    .line 1346
    :cond_4
    invoke-static {v1, p1}, Landroid/media/AudioManager;->isOffloadedPlaybackSupported(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)Z

    move-result p1

    if-nez p1, :cond_5

    move p1, v2

    goto :goto_0

    :cond_5
    const/16 p1, 0x1e

    if-ne v0, p1, :cond_6

    .line 1347
    sget-object p1, Lyads/u56;->d:Ljava/lang/String;

    const-string v0, "Pixel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    move p1, v4

    goto :goto_0

    :cond_6
    move p1, v5

    :goto_0
    if-eqz p1, :cond_e

    if-eq p1, v5, :cond_8

    if-ne p1, v4, :cond_7

    return v5

    .line 1348
    :cond_7
    invoke-static {}, Lud;->g()V

    return v2

    .line 1349
    :cond_8
    iget p1, p2, Lyads/vz2;->C:I

    if-nez p1, :cond_a

    iget p1, p2, Lyads/vz2;->D:I

    if-eqz p1, :cond_9

    goto :goto_1

    :cond_9
    move p1, v2

    goto :goto_2

    :cond_a
    :goto_1
    move p1, v5

    .line 1350
    :goto_2
    iget p0, p0, Lyads/vj0;->l:I

    if-ne p0, v5, :cond_b

    move p0, v5

    goto :goto_3

    :cond_b
    move p0, v2

    :goto_3
    if-eqz p1, :cond_d

    if-nez p0, :cond_c

    goto :goto_4

    :cond_c
    return v2

    :cond_d
    :goto_4
    return v5

    :cond_e
    :goto_5
    return v2
.end method

.method public final b()V
    .locals 11

    invoke-virtual {p0}, Lyads/vj0;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lyads/vj0;->B:J

    iput-wide v2, p0, Lyads/vj0;->C:J

    iput-wide v2, p0, Lyads/vj0;->D:J

    iput-wide v2, p0, Lyads/vj0;->E:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lyads/vj0;->b0:Z

    iput v0, p0, Lyads/vj0;->F:I

    new-instance v4, Lyads/qj0;

    invoke-virtual {p0}, Lyads/vj0;->c()Lyads/qj0;

    move-result-object v5

    iget-object v5, v5, Lyads/qj0;->a:Lyads/dw4;

    invoke-virtual {p0}, Lyads/vj0;->c()Lyads/qj0;

    move-result-object v6

    iget-boolean v6, v6, Lyads/qj0;->b:Z

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    invoke-direct/range {v4 .. v10}, Lyads/qj0;-><init>(Lyads/dw4;ZJJ)V

    iput-object v4, p0, Lyads/vj0;->x:Lyads/qj0;

    iput-wide v2, p0, Lyads/vj0;->I:J

    iput-object v1, p0, Lyads/vj0;->w:Lyads/qj0;

    iget-object v4, p0, Lyads/vj0;->j:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->clear()V

    iput-object v1, p0, Lyads/vj0;->M:Ljava/nio/ByteBuffer;

    iput v0, p0, Lyads/vj0;->N:I

    iput-object v1, p0, Lyads/vj0;->O:Ljava/nio/ByteBuffer;

    iput-boolean v0, p0, Lyads/vj0;->T:Z

    iput-boolean v0, p0, Lyads/vj0;->S:Z

    const/4 v4, -0x1

    iput v4, p0, Lyads/vj0;->R:I

    iput-object v1, p0, Lyads/vj0;->z:Ljava/nio/ByteBuffer;

    iput v0, p0, Lyads/vj0;->A:I

    iget-object v4, p0, Lyads/vj0;->e:Lyads/i26;

    iput-wide v2, v4, Lyads/i26;->o:J

    move v4, v0

    :goto_0
    iget-object v5, p0, Lyads/vj0;->K:[Lyads/mm;

    array-length v6, v5

    if-ge v4, v6, :cond_0

    aget-object v5, v5, v4

    invoke-interface {v5}, Lyads/mm;->flush()V

    iget-object v6, p0, Lyads/vj0;->L:[Ljava/nio/ByteBuffer;

    invoke-interface {v5}, Lyads/mm;->a()Ljava/nio/ByteBuffer;

    move-result-object v5

    aput-object v5, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lyads/vj0;->i:Lyads/xm;

    iget-object v4, v4, Lyads/xm;->c:Landroid/media/AudioTrack;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lyads/vj0;->u:Landroid/media/AudioTrack;

    invoke-virtual {v4}, Landroid/media/AudioTrack;->pause()V

    :cond_1
    iget-object v4, p0, Lyads/vj0;->u:Landroid/media/AudioTrack;

    invoke-static {v4}, Lyads/vj0;->a(Landroid/media/AudioTrack;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lyads/vj0;->m:Lyads/uj0;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, p0, Lyads/vj0;->u:Landroid/media/AudioTrack;

    invoke-virtual {v4, v5}, Lyads/uj0;->b(Landroid/media/AudioTrack;)V

    :cond_2
    iget-object v4, p0, Lyads/vj0;->u:Landroid/media/AudioTrack;

    iput-object v1, p0, Lyads/vj0;->u:Landroid/media/AudioTrack;

    sget v5, Lyads/u56;->a:I

    const/16 v6, 0x15

    if-ge v5, v6, :cond_3

    iget-boolean v5, p0, Lyads/vj0;->V:Z

    if-nez v5, :cond_3

    iput v0, p0, Lyads/vj0;->W:I

    :cond_3
    iget-object v5, p0, Lyads/vj0;->s:Lyads/nj0;

    if-eqz v5, :cond_4

    iput-object v5, p0, Lyads/vj0;->t:Lyads/nj0;

    iput-object v1, p0, Lyads/vj0;->s:Lyads/nj0;

    :cond_4
    iget-object v5, p0, Lyads/vj0;->i:Lyads/xm;

    iput-wide v2, v5, Lyads/xm;->l:J

    iput v0, v5, Lyads/xm;->w:I

    iput v0, v5, Lyads/xm;->v:I

    iput-wide v2, v5, Lyads/xm;->m:J

    iput-wide v2, v5, Lyads/xm;->C:J

    iput-wide v2, v5, Lyads/xm;->F:J

    iput-boolean v0, v5, Lyads/xm;->k:Z

    iput-object v1, v5, Lyads/xm;->c:Landroid/media/AudioTrack;

    iput-object v1, v5, Lyads/xm;->f:Lyads/wm;

    iget-object v2, p0, Lyads/vj0;->h:Lyads/m50;

    monitor-enter v2

    :try_start_0
    iput-boolean v0, v2, Lyads/m50;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    new-instance v0, Lyads/jj0;

    invoke-direct {v0, p0, v4}, Lyads/jj0;-><init>(Lyads/vj0;Landroid/media/AudioTrack;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v2

    throw p0

    :cond_5
    :goto_1
    iget-object v0, p0, Lyads/vj0;->o:Lyads/rj0;

    iput-object v1, v0, Lyads/rj0;->a:Ljava/lang/Exception;

    iget-object p0, p0, Lyads/vj0;->n:Lyads/rj0;

    iput-object v1, p0, Lyads/rj0;->a:Ljava/lang/Exception;

    return-void
.end method

.method public final b(J)V
    .locals 5

    .line 206
    iget-object v0, p0, Lyads/vj0;->K:[Lyads/mm;

    array-length v0, v0

    move v1, v0

    :goto_0
    if-ltz v1, :cond_6

    if-lez v1, :cond_0

    .line 207
    iget-object v2, p0, Lyads/vj0;->L:[Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v1, -0x1

    aget-object v2, v2, v3

    goto :goto_1

    .line 208
    :cond_0
    iget-object v2, p0, Lyads/vj0;->M:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    sget-object v2, Lyads/mm;->a:Ljava/nio/ByteBuffer;

    :goto_1
    if-ne v1, v0, :cond_2

    .line 209
    invoke-virtual {p0, v2, p1, p2}, Lyads/vj0;->a(Ljava/nio/ByteBuffer;J)V

    goto :goto_2

    .line 210
    :cond_2
    iget-object v3, p0, Lyads/vj0;->K:[Lyads/mm;

    aget-object v3, v3, v1

    .line 211
    iget v4, p0, Lyads/vj0;->R:I

    if-le v1, v4, :cond_3

    .line 212
    invoke-interface {v3, v2}, Lyads/mm;->a(Ljava/nio/ByteBuffer;)V

    .line 213
    :cond_3
    invoke-interface {v3}, Lyads/mm;->a()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 214
    iget-object v4, p0, Lyads/vj0;->L:[Ljava/nio/ByteBuffer;

    aput-object v3, v4, v1

    .line 215
    invoke-virtual {v3}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 216
    :cond_4
    :goto_2
    invoke-virtual {v2}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_6
    :goto_3
    return-void
.end method

.method public final c()Lyads/qj0;
    .locals 1

    iget-object v0, p0, Lyads/vj0;->w:Lyads/qj0;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lyads/vj0;->j:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lyads/vj0;->j:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/qj0;

    return-object p0

    :cond_1
    iget-object p0, p0, Lyads/vj0;->x:Lyads/qj0;

    return-object p0
.end method

.method public final d()J
    .locals 5

    iget-object v0, p0, Lyads/vj0;->t:Lyads/nj0;

    iget v1, v0, Lyads/nj0;->c:I

    if-nez v1, :cond_0

    iget-wide v1, p0, Lyads/vj0;->D:J

    iget p0, v0, Lyads/nj0;->d:I

    int-to-long v3, p0

    div-long/2addr v1, v3

    return-wide v1

    :cond_0
    iget-wide v0, p0, Lyads/vj0;->E:J

    return-wide v0
.end method

.method public final e()Z
    .locals 17

    move-object/from16 v1, p0

    iget-object v2, v1, Lyads/vj0;->h:Lyads/m50;

    monitor-enter v2

    :try_start_0
    iget-boolean v0, v2, Lyads/m50;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    :cond_0
    const/4 v3, 0x1

    :try_start_1
    iget-object v0, v1, Lyads/vj0;->t:Lyads/nj0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catch Lyads/qm; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    iget-boolean v4, v1, Lyads/vj0;->Y:Z

    iget-object v5, v1, Lyads/vj0;->v:Lyads/am;

    iget v6, v1, Lyads/vj0;->W:I

    invoke-virtual {v0, v4, v5, v6}, Lyads/nj0;->a(ZLyads/am;I)Landroid/media/AudioTrack;

    move-result-object v0
    :try_end_2
    .catch Lyads/qm; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_3
    iget-object v4, v1, Lyads/vj0;->r:Lyads/ry3;

    if-eqz v4, :cond_1

    const-string v5, "MediaCodecAudioRenderer"

    const-string v6, "Audio sink error"

    invoke-static {v6, v0}, Lyads/sv3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lyads/sv3;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v4, Lyads/ry3;->a:Lyads/sy3;

    iget-object v4, v4, Lyads/sy3;->H0:Lyads/nm;

    invoke-virtual {v4, v0}, Lyads/nm;->b(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v4, v0

    goto :goto_1

    :cond_1
    :goto_0
    throw v0
    :try_end_3
    .catch Lyads/qm; {:try_start_3 .. :try_end_3} :catch_1

    :goto_1
    iget-object v0, v1, Lyads/vj0;->t:Lyads/nj0;

    iget v5, v0, Lyads/nj0;->h:I

    const v6, 0xf4240

    if-le v5, v6, :cond_a

    new-instance v7, Lyads/nj0;

    iget-object v8, v0, Lyads/nj0;->a:Lyads/vz2;

    iget v9, v0, Lyads/nj0;->b:I

    iget v10, v0, Lyads/nj0;->c:I

    iget v11, v0, Lyads/nj0;->d:I

    iget v12, v0, Lyads/nj0;->e:I

    iget v13, v0, Lyads/nj0;->f:I

    iget v14, v0, Lyads/nj0;->g:I

    iget-object v0, v0, Lyads/nj0;->i:[Lyads/mm;

    const v15, 0xf4240

    move-object/from16 v16, v0

    invoke-direct/range {v7 .. v16}, Lyads/nj0;-><init>(Lyads/vz2;IIIIIII[Lyads/mm;)V

    :try_start_4
    iget-boolean v0, v1, Lyads/vj0;->Y:Z

    iget-object v5, v1, Lyads/vj0;->v:Lyads/am;

    iget v6, v1, Lyads/vj0;->W:I

    invoke-virtual {v7, v0, v5, v6}, Lyads/nj0;->a(ZLyads/am;I)Landroid/media/AudioTrack;

    move-result-object v0
    :try_end_4
    .catch Lyads/qm; {:try_start_4 .. :try_end_4} :catch_3

    :try_start_5
    iput-object v7, v1, Lyads/vj0;->t:Lyads/nj0;
    :try_end_5
    .catch Lyads/qm; {:try_start_5 .. :try_end_5} :catch_2

    :goto_2
    iput-object v0, v1, Lyads/vj0;->u:Landroid/media/AudioTrack;

    invoke-static {v0}, Lyads/vj0;->a(Landroid/media/AudioTrack;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v1, Lyads/vj0;->u:Landroid/media/AudioTrack;

    iget-object v4, v1, Lyads/vj0;->m:Lyads/uj0;

    if-nez v4, :cond_2

    new-instance v4, Lyads/uj0;

    invoke-direct {v4, v1}, Lyads/uj0;-><init>(Lyads/vj0;)V

    iput-object v4, v1, Lyads/vj0;->m:Lyads/uj0;

    :cond_2
    invoke-virtual {v4, v0}, Lyads/uj0;->a(Landroid/media/AudioTrack;)V

    iget v0, v1, Lyads/vj0;->l:I

    const/4 v4, 0x3

    if-eq v0, v4, :cond_3

    iget-object v0, v1, Lyads/vj0;->u:Landroid/media/AudioTrack;

    iget-object v4, v1, Lyads/vj0;->t:Lyads/nj0;

    iget-object v4, v4, Lyads/nj0;->a:Lyads/vz2;

    iget v5, v4, Lyads/vz2;->C:I

    iget v4, v4, Lyads/vz2;->D:I

    invoke-virtual {v0, v5, v4}, Landroid/media/AudioTrack;->setOffloadDelayPadding(II)V

    :cond_3
    sget v0, Lyads/u56;->a:I

    const/16 v4, 0x1f

    if-lt v0, v4, :cond_4

    iget-object v4, v1, Lyads/vj0;->q:Lyads/rw4;

    if-eqz v4, :cond_4

    iget-object v5, v1, Lyads/vj0;->u:Landroid/media/AudioTrack;

    invoke-static {v5, v4}, Lyads/kj0;->a(Landroid/media/AudioTrack;Lyads/rw4;)V

    :cond_4
    iget-object v4, v1, Lyads/vj0;->u:Landroid/media/AudioTrack;

    invoke-virtual {v4}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v4

    iput v4, v1, Lyads/vj0;->W:I

    iget-object v4, v1, Lyads/vj0;->i:Lyads/xm;

    iget-object v5, v1, Lyads/vj0;->u:Landroid/media/AudioTrack;

    iget-object v6, v1, Lyads/vj0;->t:Lyads/nj0;

    iget v7, v6, Lyads/nj0;->c:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_5

    move v7, v3

    goto :goto_3

    :cond_5
    move v7, v2

    :goto_3
    iget v8, v6, Lyads/nj0;->g:I

    iget v9, v6, Lyads/nj0;->d:I

    iget v6, v6, Lyads/nj0;->h:I

    iput-object v5, v4, Lyads/xm;->c:Landroid/media/AudioTrack;

    iput v9, v4, Lyads/xm;->d:I

    iput v6, v4, Lyads/xm;->e:I

    new-instance v10, Lyads/wm;

    invoke-direct {v10, v5}, Lyads/wm;-><init>(Landroid/media/AudioTrack;)V

    iput-object v10, v4, Lyads/xm;->f:Lyads/wm;

    invoke-virtual {v5}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result v5

    iput v5, v4, Lyads/xm;->g:I

    if-eqz v7, :cond_7

    const/16 v5, 0x17

    if-ge v0, v5, :cond_7

    const/4 v0, 0x5

    if-eq v8, v0, :cond_6

    const/4 v0, 0x6

    if-ne v8, v0, :cond_7

    :cond_6
    move v0, v3

    goto :goto_4

    :cond_7
    move v0, v2

    :goto_4
    iput-boolean v0, v4, Lyads/xm;->h:Z

    invoke-static {v8}, Lyads/u56;->d(I)Z

    move-result v0

    iput-boolean v0, v4, Lyads/xm;->q:Z

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_8

    div-int/2addr v6, v9

    int-to-long v5, v6

    invoke-virtual {v4, v5, v6}, Lyads/xm;->a(J)J

    move-result-wide v5

    goto :goto_5

    :cond_8
    move-wide v5, v7

    :goto_5
    iput-wide v5, v4, Lyads/xm;->i:J

    const-wide/16 v5, 0x0

    iput-wide v5, v4, Lyads/xm;->s:J

    iput-wide v5, v4, Lyads/xm;->t:J

    iput-wide v5, v4, Lyads/xm;->u:J

    iput-boolean v2, v4, Lyads/xm;->p:Z

    iput-wide v7, v4, Lyads/xm;->x:J

    iput-wide v7, v4, Lyads/xm;->y:J

    iput-wide v5, v4, Lyads/xm;->r:J

    iput-wide v5, v4, Lyads/xm;->o:J

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v4, Lyads/xm;->j:F

    invoke-virtual {v1}, Lyads/vj0;->j()V

    iget-object v0, v1, Lyads/vj0;->X:Lyads/an;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-boolean v3, v1, Lyads/vj0;->H:Z

    return v3

    :catch_2
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v0

    :try_start_6
    iget-object v2, v1, Lyads/vj0;->r:Lyads/ry3;

    if-eqz v2, :cond_9

    const-string v5, "MediaCodecAudioRenderer"

    const-string v6, "Audio sink error"

    invoke-static {v6, v0}, Lyads/sv3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lyads/sv3;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v2, Lyads/ry3;->a:Lyads/sy3;

    iget-object v2, v2, Lyads/sy3;->H0:Lyads/nm;

    invoke-virtual {v2, v0}, Lyads/nm;->b(Ljava/lang/Exception;)V

    :cond_9
    throw v0
    :try_end_6
    .catch Lyads/qm; {:try_start_6 .. :try_end_6} :catch_2

    :goto_6
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_a
    iget-object v0, v1, Lyads/vj0;->t:Lyads/nj0;

    iget v0, v0, Lyads/nj0;->c:I

    if-ne v0, v3, :cond_b

    iput-boolean v3, v1, Lyads/vj0;->a0:Z

    :cond_b
    throw v4

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public final f()Z
    .locals 0

    iget-object p0, p0, Lyads/vj0;->u:Landroid/media/AudioTrack;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final g()V
    .locals 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lyads/vj0;->U:Z

    invoke-virtual {p0}, Lyads/vj0;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lyads/vj0;->i:Lyads/xm;

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lyads/xm;->l:J

    iput v0, v1, Lyads/xm;->w:I

    iput v0, v1, Lyads/xm;->v:I

    iput-wide v2, v1, Lyads/xm;->m:J

    iput-wide v2, v1, Lyads/xm;->C:J

    iput-wide v2, v1, Lyads/xm;->F:J

    iput-boolean v0, v1, Lyads/xm;->k:Z

    iget-wide v2, v1, Lyads/xm;->x:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-object v0, v1, Lyads/xm;->f:Lyads/wm;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lyads/wm;->a()V

    iget-object p0, p0, Lyads/vj0;->u:Landroid/media/AudioTrack;

    invoke-virtual {p0}, Landroid/media/AudioTrack;->pause()V

    :cond_0
    return-void
.end method

.method public final h()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lyads/vj0;->U:Z

    invoke-virtual {p0}, Lyads/vj0;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lyads/vj0;->i:Lyads/xm;

    iget-object v0, v0, Lyads/xm;->f:Lyads/wm;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lyads/wm;->a()V

    iget-object p0, p0, Lyads/vj0;->u:Landroid/media/AudioTrack;

    invoke-virtual {p0}, Landroid/media/AudioTrack;->play()V

    :cond_0
    return-void
.end method

.method public final i()V
    .locals 7

    iget-boolean v0, p0, Lyads/vj0;->T:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lyads/vj0;->T:Z

    iget-object v0, p0, Lyads/vj0;->i:Lyads/xm;

    invoke-virtual {p0}, Lyads/vj0;->d()J

    move-result-wide v1

    invoke-virtual {v0}, Lyads/xm;->a()J

    move-result-wide v3

    iput-wide v3, v0, Lyads/xm;->z:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    iput-wide v3, v0, Lyads/xm;->x:J

    iput-wide v1, v0, Lyads/xm;->A:J

    iget-object v0, p0, Lyads/vj0;->u:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    const/4 v0, 0x0

    iput v0, p0, Lyads/vj0;->A:I

    :cond_0
    return-void
.end method

.method public final j()V
    .locals 3

    invoke-virtual {p0}, Lyads/vj0;->f()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v0, Lyads/u56;->a:I

    iget-object v1, p0, Lyads/vj0;->u:Landroid/media/AudioTrack;

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    iget p0, p0, Lyads/vj0;->J:F

    invoke-virtual {v1, p0}, Landroid/media/AudioTrack;->setVolume(F)I

    return-void

    :cond_1
    iget p0, p0, Lyads/vj0;->J:F

    invoke-virtual {v1, p0, p0}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    return-void
.end method
