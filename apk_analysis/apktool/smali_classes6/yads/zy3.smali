.class public abstract Lyads/zy3;
.super Lyads/gs;
.source "SourceFile"


# static fields
.field public static final F0:[B


# instance fields
.field public final A:[J

.field public A0:Lyads/up2;

.field public B:Lyads/vz2;

.field public B0:Lyads/ji0;

.field public C:Lyads/vz2;

.field public C0:J

.field public D:Lyads/eo2;

.field public D0:J

.field public E:Lyads/eo2;

.field public E0:I

.field public F:Landroid/media/MediaCrypto;

.field public G:Z

.field public final H:J

.field public I:F

.field public J:F

.field public K:Lyads/qy3;

.field public L:Lyads/vz2;

.field public M:Landroid/media/MediaFormat;

.field public N:Z

.field public O:F

.field public P:Ljava/util/ArrayDeque;

.field public Q:Lyads/yy3;

.field public R:Lyads/vy3;

.field public S:I

.field public T:Z

.field public U:Z

.field public V:Z

.field public W:Z

.field public X:Z

.field public Y:Z

.field public Z:Z

.field public a0:Z

.field public b0:Z

.field public c0:Z

.field public d0:Lyads/tv;

.field public e0:J

.field public f0:I

.field public g0:I

.field public h0:Ljava/nio/ByteBuffer;

.field public i0:Z

.field public j0:Z

.field public k0:Z

.field public l0:Z

.field public m0:Z

.field public final n:Lyads/oy3;

.field public n0:Z

.field public final o:Lyads/bz3;

.field public o0:I

.field public final p:Z

.field public p0:I

.field public final q:F

.field public q0:I

.field public final r:Lyads/mi0;

.field public r0:Z

.field public final s:Lyads/mi0;

.field public s0:Z

.field public final t:Lyads/mi0;

.field public t0:Z

.field public final u:Lyads/us;

.field public u0:J

.field public final v:Lyads/fx5;

.field public v0:J

.field public final w:Ljava/util/ArrayList;

.field public w0:Z

.field public final x:Landroid/media/MediaCodec$BufferInfo;

.field public x0:Z

.field public final y:[J

.field public y0:Z

.field public final z:[J

.field public z0:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x26

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lyads/zy3;->F0:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x67t
        0x42t
        -0x40t
        0xbt
        -0x26t
        0x25t
        -0x70t
        0x0t
        0x0t
        0x1t
        0x68t
        -0x32t
        0xft
        0x13t
        0x20t
        0x0t
        0x0t
        0x1t
        0x65t
        -0x78t
        -0x7ct
        0xdt
        -0x32t
        0x71t
        0x18t
        -0x60t
        0x0t
        0x2ft
        -0x41t
        0x1ct
        0x31t
        -0x3dt
        0x27t
        0x5dt
        0x78t
    .end array-data
.end method

.method public constructor <init>(ILyads/oy3;Lyads/bz3;ZF)V
    .locals 1

    invoke-direct {p0, p1}, Lyads/gs;-><init>(I)V

    iput-object p2, p0, Lyads/zy3;->n:Lyads/oy3;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p0, Lyads/zy3;->o:Lyads/bz3;

    iput-boolean p4, p0, Lyads/zy3;->p:Z

    iput p5, p0, Lyads/zy3;->q:F

    new-instance p1, Lyads/mi0;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lyads/mi0;-><init>(I)V

    iput-object p1, p0, Lyads/zy3;->r:Lyads/mi0;

    new-instance p1, Lyads/mi0;

    invoke-direct {p1, p2}, Lyads/mi0;-><init>(I)V

    iput-object p1, p0, Lyads/zy3;->s:Lyads/mi0;

    new-instance p1, Lyads/mi0;

    const/4 p3, 0x2

    invoke-direct {p1, p3}, Lyads/mi0;-><init>(I)V

    iput-object p1, p0, Lyads/zy3;->t:Lyads/mi0;

    new-instance p1, Lyads/us;

    invoke-direct {p1}, Lyads/us;-><init>()V

    iput-object p1, p0, Lyads/zy3;->u:Lyads/us;

    new-instance p3, Lyads/fx5;

    invoke-direct {p3}, Lyads/fx5;-><init>()V

    iput-object p3, p0, Lyads/zy3;->v:Lyads/fx5;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lyads/zy3;->w:Ljava/util/ArrayList;

    new-instance p3, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p3}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object p3, p0, Lyads/zy3;->x:Landroid/media/MediaCodec$BufferInfo;

    const/high16 p3, 0x3f800000    # 1.0f

    iput p3, p0, Lyads/zy3;->I:F

    iput p3, p0, Lyads/zy3;->J:F

    const-wide p3, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p3, p0, Lyads/zy3;->H:J

    const/16 p5, 0xa

    new-array v0, p5, [J

    iput-object v0, p0, Lyads/zy3;->y:[J

    new-array v0, p5, [J

    iput-object v0, p0, Lyads/zy3;->z:[J

    new-array p5, p5, [J

    iput-object p5, p0, Lyads/zy3;->A:[J

    iput-wide p3, p0, Lyads/zy3;->C0:J

    iput-wide p3, p0, Lyads/zy3;->D0:J

    invoke-virtual {p1, p2}, Lyads/mi0;->c(I)V

    iget-object p1, p1, Lyads/mi0;->d:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lyads/zy3;->O:F

    iput p2, p0, Lyads/zy3;->S:I

    iput p2, p0, Lyads/zy3;->o0:I

    const/4 p1, -0x1

    iput p1, p0, Lyads/zy3;->f0:I

    iput p1, p0, Lyads/zy3;->g0:I

    iput-wide p3, p0, Lyads/zy3;->e0:J

    iput-wide p3, p0, Lyads/zy3;->u0:J

    iput-wide p3, p0, Lyads/zy3;->v0:J

    iput p2, p0, Lyads/zy3;->p0:I

    iput p2, p0, Lyads/zy3;->q0:I

    return-void
.end method


# virtual methods
.method public abstract a(F[Lyads/vz2;)F
.end method

.method public abstract a(Lyads/bz3;Lyads/vz2;)I
.end method

.method public final a(Lyads/vz2;)I
    .locals 3

    .line 717
    :try_start_0
    iget-object v0, p0, Lyads/zy3;->o:Lyads/bz3;

    invoke-virtual {p0, v0, p1}, Lyads/zy3;->a(Lyads/bz3;Lyads/vz2;)I

    move-result p0
    :try_end_0
    .catch Lyads/ez3; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    const/16 v2, 0xfa2

    .line 718
    invoke-virtual {p0, v0, p1, v1, v2}, Lyads/gs;->a(Ljava/lang/Exception;Lyads/vz2;ZI)Lyads/up2;

    move-result-object p0

    .line 719
    throw p0
.end method

.method public abstract a(Lyads/bz3;Lyads/vz2;Z)Ljava/util/ArrayList;
.end method

.method public final a(Lyads/eo2;)Lyads/i03;
    .locals 0

    .line 896
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract a(Lyads/vy3;Lyads/vz2;Landroid/media/MediaCrypto;F)Lyads/ny3;
.end method

.method public a(Lyads/a03;)Lyads/oi0;
    .locals 11

    const/4 v0, 0x1

    .line 830
    iput-boolean v0, p0, Lyads/zy3;->y0:Z

    .line 831
    iget-object v4, p1, Lyads/a03;->b:Lyads/vz2;

    .line 832
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 833
    iget-object v1, v4, Lyads/vz2;->m:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_1b

    .line 834
    iget-object p1, p1, Lyads/a03;->a:Lyads/eo2;

    .line 835
    iget-object v1, p0, Lyads/zy3;->E:Lyads/eo2;

    invoke-static {v1, p1}, Lyads/eo2;->a(Lyads/eo2;Lyads/eo2;)V

    .line 836
    iput-object p1, p0, Lyads/zy3;->E:Lyads/eo2;

    .line 837
    iput-object v4, p0, Lyads/zy3;->B:Lyads/vz2;

    .line 838
    iget-boolean v1, p0, Lyads/zy3;->k0:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 839
    iput-boolean v0, p0, Lyads/zy3;->m0:Z

    return-object v3

    .line 840
    :cond_0
    iget-object v1, p0, Lyads/zy3;->K:Lyads/qy3;

    if-nez v1, :cond_1

    .line 841
    iput-object v3, p0, Lyads/zy3;->P:Ljava/util/ArrayDeque;

    .line 842
    invoke-virtual {p0}, Lyads/zy3;->q()V

    return-object v3

    .line 843
    :cond_1
    iget-object v5, p0, Lyads/zy3;->R:Lyads/vy3;

    move-object v6, v3

    .line 844
    iget-object v3, p0, Lyads/zy3;->L:Lyads/vz2;

    .line 845
    iget-object v7, p0, Lyads/zy3;->D:Lyads/eo2;

    const/16 v8, 0x17

    const/4 v9, 0x3

    if-ne v7, p1, :cond_15

    if-eq p1, v7, :cond_2

    move p1, v0

    goto :goto_0

    :cond_2
    move p1, v2

    :goto_0
    if-eqz p1, :cond_4

    .line 846
    sget v7, Lyads/u56;->a:I

    if-lt v7, v8, :cond_3

    goto :goto_1

    .line 847
    :cond_3
    invoke-static {}, Lud;->g()V

    return-object v6

    .line 848
    :cond_4
    :goto_1
    invoke-virtual {p0, v5, v3, v4}, Lyads/zy3;->a(Lyads/vy3;Lyads/vz2;Lyads/vz2;)Lyads/oi0;

    move-result-object v7

    .line 849
    iget v8, v7, Lyads/oi0;->d:I

    if-eqz v8, :cond_11

    const/4 v10, 0x2

    if-eq v8, v0, :cond_b

    if-eq v8, v10, :cond_7

    if-ne v8, v9, :cond_6

    .line 850
    invoke-virtual {p0, v4}, Lyads/zy3;->c(Lyads/vz2;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_3

    .line 851
    :cond_5
    iput-object v4, p0, Lyads/zy3;->L:Lyads/vz2;

    if-eqz p1, :cond_c

    .line 852
    invoke-virtual {p0}, Lyads/zy3;->l()Z

    move-result p1

    if-nez p1, :cond_c

    goto :goto_6

    .line 853
    :cond_6
    invoke-static {}, Lud;->g()V

    return-object v6

    .line 854
    :cond_7
    invoke-virtual {p0, v4}, Lyads/zy3;->c(Lyads/vz2;)Z

    move-result v6

    if-nez v6, :cond_8

    goto :goto_3

    .line 855
    :cond_8
    iput-boolean v0, p0, Lyads/zy3;->n0:Z

    .line 856
    iput v0, p0, Lyads/zy3;->o0:I

    .line 857
    iget v6, p0, Lyads/zy3;->S:I

    if-eq v6, v10, :cond_a

    if-ne v6, v0, :cond_9

    iget v6, v4, Lyads/vz2;->r:I

    iget v8, v3, Lyads/vz2;->r:I

    if-ne v6, v8, :cond_9

    iget v6, v4, Lyads/vz2;->s:I

    iget v8, v3, Lyads/vz2;->s:I

    if-ne v6, v8, :cond_9

    goto :goto_2

    :cond_9
    move v0, v2

    :cond_a
    :goto_2
    iput-boolean v0, p0, Lyads/zy3;->a0:Z

    .line 858
    iput-object v4, p0, Lyads/zy3;->L:Lyads/vz2;

    if-eqz p1, :cond_c

    .line 859
    invoke-virtual {p0}, Lyads/zy3;->l()Z

    move-result p1

    if-nez p1, :cond_c

    goto :goto_6

    .line 860
    :cond_b
    invoke-virtual {p0, v4}, Lyads/zy3;->c(Lyads/vz2;)Z

    move-result v6

    if-nez v6, :cond_d

    :goto_3
    const/16 v2, 0x10

    :cond_c
    :goto_4
    move v6, v2

    goto :goto_7

    .line 861
    :cond_d
    iput-object v4, p0, Lyads/zy3;->L:Lyads/vz2;

    if-eqz p1, :cond_e

    .line 862
    invoke-virtual {p0}, Lyads/zy3;->l()Z

    move-result p1

    if-nez p1, :cond_c

    goto :goto_6

    .line 863
    :cond_e
    iget-boolean p1, p0, Lyads/zy3;->r0:Z

    if-eqz p1, :cond_c

    .line 864
    iput v0, p0, Lyads/zy3;->p0:I

    .line 865
    iget-boolean p1, p0, Lyads/zy3;->U:Z

    if-nez p1, :cond_10

    iget-boolean p1, p0, Lyads/zy3;->W:Z

    if-eqz p1, :cond_f

    goto :goto_5

    .line 866
    :cond_f
    iput v0, p0, Lyads/zy3;->q0:I

    goto :goto_4

    .line 867
    :cond_10
    :goto_5
    iput v9, p0, Lyads/zy3;->q0:I

    :goto_6
    move v6, v10

    goto :goto_7

    .line 868
    :cond_11
    iget-boolean p1, p0, Lyads/zy3;->r0:Z

    if-eqz p1, :cond_12

    .line 869
    iput v0, p0, Lyads/zy3;->p0:I

    .line 870
    iput v9, p0, Lyads/zy3;->q0:I

    goto :goto_4

    .line 871
    :cond_12
    invoke-virtual {p0}, Lyads/zy3;->t()V

    .line 872
    invoke-virtual {p0}, Lyads/zy3;->q()V

    goto :goto_4

    .line 873
    :goto_7
    iget p1, v7, Lyads/oi0;->d:I

    if-eqz p1, :cond_14

    iget-object p1, p0, Lyads/zy3;->K:Lyads/qy3;

    if-ne p1, v1, :cond_13

    iget p0, p0, Lyads/zy3;->q0:I

    if-ne p0, v9, :cond_14

    .line 874
    :cond_13
    new-instance v1, Lyads/oi0;

    iget-object v2, v5, Lyads/vy3;->a:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v6}, Lyads/oi0;-><init>(Ljava/lang/String;Lyads/vz2;Lyads/vz2;II)V

    return-object v1

    :cond_14
    return-object v7

    :cond_15
    if-eqz p1, :cond_19

    if-nez v7, :cond_16

    goto :goto_8

    .line 875
    :cond_16
    sget v1, Lyads/u56;->a:I

    if-ge v1, v8, :cond_17

    goto :goto_8

    .line 876
    :cond_17
    sget-object v1, Lyads/uv;->e:Ljava/util/UUID;

    invoke-virtual {v7}, Lyads/eo2;->b()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 877
    invoke-virtual {p1}, Lyads/eo2;->b()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    goto :goto_8

    .line 878
    :cond_18
    invoke-virtual {p0, p1}, Lyads/zy3;->a(Lyads/eo2;)Lyads/i03;

    .line 879
    :cond_19
    :goto_8
    iget-boolean p1, p0, Lyads/zy3;->r0:Z

    if-eqz p1, :cond_1a

    .line 880
    iput v0, p0, Lyads/zy3;->p0:I

    .line 881
    iput v9, p0, Lyads/zy3;->q0:I

    goto :goto_9

    .line 882
    :cond_1a
    invoke-virtual {p0}, Lyads/zy3;->t()V

    .line 883
    invoke-virtual {p0}, Lyads/zy3;->q()V

    .line 884
    :goto_9
    new-instance v1, Lyads/oi0;

    iget-object v2, v5, Lyads/vy3;->a:Ljava/lang/String;

    const/4 v5, 0x0

    const/16 v6, 0x80

    invoke-direct/range {v1 .. v6}, Lyads/oi0;-><init>(Ljava/lang/String;Lyads/vz2;Lyads/vz2;II)V

    return-object v1

    .line 885
    :cond_1b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    const/16 v0, 0xfa5

    .line 886
    invoke-virtual {p0, p1, v4, v2, v0}, Lyads/gs;->a(Ljava/lang/Exception;Lyads/vz2;ZI)Lyads/up2;

    move-result-object p0

    .line 887
    throw p0
.end method

.method public abstract a(Lyads/vy3;Lyads/vz2;Lyads/vz2;)Lyads/oi0;
.end method

.method public a(Ljava/lang/IllegalStateException;Lyads/vy3;)Lyads/uy3;
    .locals 0

    .line 795
    new-instance p0, Lyads/uy3;

    invoke-direct {p0, p1, p2}, Lyads/uy3;-><init>(Ljava/lang/IllegalStateException;Lyads/vy3;)V

    return-object p0
.end method

.method public a(FF)V
    .locals 0

    .line 749
    iput p1, p0, Lyads/zy3;->I:F

    .line 750
    iput p2, p0, Lyads/zy3;->J:F

    .line 751
    iget-object p1, p0, Lyads/zy3;->L:Lyads/vz2;

    invoke-virtual {p0, p1}, Lyads/zy3;->c(Lyads/vz2;)Z

    return-void
.end method

.method public a(J)V
    .locals 6

    .line 888
    :goto_0
    iget v0, p0, Lyads/zy3;->E0:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lyads/zy3;->A:[J

    const/4 v2, 0x0

    aget-wide v3, v1, v2

    cmp-long v1, p1, v3

    if-ltz v1, :cond_0

    .line 889
    iget-object v1, p0, Lyads/zy3;->y:[J

    aget-wide v3, v1, v2

    iput-wide v3, p0, Lyads/zy3;->C0:J

    .line 890
    iget-object v3, p0, Lyads/zy3;->z:[J

    aget-wide v4, v3, v2

    iput-wide v4, p0, Lyads/zy3;->D0:J

    add-int/lit8 v0, v0, -0x1

    .line 891
    iput v0, p0, Lyads/zy3;->E0:I

    const/4 v3, 0x1

    .line 892
    invoke-static {v1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 893
    iget-object v0, p0, Lyads/zy3;->z:[J

    iget v1, p0, Lyads/zy3;->E0:I

    invoke-static {v0, v3, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 894
    iget-object v0, p0, Lyads/zy3;->A:[J

    iget v1, p0, Lyads/zy3;->E0:I

    invoke-static {v0, v3, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 895
    invoke-virtual {p0}, Lyads/zy3;->r()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(JJ)V
    .locals 11

    .line 752
    iget-boolean v0, p0, Lyads/zy3;->z0:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 753
    iput-boolean v1, p0, Lyads/zy3;->z0:Z

    .line 754
    invoke-virtual {p0}, Lyads/zy3;->s()V

    .line 755
    :cond_0
    iget-object v0, p0, Lyads/zy3;->A0:Lyads/up2;

    if-nez v0, :cond_e

    const/4 v0, 0x1

    .line 756
    :try_start_0
    iget-boolean v2, p0, Lyads/zy3;->x0:Z

    if-eqz v2, :cond_1

    .line 757
    invoke-virtual {p0}, Lyads/zy3;->u()V

    return-void

    :catch_0
    move-exception p1

    goto/16 :goto_4

    .line 758
    :cond_1
    iget-object v2, p0, Lyads/zy3;->B:Lyads/vz2;

    if-nez v2, :cond_2

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lyads/zy3;->c(I)Z

    move-result v2

    if-nez v2, :cond_2

    return-void

    .line 759
    :cond_2
    invoke-virtual {p0}, Lyads/zy3;->q()V

    .line 760
    iget-boolean v2, p0, Lyads/zy3;->k0:Z

    if-eqz v2, :cond_4

    .line 761
    const-string v2, "bypassRender"

    invoke-static {v2}, Lyads/b06;->a(Ljava/lang/String;)V

    .line 762
    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lyads/zy3;->b(JJ)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 763
    :cond_3
    invoke-static {}, Lyads/b06;->a()V

    goto :goto_3

    .line 764
    :cond_4
    iget-object v2, p0, Lyads/zy3;->K:Lyads/qy3;

    if-eqz v2, :cond_8

    .line 765
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 766
    const-string v4, "drainAndFeed"

    invoke-static {v4}, Lyads/b06;->a(Ljava/lang/String;)V

    .line 767
    :cond_5
    :goto_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lyads/zy3;->c(JJ)Z

    move-result v4

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v4, :cond_6

    .line 768
    iget-wide v7, p0, Lyads/zy3;->H:J

    cmp-long v4, v7, v5

    if-eqz v4, :cond_5

    .line 769
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long/2addr v7, v2

    iget-wide v9, p0, Lyads/zy3;->H:J

    cmp-long v4, v7, v9

    if-gez v4, :cond_6

    goto :goto_1

    .line 770
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lyads/zy3;->m()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 771
    iget-wide p1, p0, Lyads/zy3;->H:J

    cmp-long p1, p1, v5

    if-eqz p1, :cond_6

    .line 772
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    sub-long/2addr p1, v2

    iget-wide p3, p0, Lyads/zy3;->H:J

    cmp-long p1, p1, p3

    if-gez p1, :cond_7

    goto :goto_2

    .line 773
    :cond_7
    invoke-static {}, Lyads/b06;->a()V

    goto :goto_3

    .line 774
    :cond_8
    iget-object p3, p0, Lyads/zy3;->B0:Lyads/ji0;

    iget p4, p3, Lyads/ji0;->d:I

    .line 775
    iget-object v2, p0, Lyads/gs;->h:Lyads/mc5;

    .line 776
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 777
    iget-wide v3, p0, Lyads/gs;->j:J

    sub-long/2addr p1, v3

    invoke-interface {v2, p1, p2}, Lyads/mc5;->b(J)I

    move-result p1

    add-int/2addr p4, p1

    .line 778
    iput p4, p3, Lyads/ji0;->d:I

    .line 779
    invoke-virtual {p0, v0}, Lyads/zy3;->c(I)Z

    .line 780
    :goto_3
    iget-object p1, p0, Lyads/zy3;->B0:Lyads/ji0;

    monitor-enter p1

    monitor-exit p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 781
    :goto_4
    sget p2, Lyads/u56;->a:I

    const/16 p3, 0x15

    if-lt p2, p3, :cond_9

    .line 782
    instance-of p4, p1, Landroid/media/MediaCodec$CodecException;

    if-eqz p4, :cond_9

    goto :goto_5

    .line 783
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p4

    .line 784
    array-length v2, p4

    if-lez v2, :cond_d

    aget-object p4, p4, v1

    invoke-virtual {p4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object p4

    const-string v2, "android.media.MediaCodec"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_d

    .line 785
    :goto_5
    invoke-virtual {p0, p1}, Lyads/zy3;->a(Ljava/lang/Exception;)V

    if-lt p2, p3, :cond_b

    .line 786
    instance-of p2, p1, Landroid/media/MediaCodec$CodecException;

    if-eqz p2, :cond_a

    .line 787
    move-object p2, p1

    check-cast p2, Landroid/media/MediaCodec$CodecException;

    invoke-virtual {p2}, Landroid/media/MediaCodec$CodecException;->isRecoverable()Z

    move-result p2

    goto :goto_6

    :cond_a
    move p2, v1

    :goto_6
    if-eqz p2, :cond_b

    move v1, v0

    :cond_b
    if-eqz v1, :cond_c

    .line 788
    invoke-virtual {p0}, Lyads/zy3;->t()V

    .line 789
    :cond_c
    iget-object p2, p0, Lyads/zy3;->R:Lyads/vy3;

    .line 790
    invoke-virtual {p0, p1, p2}, Lyads/zy3;->a(Ljava/lang/IllegalStateException;Lyads/vy3;)Lyads/uy3;

    move-result-object p1

    iget-object p2, p0, Lyads/zy3;->B:Lyads/vz2;

    const/16 p3, 0xfa3

    .line 791
    invoke-virtual {p0, p1, p2, v1, p3}, Lyads/gs;->a(Ljava/lang/Exception;Lyads/vz2;ZI)Lyads/up2;

    move-result-object p0

    throw p0

    .line 792
    :cond_d
    throw p1

    :cond_e
    const/4 p1, 0x0

    .line 793
    iput-object p1, p0, Lyads/zy3;->A0:Lyads/up2;

    .line 794
    throw v0
.end method

.method public a(JZ)V
    .locals 3

    const/4 p1, 0x0

    .line 731
    iput-boolean p1, p0, Lyads/zy3;->w0:Z

    .line 732
    iput-boolean p1, p0, Lyads/zy3;->x0:Z

    .line 733
    iput-boolean p1, p0, Lyads/zy3;->z0:Z

    .line 734
    iget-boolean p2, p0, Lyads/zy3;->k0:Z

    if-eqz p2, :cond_0

    .line 735
    iget-object p2, p0, Lyads/zy3;->u:Lyads/us;

    invoke-virtual {p2}, Lyads/us;->b()V

    .line 736
    iget-object p2, p0, Lyads/zy3;->t:Lyads/mi0;

    invoke-virtual {p2}, Lyads/mi0;->b()V

    .line 737
    iput-boolean p1, p0, Lyads/zy3;->l0:Z

    goto :goto_0

    .line 738
    :cond_0
    invoke-virtual {p0}, Lyads/zy3;->o()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 739
    invoke-virtual {p0}, Lyads/zy3;->q()V

    .line 740
    :cond_1
    :goto_0
    iget-object p2, p0, Lyads/zy3;->v:Lyads/fx5;

    monitor-enter p2

    .line 741
    :try_start_0
    iget p3, p2, Lyads/fx5;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p2

    const/4 p2, 0x1

    if-lez p3, :cond_2

    .line 742
    iput-boolean p2, p0, Lyads/zy3;->y0:Z

    .line 743
    :cond_2
    iget-object p3, p0, Lyads/zy3;->v:Lyads/fx5;

    invoke-virtual {p3}, Lyads/fx5;->a()V

    .line 744
    iget p3, p0, Lyads/zy3;->E0:I

    if-eqz p3, :cond_3

    .line 745
    iget-object v0, p0, Lyads/zy3;->z:[J

    sub-int/2addr p3, p2

    aget-wide v1, v0, p3

    iput-wide v1, p0, Lyads/zy3;->D0:J

    .line 746
    iget-object p2, p0, Lyads/zy3;->y:[J

    aget-wide v0, p2, p3

    iput-wide v0, p0, Lyads/zy3;->C0:J

    .line 747
    iput p1, p0, Lyads/zy3;->E0:I

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    .line 748
    monitor-exit p2

    throw p0
.end method

.method public final a(Landroid/media/MediaCrypto;Z)V
    .locals 12

    .line 796
    iget-object v0, p0, Lyads/zy3;->P:Ljava/util/ArrayDeque;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 797
    :try_start_0
    invoke-virtual {p0, p2}, Lyads/zy3;->b(Z)Ljava/util/List;

    move-result-object v0

    .line 798
    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v2, p0, Lyads/zy3;->P:Ljava/util/ArrayDeque;

    .line 799
    iget-boolean v3, p0, Lyads/zy3;->p:Z

    if-eqz v3, :cond_0

    .line 800
    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    .line 801
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 802
    iget-object v2, p0, Lyads/zy3;->P:Ljava/util/ArrayDeque;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/vy3;

    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 803
    :cond_1
    :goto_0
    iput-object v1, p0, Lyads/zy3;->Q:Lyads/yy3;
    :try_end_0
    .catch Lyads/ez3; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 804
    :goto_1
    new-instance v0, Lyads/yy3;

    iget-object p0, p0, Lyads/zy3;->B:Lyads/vz2;

    const v1, -0xc34e

    invoke-direct {v0, p0, p1, p2, v1}, Lyads/yy3;-><init>(Lyads/vz2;Lyads/ez3;ZI)V

    throw v0

    .line 805
    :cond_2
    :goto_2
    iget-object v0, p0, Lyads/zy3;->P:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 806
    iget-object v0, p0, Lyads/zy3;->P:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lyads/vy3;

    .line 807
    :goto_3
    iget-object v0, p0, Lyads/zy3;->K:Lyads/qy3;

    if-nez v0, :cond_7

    .line 808
    iget-object v0, p0, Lyads/zy3;->P:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lyads/vy3;

    .line 809
    invoke-virtual {p0, v3}, Lyads/zy3;->a(Lyads/vy3;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 810
    :cond_3
    :try_start_1
    invoke-virtual {p0, v3, p1}, Lyads/zy3;->a(Lyads/vy3;Landroid/media/MediaCrypto;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    const-string v4, "MediaCodecRenderer"

    if-ne v3, v2, :cond_4

    .line 811
    :try_start_2
    const-string v0, "Preferred decoder instantiation failed. Sleeping for 50ms then retrying."

    invoke-static {v4, v0}, Lyads/sv3;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v5, 0x32

    .line 812
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    .line 813
    invoke-virtual {p0, v3, p1}, Lyads/zy3;->a(Lyads/vy3;Landroid/media/MediaCrypto;)V

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_4

    .line 814
    :cond_4
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 815
    :goto_4
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Failed to initialize decoder: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 816
    invoke-static {v5, v0}, Lyads/sv3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lyads/sv3;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    iget-object v4, p0, Lyads/zy3;->P:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 818
    new-instance v4, Lyads/yy3;

    iget-object v5, p0, Lyads/zy3;->B:Lyads/vz2;

    invoke-direct {v4, v5, v0, p2, v3}, Lyads/yy3;-><init>(Lyads/vz2;Ljava/lang/Exception;ZLyads/vy3;)V

    .line 819
    invoke-virtual {p0, v4}, Lyads/zy3;->a(Ljava/lang/Exception;)V

    .line 820
    iget-object v0, p0, Lyads/zy3;->Q:Lyads/yy3;

    if-nez v0, :cond_5

    .line 821
    iput-object v4, p0, Lyads/zy3;->Q:Lyads/yy3;

    goto :goto_5

    .line 822
    :cond_5
    new-instance v5, Lyads/yy3;

    .line 823
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    .line 824
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    iget-object v8, v0, Lyads/yy3;->b:Ljava/lang/String;

    iget-boolean v9, v0, Lyads/yy3;->c:Z

    iget-object v10, v0, Lyads/yy3;->d:Lyads/vy3;

    iget-object v11, v0, Lyads/yy3;->e:Ljava/lang/String;

    invoke-direct/range {v5 .. v11}, Lyads/yy3;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ZLyads/vy3;Ljava/lang/String;)V

    .line 825
    iput-object v5, p0, Lyads/zy3;->Q:Lyads/yy3;

    .line 826
    :goto_5
    iget-object v0, p0, Lyads/zy3;->P:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_3

    .line 827
    :cond_6
    iget-object p0, p0, Lyads/zy3;->Q:Lyads/yy3;

    throw p0

    .line 828
    :cond_7
    iput-object v1, p0, Lyads/zy3;->P:Ljava/util/ArrayDeque;

    return-void

    .line 829
    :cond_8
    new-instance p1, Lyads/yy3;

    iget-object p0, p0, Lyads/zy3;->B:Lyads/vz2;

    const v0, -0xc34f

    invoke-direct {p1, p0, v1, p2, v0}, Lyads/yy3;-><init>(Lyads/vz2;Lyads/ez3;ZI)V

    throw p1
.end method

.method public abstract a(Ljava/lang/Exception;)V
.end method

.method public abstract a(Ljava/lang/String;)V
.end method

.method public abstract a(Ljava/lang/String;JJ)V
.end method

.method public a(Lyads/mi0;)V
    .locals 0

    .line 715
    return-void
.end method

.method public final a(Lyads/vy3;Landroid/media/MediaCrypto;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "createCodec:"

    iget-object v3, v1, Lyads/vy3;->a:Ljava/lang/String;

    sget v4, Lyads/u56;->a:I

    const/high16 v5, -0x40800000    # -1.0f

    const/16 v6, 0x17

    if-ge v4, v6, :cond_0

    move v7, v5

    goto :goto_0

    :cond_0
    iget v7, v0, Lyads/zy3;->J:F

    iget-object v8, v0, Lyads/gs;->i:[Lyads/vz2;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v7, v8}, Lyads/zy3;->a(F[Lyads/vz2;)F

    move-result v7

    :goto_0
    iget v8, v0, Lyads/zy3;->q:F

    cmpg-float v8, v7, v8

    if-gtz v8, :cond_1

    goto :goto_1

    :cond_1
    move v5, v7

    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iget-object v9, v0, Lyads/zy3;->B:Lyads/vz2;

    move-object/from16 v10, p2

    invoke-virtual {v0, v1, v9, v10, v5}, Lyads/zy3;->a(Lyads/vy3;Lyads/vz2;Landroid/media/MediaCrypto;F)Lyads/ny3;

    move-result-object v9

    const/16 v10, 0x1f

    if-lt v4, v10, :cond_2

    iget-object v10, v0, Lyads/gs;->f:Lyads/rw4;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9, v10}, Lyads/xy3;->a(Lyads/ny3;Lyads/rw4;)V

    :cond_2
    :try_start_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lyads/b06;->a(Ljava/lang/String;)V

    iget-object v2, v0, Lyads/zy3;->n:Lyads/oy3;

    invoke-interface {v2, v9}, Lyads/oy3;->a(Lyads/ny3;)Lyads/qy3;

    move-result-object v2

    iput-object v2, v0, Lyads/zy3;->K:Lyads/qy3;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lyads/b06;->a()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    iput-object v1, v0, Lyads/zy3;->R:Lyads/vy3;

    iput v5, v0, Lyads/zy3;->O:F

    iget-object v2, v0, Lyads/zy3;->B:Lyads/vz2;

    iput-object v2, v0, Lyads/zy3;->L:Lyads/vz2;

    const/16 v5, 0x19

    const/4 v12, 0x1

    if-gt v4, v5, :cond_4

    sget-object v13, Lyads/m25;->b:Lyads/az3;

    invoke-virtual {v13}, Lyads/az3;->p()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    sget-object v14, Lyads/u56;->d:Ljava/lang/String;

    invoke-virtual {v13}, Lyads/az3;->J()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_3

    invoke-virtual {v13}, Lyads/az3;->F()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_3

    invoke-virtual {v13}, Lyads/az3;->G()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_3

    invoke-virtual {v13}, Lyads/az3;->I()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    :cond_3
    const/4 v13, 0x2

    goto :goto_2

    :cond_4
    const/16 v13, 0x18

    if-ge v4, v13, :cond_7

    sget-object v13, Lyads/m25;->b:Lyads/az3;

    invoke-virtual {v13}, Lyads/az3;->s()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    invoke-virtual {v13}, Lyads/az3;->t()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    :cond_5
    invoke-virtual {v13}, Lyads/az3;->f()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lyads/u56;->b:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_6

    invoke-virtual {v13}, Lyads/az3;->g()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_6

    invoke-virtual {v13}, Lyads/az3;->k()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_6

    invoke-virtual {v13}, Lyads/az3;->M()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    :cond_6
    move v13, v12

    goto :goto_2

    :cond_7
    const/4 v13, 0x0

    :goto_2
    iput v13, v0, Lyads/zy3;->S:I

    iget-object v13, v0, Lyads/zy3;->L:Lyads/vz2;

    const/16 v14, 0x15

    if-ge v4, v14, :cond_8

    iget-object v13, v13, Lyads/vz2;->o:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_8

    sget-object v13, Lyads/m25;->b:Lyads/az3;

    invoke-virtual {v13}, Lyads/az3;->r()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    move v13, v12

    goto :goto_3

    :cond_8
    const/4 v13, 0x0

    :goto_3
    iput-boolean v13, v0, Lyads/zy3;->T:Z

    const/16 v13, 0x13

    const/16 v15, 0x12

    if-lt v4, v15, :cond_b

    if-ne v4, v15, :cond_9

    sget-object v16, Lyads/m25;->b:Lyads/az3;

    invoke-virtual/range {v16 .. v16}, Lyads/az3;->u()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_b

    invoke-virtual/range {v16 .. v16}, Lyads/az3;->v()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_b

    :cond_9
    if-ne v4, v13, :cond_a

    sget-object v11, Lyads/u56;->d:Ljava/lang/String;

    sget-object v16, Lyads/m25;->b:Lyads/az3;

    invoke-virtual/range {v16 .. v16}, Lyads/az3;->H()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual/range {v16 .. v16}, Lyads/az3;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual/range {v16 .. v16}, Lyads/az3;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_4

    :cond_a
    const/4 v2, 0x0

    goto :goto_5

    :cond_b
    :goto_4
    move v2, v12

    :goto_5
    iput-boolean v2, v0, Lyads/zy3;->U:Z

    const/16 v2, 0x1d

    if-ne v4, v2, :cond_c

    sget-object v11, Lyads/m25;->b:Lyads/az3;

    invoke-virtual {v11}, Lyads/az3;->d()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    move v11, v12

    goto :goto_6

    :cond_c
    const/4 v11, 0x0

    :goto_6
    iput-boolean v11, v0, Lyads/zy3;->V:Z

    if-gt v4, v6, :cond_d

    sget-object v6, Lyads/m25;->b:Lyads/az3;

    invoke-virtual {v6}, Lyads/az3;->D()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f

    :cond_d
    if-gt v4, v13, :cond_10

    sget-object v6, Lyads/m25;->b:Lyads/az3;

    invoke-virtual {v6}, Lyads/az3;->l()Ljava/lang/String;

    move-result-object v11

    sget-object v13, Lyads/u56;->b:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_e

    invoke-virtual {v6}, Lyads/az3;->L()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    :cond_e
    invoke-virtual {v6}, Lyads/az3;->y()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_f

    invoke-virtual {v6}, Lyads/az3;->z()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    :cond_f
    move v6, v12

    goto :goto_7

    :cond_10
    const/4 v6, 0x0

    :goto_7
    iput-boolean v6, v0, Lyads/zy3;->W:Z

    if-ne v4, v14, :cond_11

    sget-object v6, Lyads/m25;->b:Lyads/az3;

    invoke-virtual {v6}, Lyads/az3;->C()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    move v6, v12

    goto :goto_8

    :cond_11
    const/4 v6, 0x0

    :goto_8
    iput-boolean v6, v0, Lyads/zy3;->X:Z

    if-ge v4, v14, :cond_13

    sget-object v6, Lyads/m25;->b:Lyads/az3;

    invoke-virtual {v6}, Lyads/az3;->w()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_13

    invoke-virtual {v6}, Lyads/az3;->K()Ljava/lang/String;

    move-result-object v11

    sget-object v13, Lyads/u56;->c:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_13

    sget-object v11, Lyads/u56;->b:Ljava/lang/String;

    invoke-virtual {v6}, Lyads/az3;->c()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_12

    invoke-virtual {v6}, Lyads/az3;->j()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_12

    invoke-virtual {v6}, Lyads/az3;->h()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_12

    invoke-virtual {v6}, Lyads/az3;->i()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_12

    invoke-virtual {v6}, Lyads/az3;->m()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_12

    invoke-virtual {v6}, Lyads/az3;->n()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    :cond_12
    move v6, v12

    goto :goto_9

    :cond_13
    const/4 v6, 0x0

    :goto_9
    iput-boolean v6, v0, Lyads/zy3;->Y:Z

    iget-object v6, v0, Lyads/zy3;->L:Lyads/vz2;

    if-gt v4, v15, :cond_14

    iget v6, v6, Lyads/vz2;->z:I

    if-ne v6, v12, :cond_14

    sget-object v6, Lyads/m25;->b:Lyads/az3;

    invoke-virtual {v6}, Lyads/az3;->q()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    move v6, v12

    goto :goto_a

    :cond_14
    const/4 v6, 0x0

    :goto_a
    iput-boolean v6, v0, Lyads/zy3;->Z:Z

    iget-object v6, v1, Lyads/vy3;->a:Ljava/lang/String;

    if-gt v4, v5, :cond_15

    sget-object v5, Lyads/m25;->b:Lyads/az3;

    invoke-virtual {v5}, Lyads/az3;->E()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_19

    :cond_15
    const/16 v5, 0x11

    if-gt v4, v5, :cond_16

    sget-object v5, Lyads/m25;->b:Lyads/az3;

    invoke-virtual {v5}, Lyads/az3;->x()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_19

    :cond_16
    if-gt v4, v2, :cond_17

    sget-object v5, Lyads/m25;->b:Lyads/az3;

    invoke-virtual {v5}, Lyads/az3;->A()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    invoke-virtual {v5}, Lyads/az3;->B()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    :cond_17
    sget-object v5, Lyads/m25;->b:Lyads/az3;

    invoke-virtual {v5}, Lyads/az3;->b()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lyads/u56;->c:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-virtual {v5}, Lyads/az3;->a()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lyads/u56;->d:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    iget-boolean v2, v1, Lyads/vy3;->f:Z

    if-eqz v2, :cond_18

    goto :goto_b

    :cond_18
    invoke-virtual {v0}, Lyads/zy3;->p()Z

    move-result v2

    if-eqz v2, :cond_1a

    :cond_19
    :goto_b
    move v11, v12

    goto :goto_c

    :cond_1a
    const/4 v11, 0x0

    :goto_c
    iput-boolean v11, v0, Lyads/zy3;->c0:Z

    iget-object v2, v0, Lyads/zy3;->K:Lyads/qy3;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Lyads/az3;->e()Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Lyads/vy3;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    new-instance v1, Lyads/tv;

    invoke-direct {v1}, Lyads/tv;-><init>()V

    iput-object v1, v0, Lyads/zy3;->d0:Lyads/tv;

    :cond_1b
    iget v1, v0, Lyads/gs;->g:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1c

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v4, 0x3e8

    add-long/2addr v1, v4

    iput-wide v1, v0, Lyads/zy3;->e0:J

    :cond_1c
    iget-object v1, v0, Lyads/zy3;->B0:Lyads/ji0;

    iget v2, v1, Lyads/ji0;->a:I

    add-int/2addr v2, v12

    iput v2, v1, Lyads/ji0;->a:I

    sub-long v4, v9, v7

    move-object v1, v3

    move-wide v2, v9

    invoke-virtual/range {v0 .. v5}, Lyads/zy3;->a(Ljava/lang/String;JJ)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {}, Lyads/b06;->a()V

    throw v0
.end method

.method public abstract a(Lyads/vz2;Landroid/media/MediaFormat;)V
.end method

.method public final a([Lyads/vz2;JJ)V
    .locals 4

    .line 720
    iget-wide v0, p0, Lyads/zy3;->D0:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    .line 721
    iget-wide v0, p0, Lyads/zy3;->C0:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    .line 722
    iput-wide p2, p0, Lyads/zy3;->C0:J

    .line 723
    iput-wide p4, p0, Lyads/zy3;->D0:J

    return-void

    .line 724
    :cond_0
    invoke-static {}, Lud;->g()V

    return-void

    .line 725
    :cond_1
    iget p1, p0, Lyads/zy3;->E0:I

    iget-object v0, p0, Lyads/zy3;->z:[J

    array-length v0, v0

    if-ne p1, v0, :cond_2

    .line 726
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Too many stream changes, so dropping offset: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lyads/zy3;->z:[J

    iget v1, p0, Lyads/zy3;->E0:I

    add-int/lit8 v1, v1, -0x1

    aget-wide v1, v0, v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaCodecRenderer"

    invoke-static {v0, p1}, Lyads/sv3;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    add-int/lit8 p1, p1, 0x1

    .line 727
    iput p1, p0, Lyads/zy3;->E0:I

    .line 728
    :goto_0
    iget-object p1, p0, Lyads/zy3;->y:[J

    iget v0, p0, Lyads/zy3;->E0:I

    add-int/lit8 v0, v0, -0x1

    aput-wide p2, p1, v0

    .line 729
    iget-object p1, p0, Lyads/zy3;->z:[J

    aput-wide p4, p1, v0

    .line 730
    iget-object p1, p0, Lyads/zy3;->A:[J

    iget-wide p2, p0, Lyads/zy3;->u0:J

    aput-wide p2, p1, v0

    return-void
.end method

.method public abstract a(JJLyads/qy3;Ljava/nio/ByteBuffer;IIIJZZLyads/vz2;)Z
.end method

.method public a(Lyads/vy3;)Z
    .locals 0

    .line 716
    const/4 p0, 0x1

    return p0
.end method

.method public final b(Z)Ljava/util/List;
    .locals 2

    .line 260
    iget-object v0, p0, Lyads/zy3;->o:Lyads/bz3;

    iget-object v1, p0, Lyads/zy3;->B:Lyads/vz2;

    .line 261
    invoke-virtual {p0, v0, v1, p1}, Lyads/zy3;->a(Lyads/bz3;Lyads/vz2;Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 262
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 263
    iget-object p1, p0, Lyads/zy3;->o:Lyads/bz3;

    iget-object v0, p0, Lyads/zy3;->B:Lyads/vz2;

    const/4 v1, 0x0

    .line 264
    invoke-virtual {p0, p1, v0, v1}, Lyads/zy3;->a(Lyads/bz3;Lyads/vz2;Z)Ljava/util/ArrayList;

    move-result-object p1

    .line 265
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Drm session requires secure decoder for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lyads/zy3;->B:Lyads/vz2;

    iget-object p0, p0, Lyads/vz2;->m:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", but no secure decoder available. Trying to proceed with "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MediaCodecRenderer"

    invoke-static {v0, p0}, Lyads/sv3;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object p1

    :cond_1
    return-object v0
.end method

.method public final b(J)V
    .locals 2

    .line 250
    iget-object v0, p0, Lyads/zy3;->v:Lyads/fx5;

    monitor-enter v0

    const/4 v1, 0x1

    .line 251
    :try_start_0
    invoke-virtual {v0, p1, p2, v1}, Lyads/fx5;->a(JZ)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 252
    check-cast p1, Lyads/vz2;

    if-nez p1, :cond_0

    .line 253
    iget-boolean p2, p0, Lyads/zy3;->N:Z

    if-eqz p2, :cond_0

    .line 254
    iget-object p1, p0, Lyads/zy3;->v:Lyads/fx5;

    invoke-virtual {p1}, Lyads/fx5;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyads/vz2;

    :cond_0
    if-eqz p1, :cond_1

    .line 255
    iput-object p1, p0, Lyads/zy3;->C:Lyads/vz2;

    goto :goto_0

    .line 256
    :cond_1
    iget-boolean p1, p0, Lyads/zy3;->N:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lyads/zy3;->C:Lyads/vz2;

    if-eqz p1, :cond_2

    .line 257
    :goto_0
    iget-object p2, p0, Lyads/zy3;->M:Landroid/media/MediaFormat;

    invoke-virtual {p0, p1, p2}, Lyads/zy3;->a(Lyads/vz2;Landroid/media/MediaFormat;)V

    const/4 p1, 0x0

    .line 258
    iput-boolean p1, p0, Lyads/zy3;->N:Z

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    .line 259
    monitor-exit v0

    throw p0
.end method

.method public abstract b(Lyads/mi0;)V
.end method

.method public final b(JJ)Z
    .locals 16

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lyads/zy3;->x0:Z

    const/4 v15, 0x0

    if-nez v1, :cond_12

    iget-object v1, v0, Lyads/zy3;->u:Lyads/us;

    iget v9, v1, Lyads/us;->j:I

    const/4 v2, 0x4

    if-lez v9, :cond_1

    iget-object v6, v1, Lyads/mi0;->d:Ljava/nio/ByteBuffer;

    iget v7, v0, Lyads/zy3;->g0:I

    iget-wide v10, v1, Lyads/mi0;->f:J

    const/high16 v3, -0x80000000

    invoke-virtual {v1, v3}, Lyads/ev;->b(I)Z

    move-result v12

    iget-object v1, v0, Lyads/zy3;->u:Lyads/us;

    invoke-virtual {v1, v2}, Lyads/ev;->b(I)Z

    move-result v13

    iget-object v14, v0, Lyads/zy3;->C:Lyads/vz2;

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    invoke-virtual/range {v0 .. v14}, Lyads/zy3;->a(JJLyads/qy3;Ljava/nio/ByteBuffer;IIIJZZLyads/vz2;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lyads/zy3;->u:Lyads/us;

    iget-wide v1, v1, Lyads/us;->i:J

    invoke-virtual {v0, v1, v2}, Lyads/zy3;->a(J)V

    iget-object v1, v0, Lyads/zy3;->u:Lyads/us;

    invoke-virtual {v1}, Lyads/us;->b()V

    goto :goto_0

    :cond_0
    return v15

    :cond_1
    :goto_0
    iget-boolean v1, v0, Lyads/zy3;->w0:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iput-boolean v2, v0, Lyads/zy3;->x0:Z

    return v15

    :cond_2
    iget-boolean v1, v0, Lyads/zy3;->l0:Z

    if-eqz v1, :cond_4

    iget-object v1, v0, Lyads/zy3;->u:Lyads/us;

    iget-object v3, v0, Lyads/zy3;->t:Lyads/mi0;

    invoke-virtual {v1, v3}, Lyads/us;->a(Lyads/mi0;)Z

    move-result v1

    if-eqz v1, :cond_3

    iput-boolean v15, v0, Lyads/zy3;->l0:Z

    goto :goto_1

    :cond_3
    invoke-static {}, Lud;->g()V

    return v15

    :cond_4
    :goto_1
    iget-boolean v1, v0, Lyads/zy3;->m0:Z

    if-eqz v1, :cond_6

    iget-object v1, v0, Lyads/zy3;->u:Lyads/us;

    iget v3, v1, Lyads/us;->j:I

    if-lez v3, :cond_5

    return v2

    :cond_5
    iput-boolean v15, v0, Lyads/zy3;->m0:Z

    invoke-virtual {v1}, Lyads/us;->b()V

    iget-object v1, v0, Lyads/zy3;->t:Lyads/mi0;

    invoke-virtual {v1}, Lyads/mi0;->b()V

    iput-boolean v15, v0, Lyads/zy3;->l0:Z

    iput-boolean v15, v0, Lyads/zy3;->k0:Z

    iput-boolean v15, v0, Lyads/zy3;->m0:Z

    invoke-virtual {v0}, Lyads/zy3;->q()V

    iget-boolean v1, v0, Lyads/zy3;->k0:Z

    if-nez v1, :cond_6

    return v15

    :cond_6
    iget-boolean v1, v0, Lyads/zy3;->w0:Z

    if-nez v1, :cond_11

    iget-object v1, v0, Lyads/gs;->c:Lyads/a03;

    const/4 v3, 0x0

    iput-object v3, v1, Lyads/a03;->a:Lyads/eo2;

    iput-object v3, v1, Lyads/a03;->b:Lyads/vz2;

    iget-object v4, v0, Lyads/zy3;->t:Lyads/mi0;

    invoke-virtual {v4}, Lyads/mi0;->b()V

    :cond_7
    iget-object v4, v0, Lyads/zy3;->t:Lyads/mi0;

    invoke-virtual {v4}, Lyads/mi0;->b()V

    iget-object v4, v0, Lyads/zy3;->t:Lyads/mi0;

    invoke-virtual {v0, v1, v4, v15}, Lyads/gs;->a(Lyads/a03;Lyads/mi0;I)I

    move-result v4

    const/4 v5, -0x5

    if-eq v4, v5, :cond_c

    const/4 v5, -0x4

    if-eq v4, v5, :cond_9

    const/4 v1, -0x3

    if-ne v4, v1, :cond_8

    goto :goto_2

    :cond_8
    invoke-static {}, Lud;->g()V

    return v15

    :cond_9
    iget-object v4, v0, Lyads/zy3;->t:Lyads/mi0;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lyads/ev;->b(I)Z

    move-result v4

    if-eqz v4, :cond_a

    iput-boolean v2, v0, Lyads/zy3;->w0:Z

    goto :goto_2

    :cond_a
    iget-boolean v4, v0, Lyads/zy3;->y0:Z

    if-eqz v4, :cond_b

    iget-object v4, v0, Lyads/zy3;->B:Lyads/vz2;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v4, v0, Lyads/zy3;->C:Lyads/vz2;

    invoke-virtual {v0, v4, v3}, Lyads/zy3;->a(Lyads/vz2;Landroid/media/MediaFormat;)V

    iput-boolean v15, v0, Lyads/zy3;->y0:Z

    :cond_b
    iget-object v4, v0, Lyads/zy3;->t:Lyads/mi0;

    invoke-virtual {v4}, Lyads/mi0;->c()V

    iget-object v4, v0, Lyads/zy3;->u:Lyads/us;

    iget-object v6, v0, Lyads/zy3;->t:Lyads/mi0;

    invoke-virtual {v4, v6}, Lyads/us;->a(Lyads/mi0;)Z

    move-result v4

    if-nez v4, :cond_7

    iput-boolean v2, v0, Lyads/zy3;->l0:Z

    goto :goto_2

    :cond_c
    invoke-virtual {v0, v1}, Lyads/zy3;->a(Lyads/a03;)Lyads/oi0;

    :goto_2
    iget-object v1, v0, Lyads/zy3;->u:Lyads/us;

    iget v3, v1, Lyads/us;->j:I

    if-lez v3, :cond_d

    invoke-virtual {v1}, Lyads/mi0;->c()V

    :cond_d
    iget-object v1, v0, Lyads/zy3;->u:Lyads/us;

    iget v1, v1, Lyads/us;->j:I

    if-lez v1, :cond_e

    goto :goto_3

    :cond_e
    iget-boolean v1, v0, Lyads/zy3;->w0:Z

    if-nez v1, :cond_10

    iget-boolean v0, v0, Lyads/zy3;->m0:Z

    if-eqz v0, :cond_f

    goto :goto_3

    :cond_f
    return v15

    :cond_10
    :goto_3
    return v2

    :cond_11
    invoke-static {}, Lud;->g()V

    return v15

    :cond_12
    invoke-static {}, Lud;->g()V

    return v15
.end method

.method public b(Lyads/vz2;)Z
    .locals 0

    .line 249
    const/4 p0, 0x0

    return p0
.end method

.method public final c(I)Z
    .locals 4

    .line 381
    iget-object v0, p0, Lyads/gs;->c:Lyads/a03;

    const/4 v1, 0x0

    .line 382
    iput-object v1, v0, Lyads/a03;->a:Lyads/eo2;

    .line 383
    iput-object v1, v0, Lyads/a03;->b:Lyads/vz2;

    .line 384
    iget-object v1, p0, Lyads/zy3;->r:Lyads/mi0;

    invoke-virtual {v1}, Lyads/mi0;->b()V

    .line 385
    iget-object v1, p0, Lyads/zy3;->r:Lyads/mi0;

    const/4 v2, 0x4

    or-int/2addr p1, v2

    invoke-virtual {p0, v0, v1, p1}, Lyads/gs;->a(Lyads/a03;Lyads/mi0;I)I

    move-result p1

    const/4 v1, -0x5

    const/4 v3, 0x1

    if-ne p1, v1, :cond_0

    .line 386
    invoke-virtual {p0, v0}, Lyads/zy3;->a(Lyads/a03;)Lyads/oi0;

    return v3

    :cond_0
    const/4 v0, -0x4

    if-ne p1, v0, :cond_1

    .line 387
    iget-object p1, p0, Lyads/zy3;->r:Lyads/mi0;

    .line 388
    invoke-virtual {p1, v2}, Lyads/ev;->b(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 389
    iput-boolean v3, p0, Lyads/zy3;->w0:Z

    .line 390
    invoke-virtual {p0}, Lyads/zy3;->s()V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final c(JJ)Z
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Lyads/zy3;->g0:I

    const/4 v15, 0x1

    const/4 v2, 0x0

    if-ltz v1, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-boolean v1, v0, Lyads/zy3;->X:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lyads/zy3;->s0:Z

    if-eqz v1, :cond_2

    :try_start_0
    iget-object v1, v0, Lyads/zy3;->K:Lyads/qy3;

    iget-object v3, v0, Lyads/zy3;->x:Landroid/media/MediaCodec$BufferInfo;

    invoke-interface {v1, v3}, Lyads/qy3;->a(Landroid/media/MediaCodec$BufferInfo;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {v0}, Lyads/zy3;->s()V

    iget-boolean v1, v0, Lyads/zy3;->x0:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lyads/zy3;->t()V

    :cond_1
    return v2

    :cond_2
    iget-object v1, v0, Lyads/zy3;->K:Lyads/qy3;

    iget-object v3, v0, Lyads/zy3;->x:Landroid/media/MediaCodec$BufferInfo;

    invoke-interface {v1, v3}, Lyads/qy3;->a(Landroid/media/MediaCodec$BufferInfo;)I

    move-result v1

    :goto_0
    if-gez v1, :cond_8

    const/4 v3, -0x2

    if-ne v1, v3, :cond_5

    iput-boolean v15, v0, Lyads/zy3;->t0:Z

    iget-object v1, v0, Lyads/zy3;->K:Lyads/qy3;

    invoke-interface {v1}, Lyads/qy3;->a()Landroid/media/MediaFormat;

    move-result-object v1

    iget v2, v0, Lyads/zy3;->S:I

    if-eqz v2, :cond_3

    const-string v2, "width"

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_3

    const-string v2, "height"

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_3

    iput-boolean v15, v0, Lyads/zy3;->b0:Z

    goto :goto_1

    :cond_3
    iget-boolean v2, v0, Lyads/zy3;->Z:Z

    if-eqz v2, :cond_4

    const-string v2, "channel-count"

    invoke-virtual {v1, v2, v15}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_4
    iput-object v1, v0, Lyads/zy3;->M:Landroid/media/MediaFormat;

    iput-boolean v15, v0, Lyads/zy3;->N:Z

    :goto_1
    return v15

    :cond_5
    iget-boolean v1, v0, Lyads/zy3;->c0:Z

    if-eqz v1, :cond_7

    iget-boolean v1, v0, Lyads/zy3;->w0:Z

    if-nez v1, :cond_6

    iget v1, v0, Lyads/zy3;->p0:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_7

    :cond_6
    invoke-virtual {v0}, Lyads/zy3;->s()V

    :cond_7
    return v2

    :cond_8
    iget-boolean v3, v0, Lyads/zy3;->b0:Z

    if-eqz v3, :cond_9

    iput-boolean v2, v0, Lyads/zy3;->b0:Z

    iget-object v0, v0, Lyads/zy3;->K:Lyads/qy3;

    invoke-interface {v0, v1, v2}, Lyads/qy3;->a(IZ)V

    return v15

    :cond_9
    iget-object v3, v0, Lyads/zy3;->x:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v4, :cond_a

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_a

    invoke-virtual {v0}, Lyads/zy3;->s()V

    return v2

    :cond_a
    iput v1, v0, Lyads/zy3;->g0:I

    iget-object v3, v0, Lyads/zy3;->K:Lyads/qy3;

    invoke-interface {v3, v1}, Lyads/qy3;->c(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, v0, Lyads/zy3;->h0:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_b

    iget-object v3, v0, Lyads/zy3;->x:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v1, v0, Lyads/zy3;->h0:Ljava/nio/ByteBuffer;

    iget-object v3, v0, Lyads/zy3;->x:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v4, v3

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :cond_b
    iget-boolean v1, v0, Lyads/zy3;->Y:Z

    if-eqz v1, :cond_c

    iget-object v1, v0, Lyads/zy3;->x:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v3, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_c

    iget v3, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_c

    iget-wide v3, v0, Lyads/zy3;->u0:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v3, v5

    if-eqz v5, :cond_c

    iput-wide v3, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    :cond_c
    iget-object v1, v0, Lyads/zy3;->x:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v3, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v1, v0, Lyads/zy3;->w:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v5, v2

    :goto_2
    if-ge v5, v1, :cond_e

    iget-object v6, v0, Lyads/zy3;->w:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v6, v6, v3

    if-nez v6, :cond_d

    iget-object v1, v0, Lyads/zy3;->w:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v1, v15

    goto :goto_3

    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_e
    move v1, v2

    :goto_3
    iput-boolean v1, v0, Lyads/zy3;->i0:Z

    iget-wide v3, v0, Lyads/zy3;->v0:J

    iget-object v1, v0, Lyads/zy3;->x:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v5, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_f

    move v1, v15

    goto :goto_4

    :cond_f
    move v1, v2

    :goto_4
    iput-boolean v1, v0, Lyads/zy3;->j0:Z

    invoke-virtual {v0, v5, v6}, Lyads/zy3;->b(J)V

    :goto_5
    iget-boolean v1, v0, Lyads/zy3;->X:Z

    if-eqz v1, :cond_11

    iget-boolean v1, v0, Lyads/zy3;->s0:Z

    if-eqz v1, :cond_11

    :try_start_1
    iget-object v5, v0, Lyads/zy3;->K:Lyads/qy3;

    iget-object v6, v0, Lyads/zy3;->h0:Ljava/nio/ByteBuffer;

    iget v7, v0, Lyads/zy3;->g0:I

    iget-object v1, v0, Lyads/zy3;->x:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-wide v10, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v12, v0, Lyads/zy3;->i0:Z

    iget-boolean v13, v0, Lyads/zy3;->j0:Z

    iget-object v14, v0, Lyads/zy3;->C:Lyads/vz2;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v9, 0x1

    move-wide/from16 v3, p3

    move/from16 v16, v2

    move-wide/from16 v1, p1

    :try_start_2
    invoke-virtual/range {v0 .. v14}, Lyads/zy3;->a(JJLyads/qy3;Ljava/nio/ByteBuffer;IIIJZZLyads/vz2;)Z

    move-result v1
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    :catch_1
    move/from16 v16, v2

    :catch_2
    invoke-virtual {v0}, Lyads/zy3;->s()V

    iget-boolean v1, v0, Lyads/zy3;->x0:Z

    if-eqz v1, :cond_10

    invoke-virtual {v0}, Lyads/zy3;->t()V

    :cond_10
    return v16

    :cond_11
    move/from16 v16, v2

    iget-object v5, v0, Lyads/zy3;->K:Lyads/qy3;

    iget-object v6, v0, Lyads/zy3;->h0:Ljava/nio/ByteBuffer;

    iget v7, v0, Lyads/zy3;->g0:I

    iget-object v1, v0, Lyads/zy3;->x:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-wide v10, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v12, v0, Lyads/zy3;->i0:Z

    iget-boolean v13, v0, Lyads/zy3;->j0:Z

    iget-object v14, v0, Lyads/zy3;->C:Lyads/vz2;

    const/4 v9, 0x1

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    invoke-virtual/range {v0 .. v14}, Lyads/zy3;->a(JJLyads/qy3;Ljava/nio/ByteBuffer;IIIJZZLyads/vz2;)Z

    move-result v1

    :goto_6
    if-eqz v1, :cond_14

    iget-object v1, v0, Lyads/zy3;->x:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v1, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v0, v1, v2}, Lyads/zy3;->a(J)V

    iget-object v1, v0, Lyads/zy3;->x:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_12

    move v2, v15

    goto :goto_7

    :cond_12
    move/from16 v2, v16

    :goto_7
    const/4 v1, -0x1

    iput v1, v0, Lyads/zy3;->g0:I

    const/4 v1, 0x0

    iput-object v1, v0, Lyads/zy3;->h0:Ljava/nio/ByteBuffer;

    if-nez v2, :cond_13

    return v15

    :cond_13
    invoke-virtual {v0}, Lyads/zy3;->s()V

    :cond_14
    return v16
.end method

.method public final c(Lyads/vz2;)Z
    .locals 5

    .line 391
    sget p1, Lyads/u56;->a:I

    const/16 v0, 0x17

    const/4 v1, 0x1

    if-ge p1, v0, :cond_0

    return v1

    .line 392
    :cond_0
    iget-object p1, p0, Lyads/zy3;->K:Lyads/qy3;

    if-eqz p1, :cond_7

    iget p1, p0, Lyads/zy3;->q0:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_7

    .line 393
    iget p1, p0, Lyads/gs;->g:I

    if-nez p1, :cond_1

    goto :goto_2

    .line 394
    :cond_1
    iget p1, p0, Lyads/zy3;->J:F

    .line 395
    iget-object v2, p0, Lyads/gs;->i:[Lyads/vz2;

    .line 396
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 397
    invoke-virtual {p0, p1, v2}, Lyads/zy3;->a(F[Lyads/vz2;)F

    move-result p1

    .line 398
    iget v2, p0, Lyads/zy3;->O:F

    cmpl-float v3, v2, p1

    if-nez v3, :cond_2

    return v1

    :cond_2
    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v4, p1, v3

    if-nez v4, :cond_4

    .line 399
    iget-boolean p1, p0, Lyads/zy3;->r0:Z

    if-eqz p1, :cond_3

    .line 400
    iput v1, p0, Lyads/zy3;->p0:I

    .line 401
    iput v0, p0, Lyads/zy3;->q0:I

    goto :goto_0

    .line 402
    :cond_3
    invoke-virtual {p0}, Lyads/zy3;->t()V

    .line 403
    invoke-virtual {p0}, Lyads/zy3;->q()V

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_4
    cmpl-float v0, v2, v3

    if-nez v0, :cond_6

    .line 404
    iget v0, p0, Lyads/zy3;->q:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_5

    goto :goto_1

    :cond_5
    return v1

    .line 405
    :cond_6
    :goto_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 406
    const-string v2, "operating-rate"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 407
    iget-object v2, p0, Lyads/zy3;->K:Lyads/qy3;

    invoke-interface {v2, v0}, Lyads/qy3;->a(Landroid/os/Bundle;)V

    .line 408
    iput p1, p0, Lyads/zy3;->O:F

    :cond_7
    :goto_2
    return v1
.end method

.method public e()Z
    .locals 0

    iget-boolean p0, p0, Lyads/zy3;->x0:Z

    return p0
.end method

.method public f()Z
    .locals 4

    iget-object v0, p0, Lyads/zy3;->B:Lyads/vz2;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lyads/gs;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lyads/gs;->l:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lyads/gs;->h:Lyads/mc5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Lyads/mc5;->c()Z

    move-result v0

    :goto_0
    if-nez v0, :cond_2

    iget v0, p0, Lyads/zy3;->g0:I

    if-ltz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-wide v0, p0, Lyads/zy3;->e0:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lyads/zy3;->e0:J

    cmp-long p0, v0, v2

    if-gez p0, :cond_3

    :cond_2
    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public final k()I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public final l()Z
    .locals 2

    iget-boolean v0, p0, Lyads/zy3;->r0:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iput v1, p0, Lyads/zy3;->p0:I

    iget-boolean v0, p0, Lyads/zy3;->U:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lyads/zy3;->W:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lyads/zy3;->q0:I

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x3

    iput v0, p0, Lyads/zy3;->q0:I

    const/4 p0, 0x0

    return p0

    :cond_2
    invoke-virtual {p0}, Lyads/zy3;->x()V

    :goto_1
    return v1
.end method

.method public final m()Z
    .locals 31

    move-object/from16 v1, p0

    iget-object v0, v1, Lyads/zy3;->K:Lyads/qy3;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget v3, v1, Lyads/zy3;->p0:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    iget-boolean v3, v1, Lyads/zy3;->w0:Z

    if-eqz v3, :cond_1

    :cond_0
    move v14, v2

    goto/16 :goto_10

    :cond_1
    iget v3, v1, Lyads/zy3;->f0:I

    if-gez v3, :cond_3

    invoke-interface {v0}, Lyads/qy3;->b()I

    move-result v0

    iput v0, v1, Lyads/zy3;->f0:I

    if-gez v0, :cond_2

    return v2

    :cond_2
    iget-object v3, v1, Lyads/zy3;->s:Lyads/mi0;

    iget-object v5, v1, Lyads/zy3;->K:Lyads/qy3;

    invoke-interface {v5, v0}, Lyads/qy3;->b(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v3, Lyads/mi0;->d:Ljava/nio/ByteBuffer;

    iget-object v0, v1, Lyads/zy3;->s:Lyads/mi0;

    invoke-virtual {v0}, Lyads/mi0;->b()V

    :cond_3
    iget v0, v1, Lyads/zy3;->p0:I

    const/4 v3, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v0, v6, :cond_5

    iget-boolean v0, v1, Lyads/zy3;->c0:Z

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    iput-boolean v6, v1, Lyads/zy3;->s0:Z

    iget-object v7, v1, Lyads/zy3;->K:Lyads/qy3;

    iget v8, v1, Lyads/zy3;->f0:I

    const-wide/16 v10, 0x0

    const/4 v12, 0x4

    const/4 v9, 0x0

    invoke-interface/range {v7 .. v12}, Lyads/qy3;->a(IIJI)V

    iput v3, v1, Lyads/zy3;->f0:I

    iget-object v0, v1, Lyads/zy3;->s:Lyads/mi0;

    iput-object v5, v0, Lyads/mi0;->d:Ljava/nio/ByteBuffer;

    :goto_0
    iput v4, v1, Lyads/zy3;->p0:I

    return v2

    :cond_5
    iget-boolean v0, v1, Lyads/zy3;->a0:Z

    if-eqz v0, :cond_6

    iput-boolean v2, v1, Lyads/zy3;->a0:Z

    iget-object v0, v1, Lyads/zy3;->s:Lyads/mi0;

    iget-object v0, v0, Lyads/mi0;->d:Ljava/nio/ByteBuffer;

    sget-object v2, Lyads/zy3;->F0:[B

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v7, v1, Lyads/zy3;->K:Lyads/qy3;

    iget v8, v1, Lyads/zy3;->f0:I

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/16 v9, 0x26

    invoke-interface/range {v7 .. v12}, Lyads/qy3;->a(IIJI)V

    iput v3, v1, Lyads/zy3;->f0:I

    iget-object v0, v1, Lyads/zy3;->s:Lyads/mi0;

    iput-object v5, v0, Lyads/mi0;->d:Ljava/nio/ByteBuffer;

    iput-boolean v6, v1, Lyads/zy3;->r0:Z

    return v6

    :cond_6
    iget v0, v1, Lyads/zy3;->o0:I

    if-ne v0, v6, :cond_8

    move v0, v2

    :goto_1
    iget-object v7, v1, Lyads/zy3;->L:Lyads/vz2;

    iget-object v7, v7, Lyads/vz2;->o:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v0, v7, :cond_7

    iget-object v7, v1, Lyads/zy3;->L:Lyads/vz2;

    iget-object v7, v7, Lyads/vz2;->o:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    iget-object v8, v1, Lyads/zy3;->s:Lyads/mi0;

    iget-object v8, v8, Lyads/mi0;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v8, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    iput v4, v1, Lyads/zy3;->o0:I

    :cond_8
    iget-object v0, v1, Lyads/zy3;->s:Lyads/mi0;

    iget-object v0, v0, Lyads/mi0;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    iget-object v7, v1, Lyads/gs;->c:Lyads/a03;

    iput-object v5, v7, Lyads/a03;->a:Lyads/eo2;

    iput-object v5, v7, Lyads/a03;->b:Lyads/vz2;

    :try_start_0
    iget-object v8, v1, Lyads/zy3;->s:Lyads/mi0;

    invoke-virtual {v1, v7, v8, v2}, Lyads/gs;->a(Lyads/a03;Lyads/mi0;I)I

    move-result v8
    :try_end_0
    .catch Lyads/li0; {:try_start_0 .. :try_end_0} :catch_2

    invoke-virtual {v1}, Lyads/gs;->d()Z

    move-result v9

    if-eqz v9, :cond_9

    iget-wide v9, v1, Lyads/zy3;->u0:J

    iput-wide v9, v1, Lyads/zy3;->v0:J

    :cond_9
    const/4 v9, -0x3

    if-ne v8, v9, :cond_a

    return v2

    :cond_a
    const/4 v9, -0x5

    if-ne v8, v9, :cond_c

    iget v0, v1, Lyads/zy3;->o0:I

    if-ne v0, v4, :cond_b

    iget-object v0, v1, Lyads/zy3;->s:Lyads/mi0;

    invoke-virtual {v0}, Lyads/mi0;->b()V

    iput v6, v1, Lyads/zy3;->o0:I

    :cond_b
    invoke-virtual {v1, v7}, Lyads/zy3;->a(Lyads/a03;)Lyads/oi0;

    return v6

    :cond_c
    iget-object v7, v1, Lyads/zy3;->s:Lyads/mi0;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lyads/ev;->b(I)Z

    move-result v7

    const/16 v14, 0xa

    const/16 v15, 0x8

    const/4 v9, 0x7

    if-eqz v7, :cond_13

    iget v0, v1, Lyads/zy3;->o0:I

    if-ne v0, v4, :cond_d

    iget-object v0, v1, Lyads/zy3;->s:Lyads/mi0;

    invoke-virtual {v0}, Lyads/mi0;->b()V

    iput v6, v1, Lyads/zy3;->o0:I

    :cond_d
    iput-boolean v6, v1, Lyads/zy3;->w0:Z

    iget-boolean v0, v1, Lyads/zy3;->r0:Z

    if-nez v0, :cond_e

    invoke-virtual {v1}, Lyads/zy3;->s()V

    return v2

    :cond_e
    :try_start_1
    iget-boolean v0, v1, Lyads/zy3;->c0:Z

    if-eqz v0, :cond_f

    goto :goto_2

    :cond_f
    iput-boolean v6, v1, Lyads/zy3;->s0:Z

    iget-object v0, v1, Lyads/zy3;->K:Lyads/qy3;

    iget v6, v1, Lyads/zy3;->f0:I

    const-wide/16 v19, 0x0

    const/16 v21, 0x4

    const/16 v18, 0x0

    move-object/from16 v16, v0

    move/from16 v17, v6

    invoke-interface/range {v16 .. v21}, Lyads/qy3;->a(IIJI)V

    iput v3, v1, Lyads/zy3;->f0:I

    iget-object v0, v1, Lyads/zy3;->s:Lyads/mi0;

    iput-object v5, v0, Lyads/mi0;->d:Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    return v2

    :catch_0
    move-exception v0

    iget-object v3, v1, Lyads/zy3;->B:Lyads/vz2;

    invoke-virtual {v0}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    move-result v5

    sget v6, Lyads/u56;->a:I

    if-eq v5, v4, :cond_12

    if-eq v5, v8, :cond_12

    if-eq v5, v14, :cond_11

    if-eq v5, v9, :cond_12

    if-eq v5, v15, :cond_10

    packed-switch v5, :pswitch_data_0

    packed-switch v5, :pswitch_data_1

    const/16 v9, 0x1776

    goto :goto_3

    :pswitch_0
    const/16 v9, 0x1772

    goto :goto_3

    :cond_10
    :pswitch_1
    const/16 v9, 0x1773

    goto :goto_3

    :cond_11
    :pswitch_2
    const/16 v9, 0x1774

    goto :goto_3

    :cond_12
    :pswitch_3
    const/16 v9, 0x1775

    :goto_3
    invoke-virtual {v1, v0, v3, v2, v9}, Lyads/gs;->a(Ljava/lang/Exception;Lyads/vz2;ZI)Lyads/up2;

    move-result-object v0

    throw v0

    :cond_13
    iget-boolean v7, v1, Lyads/zy3;->r0:Z

    if-nez v7, :cond_15

    iget-object v7, v1, Lyads/zy3;->s:Lyads/mi0;

    invoke-virtual {v7, v6}, Lyads/ev;->b(I)Z

    move-result v7

    if-nez v7, :cond_15

    iget-object v0, v1, Lyads/zy3;->s:Lyads/mi0;

    invoke-virtual {v0}, Lyads/mi0;->b()V

    iget v0, v1, Lyads/zy3;->o0:I

    if-ne v0, v4, :cond_14

    iput v6, v1, Lyads/zy3;->o0:I

    :cond_14
    return v6

    :cond_15
    iget-object v7, v1, Lyads/zy3;->s:Lyads/mi0;

    const/high16 v10, 0x40000000    # 2.0f

    invoke-virtual {v7, v10}, Lyads/ev;->b(I)Z

    move-result v7

    if-eqz v7, :cond_18

    iget-object v10, v1, Lyads/zy3;->s:Lyads/mi0;

    iget-object v10, v10, Lyads/mi0;->c:Lyads/ca0;

    if-nez v0, :cond_16

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_4

    :cond_16
    iget-object v11, v10, Lyads/ca0;->d:[I

    if-nez v11, :cond_17

    new-array v11, v6, [I

    iput-object v11, v10, Lyads/ca0;->d:[I

    iget-object v10, v10, Lyads/ca0;->i:Landroid/media/MediaCodec$CryptoInfo;

    iput-object v11, v10, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    :cond_17
    aget v10, v11, v2

    add-int/2addr v10, v0

    aput v10, v11, v2

    :cond_18
    :goto_4
    iget-boolean v0, v1, Lyads/zy3;->T:Z

    if-eqz v0, :cond_1e

    if-nez v7, :cond_1e

    iget-object v0, v1, Lyads/zy3;->s:Lyads/mi0;

    iget-object v0, v0, Lyads/mi0;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v10

    move v11, v2

    move v12, v11

    :goto_5
    add-int/lit8 v13, v11, 0x1

    if-ge v13, v10, :cond_1c

    invoke-virtual {v0, v11}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v15

    and-int/lit16 v15, v15, 0xff

    const/4 v14, 0x3

    if-ne v12, v14, :cond_19

    if-ne v15, v6, :cond_1a

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v22

    move/from16 v23, v14

    and-int/lit8 v14, v22, 0x1f

    if-ne v14, v9, :cond_1a

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v12

    add-int/lit8 v11, v11, -0x3

    invoke-virtual {v12, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v12, v10}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v0, v12}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_6

    :cond_19
    if-nez v15, :cond_1a

    add-int/lit8 v12, v12, 0x1

    :cond_1a
    if-eqz v15, :cond_1b

    move v12, v2

    :cond_1b
    move v11, v13

    const/16 v14, 0xa

    const/16 v15, 0x8

    goto :goto_5

    :cond_1c
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :goto_6
    iget-object v0, v1, Lyads/zy3;->s:Lyads/mi0;

    iget-object v0, v0, Lyads/mi0;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    if-nez v0, :cond_1d

    return v6

    :cond_1d
    iput-boolean v2, v1, Lyads/zy3;->T:Z

    :cond_1e
    iget-object v0, v1, Lyads/zy3;->s:Lyads/mi0;

    iget-wide v10, v0, Lyads/mi0;->f:J

    iget-object v12, v1, Lyads/zy3;->d0:Lyads/tv;

    if-eqz v12, :cond_23

    iget-object v13, v1, Lyads/zy3;->B:Lyads/vz2;

    iget-wide v14, v12, Lyads/tv;->b:J

    const-wide/16 v4, 0x0

    cmp-long v14, v14, v4

    if-nez v14, :cond_1f

    iput-wide v10, v12, Lyads/tv;->a:J

    :cond_1f
    iget-boolean v14, v12, Lyads/tv;->c:Z

    const-wide/32 v24, 0xf4240

    const-wide/16 v26, 0x211

    if-eqz v14, :cond_20

    :goto_7
    move v0, v7

    goto :goto_9

    :cond_20
    iget-object v10, v0, Lyads/mi0;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v11, v2

    move v14, v11

    :goto_8
    if-ge v11, v8, :cond_21

    shl-int/lit8 v14, v14, 0x8

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v15

    and-int/lit16 v15, v15, 0xff

    or-int/2addr v14, v15

    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    :cond_21
    invoke-static {v14}, Lyads/bb4;->b(I)I

    move-result v10

    if-ne v10, v3, :cond_22

    iput-boolean v6, v12, Lyads/tv;->c:Z

    iput-wide v4, v12, Lyads/tv;->b:J

    iget-wide v10, v0, Lyads/mi0;->f:J

    iput-wide v10, v12, Lyads/tv;->a:J

    const-string v10, "C2Mp3TimestampTracker"

    const-string v11, "MPEG audio header is invalid."

    invoke-static {v10, v11}, Lyads/sv3;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v10, v0, Lyads/mi0;->f:J

    goto :goto_7

    :cond_22
    iget v0, v13, Lyads/vz2;->A:I

    int-to-long v13, v0

    iget-wide v8, v12, Lyads/tv;->a:J

    move v0, v7

    iget-wide v6, v12, Lyads/tv;->b:J

    sub-long v6, v6, v26

    mul-long v6, v6, v24

    div-long/2addr v6, v13

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    add-long/2addr v6, v8

    iget-wide v8, v12, Lyads/tv;->b:J

    int-to-long v10, v10

    add-long/2addr v8, v10

    iput-wide v8, v12, Lyads/tv;->b:J

    move-wide v10, v6

    :goto_9
    iget-wide v6, v1, Lyads/zy3;->u0:J

    iget-object v8, v1, Lyads/zy3;->d0:Lyads/tv;

    iget-object v9, v1, Lyads/zy3;->B:Lyads/vz2;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v9, v9, Lyads/vz2;->A:I

    int-to-long v12, v9

    iget-wide v2, v8, Lyads/tv;->a:J

    move-wide/from16 v29, v10

    iget-wide v9, v8, Lyads/tv;->b:J

    sub-long v9, v9, v26

    mul-long v9, v9, v24

    div-long/2addr v9, v12

    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    add-long/2addr v4, v2

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v1, Lyads/zy3;->u0:J

    move-wide/from16 v7, v29

    goto :goto_a

    :cond_23
    move v0, v7

    move-wide v7, v10

    :goto_a
    iget-object v2, v1, Lyads/zy3;->s:Lyads/mi0;

    const/high16 v3, -0x80000000

    invoke-virtual {v2, v3}, Lyads/ev;->b(I)Z

    move-result v2

    if-eqz v2, :cond_24

    iget-object v2, v1, Lyads/zy3;->w:Ljava/util/ArrayList;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_24
    iget-boolean v2, v1, Lyads/zy3;->y0:Z

    if-eqz v2, :cond_25

    iget-object v2, v1, Lyads/zy3;->v:Lyads/fx5;

    iget-object v3, v1, Lyads/zy3;->B:Lyads/vz2;

    invoke-virtual {v2, v3, v7, v8}, Lyads/fx5;->a(Ljava/lang/Object;J)V

    const/4 v14, 0x0

    iput-boolean v14, v1, Lyads/zy3;->y0:Z

    :cond_25
    iget-wide v2, v1, Lyads/zy3;->u0:J

    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v1, Lyads/zy3;->u0:J

    iget-object v2, v1, Lyads/zy3;->s:Lyads/mi0;

    invoke-virtual {v2}, Lyads/mi0;->c()V

    iget-object v2, v1, Lyads/zy3;->s:Lyads/mi0;

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Lyads/ev;->b(I)Z

    move-result v2

    if-eqz v2, :cond_26

    iget-object v2, v1, Lyads/zy3;->s:Lyads/mi0;

    invoke-virtual {v1, v2}, Lyads/zy3;->a(Lyads/mi0;)V

    :cond_26
    iget-object v2, v1, Lyads/zy3;->s:Lyads/mi0;

    invoke-virtual {v1, v2}, Lyads/zy3;->b(Lyads/mi0;)V

    iget-object v4, v1, Lyads/zy3;->K:Lyads/qy3;

    if-eqz v0, :cond_27

    :try_start_2
    iget v0, v1, Lyads/zy3;->f0:I

    iget-object v2, v1, Lyads/zy3;->s:Lyads/mi0;

    iget-object v2, v2, Lyads/mi0;->c:Lyads/ca0;

    invoke-interface {v4, v0, v2, v7, v8}, Lyads/qy3;->a(ILyads/ca0;J)V

    :goto_b
    const/4 v9, -0x1

    goto :goto_c

    :catch_1
    move-exception v0

    goto :goto_d

    :cond_27
    iget v5, v1, Lyads/zy3;->f0:I

    iget-object v0, v1, Lyads/zy3;->s:Lyads/mi0;

    iget-object v0, v0, Lyads/mi0;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v6

    const/4 v9, 0x0

    invoke-interface/range {v4 .. v9}, Lyads/qy3;->a(IIJI)V
    :try_end_2
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_b

    :goto_c
    iput v9, v1, Lyads/zy3;->f0:I

    iget-object v0, v1, Lyads/zy3;->s:Lyads/mi0;

    const/4 v2, 0x0

    iput-object v2, v0, Lyads/mi0;->d:Ljava/nio/ByteBuffer;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lyads/zy3;->r0:Z

    const/4 v14, 0x0

    iput v14, v1, Lyads/zy3;->o0:I

    iget-object v0, v1, Lyads/zy3;->B0:Lyads/ji0;

    iget v1, v0, Lyads/ji0;->c:I

    add-int/2addr v1, v2

    iput v1, v0, Lyads/ji0;->c:I

    return v2

    :goto_d
    iget-object v2, v1, Lyads/zy3;->B:Lyads/vz2;

    invoke-virtual {v0}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    move-result v3

    sget v4, Lyads/u56;->a:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2a

    const/4 v15, 0x4

    if-eq v3, v15, :cond_2a

    const/16 v4, 0xa

    if-eq v3, v4, :cond_29

    const/4 v4, 0x7

    if-eq v3, v4, :cond_2a

    const/16 v4, 0x8

    if-eq v3, v4, :cond_28

    packed-switch v3, :pswitch_data_2

    packed-switch v3, :pswitch_data_3

    const/16 v9, 0x1776

    :goto_e
    const/4 v14, 0x0

    goto :goto_f

    :pswitch_4
    const/16 v9, 0x1772

    goto :goto_e

    :cond_28
    :pswitch_5
    const/16 v9, 0x1773

    goto :goto_e

    :cond_29
    :pswitch_6
    const/16 v9, 0x1774

    goto :goto_e

    :cond_2a
    :pswitch_7
    const/16 v9, 0x1775

    goto :goto_e

    :goto_f
    invoke-virtual {v1, v0, v2, v14, v9}, Lyads/gs;->a(Ljava/lang/Exception;Lyads/vz2;ZI)Lyads/up2;

    move-result-object v0

    throw v0

    :catch_2
    move-exception v0

    move v14, v2

    invoke-virtual {v1, v0}, Lyads/zy3;->a(Ljava/lang/Exception;)V

    invoke-virtual {v1, v14}, Lyads/zy3;->c(I)Z

    invoke-virtual {v1}, Lyads/zy3;->n()V

    const/16 v28, 0x1

    return v28

    :goto_10
    return v14

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x18
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xf
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x18
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public final n()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lyads/zy3;->K:Lyads/qy3;

    invoke-interface {v0}, Lyads/qy3;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lyads/zy3;->v()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lyads/zy3;->v()V

    throw v0
.end method

.method public final o()Z
    .locals 4

    iget-object v0, p0, Lyads/zy3;->K:Lyads/qy3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lyads/zy3;->q0:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v0, v2, :cond_5

    iget-boolean v2, p0, Lyads/zy3;->U:Z

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lyads/zy3;->V:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lyads/zy3;->t0:Z

    if-eqz v2, :cond_5

    :cond_1
    iget-boolean v2, p0, Lyads/zy3;->W:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lyads/zy3;->s0:Z

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    sget v0, Lyads/u56;->a:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_3

    if-lt v0, v2, :cond_4

    :try_start_0
    invoke-virtual {p0}, Lyads/zy3;->x()V
    :try_end_0
    .catch Lyads/up2; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to update the DRM session, releasing the codec instead."

    invoke-static {v1, v0}, Lyads/sv3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaCodecRenderer"

    invoke-static {v1, v0}, Lyads/sv3;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lyads/zy3;->t()V

    return v3

    :cond_3
    invoke-static {}, Lud;->g()V

    const/4 p0, 0x0

    return p0

    :cond_4
    :goto_0
    invoke-virtual {p0}, Lyads/zy3;->n()V

    return v1

    :cond_5
    :goto_1
    invoke-virtual {p0}, Lyads/zy3;->t()V

    return v3
.end method

.method public p()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final q()V
    .locals 4

    iget-object v0, p0, Lyads/zy3;->K:Lyads/qy3;

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lyads/zy3;->k0:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lyads/zy3;->B:Lyads/vz2;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v1, p0, Lyads/zy3;->E:Lyads/eo2;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_2

    invoke-virtual {p0, v0}, Lyads/zy3;->b(Lyads/vz2;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lyads/zy3;->B:Lyads/vz2;

    iput-boolean v3, p0, Lyads/zy3;->m0:Z

    iget-object v1, p0, Lyads/zy3;->u:Lyads/us;

    invoke-virtual {v1}, Lyads/us;->b()V

    iget-object v1, p0, Lyads/zy3;->t:Lyads/mi0;

    invoke-virtual {v1}, Lyads/mi0;->b()V

    iput-boolean v3, p0, Lyads/zy3;->l0:Z

    iput-boolean v3, p0, Lyads/zy3;->k0:Z

    iget-object v0, v0, Lyads/vz2;->m:Ljava/lang/String;

    const-string v1, "audio/mp4a-latm"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "audio/mpeg"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "audio/opus"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lyads/zy3;->u:Lyads/us;

    iput v2, v0, Lyads/us;->k:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lyads/zy3;->u:Lyads/us;

    const/16 v1, 0x20

    iput v1, v0, Lyads/us;->k:I

    :goto_0
    iput-boolean v2, p0, Lyads/zy3;->k0:Z

    return-void

    :cond_2
    iget-object v0, p0, Lyads/zy3;->E:Lyads/eo2;

    iget-object v1, p0, Lyads/zy3;->D:Lyads/eo2;

    invoke-static {v1, v0}, Lyads/eo2;->a(Lyads/eo2;Lyads/eo2;)V

    iput-object v0, p0, Lyads/zy3;->D:Lyads/eo2;

    iget-object v1, p0, Lyads/zy3;->B:Lyads/vz2;

    iget-object v1, v1, Lyads/vz2;->m:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lyads/zy3;->F:Landroid/media/MediaCrypto;

    if-nez v1, :cond_3

    invoke-virtual {p0, v0}, Lyads/zy3;->a(Lyads/eo2;)Lyads/i03;

    iget-object v0, p0, Lyads/zy3;->D:Lyads/eo2;

    invoke-virtual {v0}, Lyads/eo2;->a()Lyads/rl2;

    move-result-object v0

    if-eqz v0, :cond_6

    :cond_3
    sget-boolean v0, Lyads/i03;->a:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lyads/zy3;->D:Lyads/eo2;

    invoke-virtual {v0}, Lyads/eo2;->c()I

    move-result v0

    if-eq v0, v2, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_5

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lyads/zy3;->D:Lyads/eo2;

    invoke-virtual {v0}, Lyads/eo2;->a()Lyads/rl2;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lyads/zy3;->B:Lyads/vz2;

    iget v2, v0, Lyads/rl2;->b:I

    invoke-virtual {p0, v0, v1, v3, v2}, Lyads/gs;->a(Ljava/lang/Exception;Lyads/vz2;ZI)Lyads/up2;

    move-result-object p0

    throw p0

    :cond_5
    :try_start_0
    iget-object v0, p0, Lyads/zy3;->F:Landroid/media/MediaCrypto;

    iget-boolean v1, p0, Lyads/zy3;->G:Z

    invoke-virtual {p0, v0, v1}, Lyads/zy3;->a(Landroid/media/MediaCrypto;Z)V
    :try_end_0
    .catch Lyads/yy3; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lyads/zy3;->B:Lyads/vz2;

    const/16 v2, 0xfa1

    invoke-virtual {p0, v0, v1, v3, v2}, Lyads/gs;->a(Ljava/lang/Exception;Lyads/vz2;ZI)Lyads/up2;

    move-result-object p0

    throw p0

    :cond_6
    :goto_1
    return-void
.end method

.method public abstract r()V
.end method

.method public final s()V
    .locals 3

    iget v0, p0, Lyads/zy3;->q0:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    iput-boolean v1, p0, Lyads/zy3;->x0:Z

    invoke-virtual {p0}, Lyads/zy3;->u()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lyads/zy3;->t()V

    invoke-virtual {p0}, Lyads/zy3;->q()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lyads/zy3;->n()V

    invoke-virtual {p0}, Lyads/zy3;->x()V

    return-void

    :cond_2
    invoke-virtual {p0}, Lyads/zy3;->n()V

    return-void
.end method

.method public final t()V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lyads/zy3;->K:Lyads/qy3;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lyads/qy3;->release()V

    iget-object v1, p0, Lyads/zy3;->B0:Lyads/ji0;

    iget v2, v1, Lyads/ji0;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lyads/ji0;->b:I

    iget-object v1, p0, Lyads/zy3;->R:Lyads/vy3;

    iget-object v1, v1, Lyads/vy3;->a:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lyads/zy3;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_3

    :cond_0
    :goto_0
    iput-object v0, p0, Lyads/zy3;->K:Lyads/qy3;

    :try_start_1
    iget-object v1, p0, Lyads/zy3;->F:Landroid/media/MediaCrypto;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/media/MediaCrypto;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    goto :goto_2

    :cond_1
    :goto_1
    iput-object v0, p0, Lyads/zy3;->F:Landroid/media/MediaCrypto;

    iget-object v1, p0, Lyads/zy3;->D:Lyads/eo2;

    invoke-static {v1, v0}, Lyads/eo2;->a(Lyads/eo2;Lyads/eo2;)V

    iput-object v0, p0, Lyads/zy3;->D:Lyads/eo2;

    invoke-virtual {p0}, Lyads/zy3;->w()V

    return-void

    :goto_2
    iput-object v0, p0, Lyads/zy3;->F:Landroid/media/MediaCrypto;

    iget-object v2, p0, Lyads/zy3;->D:Lyads/eo2;

    invoke-static {v2, v0}, Lyads/eo2;->a(Lyads/eo2;Lyads/eo2;)V

    iput-object v0, p0, Lyads/zy3;->D:Lyads/eo2;

    invoke-virtual {p0}, Lyads/zy3;->w()V

    throw v1

    :goto_3
    iput-object v0, p0, Lyads/zy3;->K:Lyads/qy3;

    :try_start_2
    iget-object v2, p0, Lyads/zy3;->F:Landroid/media/MediaCrypto;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/media/MediaCrypto;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v1

    goto :goto_5

    :cond_2
    :goto_4
    iput-object v0, p0, Lyads/zy3;->F:Landroid/media/MediaCrypto;

    iget-object v2, p0, Lyads/zy3;->D:Lyads/eo2;

    invoke-static {v2, v0}, Lyads/eo2;->a(Lyads/eo2;Lyads/eo2;)V

    iput-object v0, p0, Lyads/zy3;->D:Lyads/eo2;

    invoke-virtual {p0}, Lyads/zy3;->w()V

    throw v1

    :goto_5
    iput-object v0, p0, Lyads/zy3;->F:Landroid/media/MediaCrypto;

    iget-object v2, p0, Lyads/zy3;->D:Lyads/eo2;

    invoke-static {v2, v0}, Lyads/eo2;->a(Lyads/eo2;Lyads/eo2;)V

    iput-object v0, p0, Lyads/zy3;->D:Lyads/eo2;

    invoke-virtual {p0}, Lyads/zy3;->w()V

    throw v1
.end method

.method public u()V
    .locals 0

    return-void
.end method

.method public v()V
    .locals 5

    const/4 v0, -0x1

    iput v0, p0, Lyads/zy3;->f0:I

    iget-object v1, p0, Lyads/zy3;->s:Lyads/mi0;

    const/4 v2, 0x0

    iput-object v2, v1, Lyads/mi0;->d:Ljava/nio/ByteBuffer;

    iput v0, p0, Lyads/zy3;->g0:I

    iput-object v2, p0, Lyads/zy3;->h0:Ljava/nio/ByteBuffer;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lyads/zy3;->e0:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lyads/zy3;->s0:Z

    iput-boolean v2, p0, Lyads/zy3;->r0:Z

    iput-boolean v2, p0, Lyads/zy3;->a0:Z

    iput-boolean v2, p0, Lyads/zy3;->b0:Z

    iput-boolean v2, p0, Lyads/zy3;->i0:Z

    iput-boolean v2, p0, Lyads/zy3;->j0:Z

    iget-object v3, p0, Lyads/zy3;->w:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iput-wide v0, p0, Lyads/zy3;->u0:J

    iput-wide v0, p0, Lyads/zy3;->v0:J

    iget-object v0, p0, Lyads/zy3;->d0:Lyads/tv;

    if-eqz v0, :cond_0

    const-wide/16 v3, 0x0

    iput-wide v3, v0, Lyads/tv;->a:J

    iput-wide v3, v0, Lyads/tv;->b:J

    iput-boolean v2, v0, Lyads/tv;->c:Z

    :cond_0
    iput v2, p0, Lyads/zy3;->p0:I

    iput v2, p0, Lyads/zy3;->q0:I

    iget-boolean v0, p0, Lyads/zy3;->n0:Z

    iput v0, p0, Lyads/zy3;->o0:I

    return-void
.end method

.method public final w()V
    .locals 2

    invoke-virtual {p0}, Lyads/zy3;->v()V

    const/4 v0, 0x0

    iput-object v0, p0, Lyads/zy3;->A0:Lyads/up2;

    iput-object v0, p0, Lyads/zy3;->d0:Lyads/tv;

    iput-object v0, p0, Lyads/zy3;->P:Ljava/util/ArrayDeque;

    iput-object v0, p0, Lyads/zy3;->R:Lyads/vy3;

    iput-object v0, p0, Lyads/zy3;->L:Lyads/vz2;

    iput-object v0, p0, Lyads/zy3;->M:Landroid/media/MediaFormat;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lyads/zy3;->N:Z

    iput-boolean v0, p0, Lyads/zy3;->t0:Z

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lyads/zy3;->O:F

    iput v0, p0, Lyads/zy3;->S:I

    iput-boolean v0, p0, Lyads/zy3;->T:Z

    iput-boolean v0, p0, Lyads/zy3;->U:Z

    iput-boolean v0, p0, Lyads/zy3;->V:Z

    iput-boolean v0, p0, Lyads/zy3;->W:Z

    iput-boolean v0, p0, Lyads/zy3;->X:Z

    iput-boolean v0, p0, Lyads/zy3;->Y:Z

    iput-boolean v0, p0, Lyads/zy3;->Z:Z

    iput-boolean v0, p0, Lyads/zy3;->c0:Z

    iput-boolean v0, p0, Lyads/zy3;->n0:Z

    iput v0, p0, Lyads/zy3;->o0:I

    iput-boolean v0, p0, Lyads/zy3;->G:Z

    return-void
.end method

.method public final x()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lyads/zy3;->E:Lyads/eo2;

    invoke-virtual {p0, v0}, Lyads/zy3;->a(Lyads/eo2;)Lyads/i03;
    :try_end_0
    .catch Landroid/media/MediaCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    throw p0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lyads/zy3;->B:Lyads/vz2;

    const/16 v2, 0x1776

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v3, v2}, Lyads/gs;->a(Ljava/lang/Exception;Lyads/vz2;ZI)Lyads/up2;

    move-result-object p0

    throw p0
.end method
