.class public final Lyads/hy2;
.super Lyads/fs5;
.source "SourceFile"


# instance fields
.field public n:Lyads/ky2;

.field public o:Lyads/gy2;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lyads/fs5;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lyads/os4;)J
    .locals 4

    .line 111
    iget-object p0, p1, Lyads/os4;->a:[B

    const/4 v0, 0x0

    .line 112
    aget-byte v1, p0, v0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    const/4 v1, 0x2

    .line 113
    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    shr-int/lit8 p0, p0, 0x4

    const/4 v3, 0x6

    if-eq p0, v3, :cond_0

    const/4 v3, 0x7

    if-ne p0, v3, :cond_1

    .line 114
    :cond_0
    iget v3, p1, Lyads/os4;->b:I

    add-int/lit8 v3, v3, 0x4

    invoke-virtual {p1, v3}, Lyads/os4;->e(I)V

    .line 115
    invoke-virtual {p1}, Lyads/os4;->q()J

    :cond_1
    packed-switch p0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    add-int/lit8 p0, p0, -0x8

    const/16 v1, 0x100

    :goto_0
    shl-int v2, v1, p0

    goto :goto_2

    .line 116
    :pswitch_1
    invoke-virtual {p1}, Lyads/os4;->p()I

    move-result p0

    :goto_1
    add-int/lit8 v2, p0, 0x1

    goto :goto_2

    .line 117
    :pswitch_2
    invoke-virtual {p1}, Lyads/os4;->k()I

    move-result p0

    goto :goto_1

    :pswitch_3
    sub-int/2addr p0, v1

    const/16 v1, 0x240

    goto :goto_0

    :pswitch_4
    const/16 v2, 0xc0

    .line 118
    :goto_2
    invoke-virtual {p1, v0}, Lyads/os4;->e(I)V

    int-to-long p0, v2

    return-wide p0

    :cond_2
    const-wide/16 p0, -0x1

    return-wide p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Z)V
    .locals 0

    .line 119
    invoke-super {p0, p1}, Lyads/fs5;->a(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 120
    iput-object p1, p0, Lyads/hy2;->n:Lyads/ky2;

    .line 121
    iput-object p1, p0, Lyads/hy2;->o:Lyads/gy2;

    :cond_0
    return-void
.end method

.method public final a(Lyads/os4;JLyads/ds5;)Z
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    iget-object v3, v1, Lyads/os4;->a:[B

    iget-object v4, v0, Lyads/hy2;->n:Lyads/ky2;

    const/4 v5, 0x1

    if-nez v4, :cond_0

    new-instance v4, Lyads/ky2;

    const/16 v6, 0x11

    invoke-direct {v4, v3, v6}, Lyads/ky2;-><init>([BI)V

    iput-object v4, v0, Lyads/hy2;->n:Lyads/ky2;

    const/16 v0, 0x9

    iget v1, v1, Lyads/os4;->c:I

    invoke-static {v3, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v4, v0, v1}, Lyads/ky2;->a([BLyads/h84;)Lyads/vz2;

    move-result-object v0

    iput-object v0, v2, Lyads/ds5;->a:Lyads/vz2;

    return v5

    :cond_0
    const/4 v6, 0x0

    aget-byte v3, v3, v6

    and-int/lit8 v7, v3, 0x7f

    const/4 v8, 0x3

    if-ne v7, v8, :cond_1

    invoke-static {v1}, Lyads/fy2;->a(Lyads/os4;)Lyads/jy2;

    move-result-object v19

    new-instance v9, Lyads/ky2;

    iget v10, v4, Lyads/ky2;->a:I

    iget v11, v4, Lyads/ky2;->b:I

    iget v12, v4, Lyads/ky2;->c:I

    iget v13, v4, Lyads/ky2;->d:I

    iget v14, v4, Lyads/ky2;->e:I

    iget v15, v4, Lyads/ky2;->g:I

    iget v1, v4, Lyads/ky2;->h:I

    iget-wide v2, v4, Lyads/ky2;->j:J

    iget-object v4, v4, Lyads/ky2;->l:Lyads/h84;

    move/from16 v16, v1

    move-wide/from16 v17, v2

    move-object/from16 v20, v4

    invoke-direct/range {v9 .. v20}, Lyads/ky2;-><init>(IIIIIIIJLyads/jy2;Lyads/h84;)V

    move-object/from16 v1, v19

    iput-object v9, v0, Lyads/hy2;->n:Lyads/ky2;

    new-instance v2, Lyads/gy2;

    invoke-direct {v2, v9, v1}, Lyads/gy2;-><init>(Lyads/ky2;Lyads/jy2;)V

    iput-object v2, v0, Lyads/hy2;->o:Lyads/gy2;

    return v5

    :cond_1
    const/4 v1, -0x1

    if-ne v3, v1, :cond_3

    iget-object v0, v0, Lyads/hy2;->o:Lyads/gy2;

    if-eqz v0, :cond_2

    move-wide/from16 v3, p2

    iput-wide v3, v0, Lyads/gy2;->c:J

    iput-object v0, v2, Lyads/ds5;->b:Lyads/gy2;

    :cond_2
    iget-object v0, v2, Lyads/ds5;->a:Lyads/vz2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return v6

    :cond_3
    return v5
.end method
