.class public final Lyads/k84;
.super Lyads/gs;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final n:Lyads/i84;

.field public final o:Lyads/bq2;

.field public final p:Landroid/os/Handler;

.field public final q:Lyads/j84;

.field public r:Lyads/vk5;

.field public s:Z

.field public t:Z

.field public u:J

.field public v:J

.field public w:Lyads/h84;


# direct methods
.method public constructor <init>(Lyads/bq2;Landroid/os/Looper;)V
    .locals 2

    sget-object v0, Lyads/i84;->a:Lyads/i84;

    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lyads/gs;-><init>(I)V

    iput-object p1, p0, Lyads/k84;->o:Lyads/bq2;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p2, p0}, Lyads/u56;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lyads/k84;->p:Landroid/os/Handler;

    iput-object v0, p0, Lyads/k84;->n:Lyads/i84;

    new-instance p1, Lyads/j84;

    invoke-direct {p1}, Lyads/j84;-><init>()V

    iput-object p1, p0, Lyads/k84;->q:Lyads/j84;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lyads/k84;->v:J

    return-void
.end method


# virtual methods
.method public final a(Lyads/vz2;)I
    .locals 2

    .line 226
    iget-object p0, p0, Lyads/k84;->n:Lyads/i84;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 227
    iget-object p0, p1, Lyads/vz2;->m:Ljava/lang/String;

    .line 228
    const-string v0, "application/id3"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 229
    const-string v0, "application/x-emsg"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 230
    const-string v0, "application/x-scte35"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 231
    const-string v0, "application/x-icy"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 232
    const-string v0, "application/vnd.dvb.ait"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 233
    :cond_0
    invoke-static {v1, v1, v1}, Lyads/gs;->a(III)I

    move-result p0

    return p0

    .line 234
    :cond_1
    :goto_0
    iget p0, p1, Lyads/vz2;->F:I

    if-nez p0, :cond_2

    const/4 p0, 0x4

    goto :goto_1

    :cond_2
    const/4 p0, 0x2

    .line 235
    :goto_1
    invoke-static {p0, v1, v1}, Lyads/gs;->a(III)I

    move-result p0

    return p0
.end method

.method public final a(JJ)V
    .locals 4

    const/4 p3, 0x1

    move p4, p3

    :cond_0
    :goto_0
    if-eqz p4, :cond_6

    .line 252
    iget-boolean p4, p0, Lyads/k84;->s:Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p4, :cond_3

    iget-object p4, p0, Lyads/k84;->w:Lyads/h84;

    if-nez p4, :cond_3

    .line 253
    iget-object p4, p0, Lyads/k84;->q:Lyads/j84;

    invoke-virtual {p4}, Lyads/mi0;->b()V

    .line 254
    iget-object p4, p0, Lyads/gs;->c:Lyads/a03;

    .line 255
    iput-object v1, p4, Lyads/a03;->a:Lyads/eo2;

    .line 256
    iput-object v1, p4, Lyads/a03;->b:Lyads/vz2;

    .line 257
    iget-object v2, p0, Lyads/k84;->q:Lyads/j84;

    invoke-virtual {p0, p4, v2, v0}, Lyads/gs;->a(Lyads/a03;Lyads/mi0;I)I

    move-result v2

    const/4 v3, -0x4

    if-ne v2, v3, :cond_2

    .line 258
    iget-object p4, p0, Lyads/k84;->q:Lyads/j84;

    const/4 v2, 0x4

    .line 259
    invoke-virtual {p4, v2}, Lyads/ev;->b(I)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 260
    iput-boolean p3, p0, Lyads/k84;->s:Z

    goto :goto_1

    .line 261
    :cond_1
    iget-object p4, p0, Lyads/k84;->q:Lyads/j84;

    iget-wide v2, p0, Lyads/k84;->u:J

    iput-wide v2, p4, Lyads/j84;->i:J

    .line 262
    invoke-virtual {p4}, Lyads/mi0;->c()V

    .line 263
    iget-object p4, p0, Lyads/k84;->r:Lyads/vk5;

    sget v2, Lyads/u56;->a:I

    iget-object v2, p0, Lyads/k84;->q:Lyads/j84;

    invoke-virtual {p4, v2}, Lyads/vk5;->a(Lyads/j84;)Lyads/h84;

    move-result-object p4

    if-eqz p4, :cond_3

    .line 264
    new-instance v2, Ljava/util/ArrayList;

    .line 265
    iget-object v3, p4, Lyads/h84;->b:[Lyads/g84;

    array-length v3, v3

    .line 266
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 267
    invoke-virtual {p0, p4, v2}, Lyads/k84;->a(Lyads/h84;Ljava/util/ArrayList;)V

    .line 268
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_3

    .line 269
    new-instance p4, Lyads/h84;

    invoke-direct {p4, v2}, Lyads/h84;-><init>(Ljava/util/List;)V

    .line 270
    iput-object p4, p0, Lyads/k84;->w:Lyads/h84;

    .line 271
    iget-object p4, p0, Lyads/k84;->q:Lyads/j84;

    iget-wide v2, p4, Lyads/mi0;->f:J

    iput-wide v2, p0, Lyads/k84;->v:J

    goto :goto_1

    :cond_2
    const/4 v3, -0x5

    if-ne v2, v3, :cond_3

    .line 272
    iget-object p4, p4, Lyads/a03;->b:Lyads/vz2;

    .line 273
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 274
    iget-wide v2, p4, Lyads/vz2;->q:J

    iput-wide v2, p0, Lyads/k84;->u:J

    .line 275
    :cond_3
    :goto_1
    iget-object p4, p0, Lyads/k84;->w:Lyads/h84;

    if-eqz p4, :cond_5

    iget-wide v2, p0, Lyads/k84;->v:J

    cmp-long v2, v2, p1

    if-gtz v2, :cond_5

    .line 276
    iget-object v2, p0, Lyads/k84;->p:Landroid/os/Handler;

    if-eqz v2, :cond_4

    .line 277
    invoke-virtual {v2, v0, p4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    .line 278
    :cond_4
    iget-object v0, p0, Lyads/k84;->o:Lyads/bq2;

    invoke-virtual {v0, p4}, Lyads/bq2;->a(Lyads/h84;)V

    .line 279
    :goto_2
    iput-object v1, p0, Lyads/k84;->w:Lyads/h84;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 280
    iput-wide v2, p0, Lyads/k84;->v:J

    move p4, p3

    goto :goto_3

    :cond_5
    move-object v1, p4

    move p4, v0

    .line 281
    :goto_3
    iget-boolean v0, p0, Lyads/k84;->s:Z

    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    .line 282
    iput-boolean p3, p0, Lyads/k84;->t:Z

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method public final a(JZ)V
    .locals 0

    const/4 p1, 0x0

    .line 248
    iput-object p1, p0, Lyads/k84;->w:Lyads/h84;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 249
    iput-wide p1, p0, Lyads/k84;->v:J

    const/4 p1, 0x0

    .line 250
    iput-boolean p1, p0, Lyads/k84;->s:Z

    .line 251
    iput-boolean p1, p0, Lyads/k84;->t:Z

    return-void
.end method

.method public final a(Lyads/h84;Ljava/util/ArrayList;)V
    .locals 10

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p1, Lyads/h84;->b:[Lyads/g84;

    array-length v3, v2

    if-ge v1, v3, :cond_9

    aget-object v2, v2, v1

    invoke-interface {v2}, Lyads/g84;->a()Lyads/vz2;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v3, p0, Lyads/k84;->n:Lyads/i84;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v2, Lyads/vz2;->m:Ljava/lang/String;

    const-string v4, "application/id3"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "application/vnd.dvb.ait"

    const-string v7, "application/x-icy"

    const-string v8, "application/x-scte35"

    const-string v9, "application/x-emsg"

    if-nez v5, :cond_0

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_0
    iget-object v3, p0, Lyads/k84;->n:Lyads/i84;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v2, Lyads/vz2;->m:Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v5, -0x1

    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x4

    goto :goto_1

    :sswitch_1
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v5, 0x3

    goto :goto_1

    :sswitch_2
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v5, 0x2

    goto :goto_1

    :sswitch_3
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v5, 0x1

    goto :goto_1

    :sswitch_4
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_1

    :cond_5
    move v5, v0

    :goto_1
    packed-switch v5, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    new-instance v2, Lyads/dp5;

    invoke-direct {v2}, Lyads/dp5;-><init>()V

    goto :goto_2

    :pswitch_1
    new-instance v2, Lyads/fp2;

    invoke-direct {v2}, Lyads/fp2;-><init>()V

    goto :goto_2

    :pswitch_2
    new-instance v2, Lyads/mb3;

    invoke-direct {v2}, Lyads/mb3;-><init>()V

    goto :goto_2

    :pswitch_3
    new-instance v2, Lyads/fb3;

    invoke-direct {v2}, Lyads/fb3;-><init>()V

    goto :goto_2

    :pswitch_4
    new-instance v2, Lyads/cg;

    invoke-direct {v2}, Lyads/cg;-><init>()V

    :goto_2
    iget-object v3, p1, Lyads/h84;->b:[Lyads/g84;

    aget-object v3, v3, v1

    invoke-interface {v3}, Lyads/g84;->b()[B

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, p0, Lyads/k84;->q:Lyads/j84;

    invoke-virtual {v4}, Lyads/mi0;->b()V

    iget-object v4, p0, Lyads/k84;->q:Lyads/j84;

    array-length v5, v3

    invoke-virtual {v4, v5}, Lyads/mi0;->c(I)V

    iget-object v4, p0, Lyads/k84;->q:Lyads/j84;

    iget-object v4, v4, Lyads/mi0;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lyads/k84;->q:Lyads/j84;

    invoke-virtual {v3}, Lyads/mi0;->c()V

    iget-object v3, p0, Lyads/k84;->q:Lyads/j84;

    invoke-virtual {v2, v3}, Lyads/vk5;->a(Lyads/j84;)Lyads/h84;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {p0, v2, p2}, Lyads/k84;->a(Lyads/h84;Ljava/util/ArrayList;)V

    goto :goto_4

    :cond_6
    :goto_3
    const-string p0, "Attempted to create decoder for unsupported MIME type: "

    invoke-static {p0, v2}, Lbj;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void

    :cond_7
    iget-object v2, p1, Lyads/h84;->b:[Lyads/g84;

    aget-object v2, v2, v1

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_9
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x50bb4913 -> :sswitch_4
        -0x505c61b5 -> :sswitch_3
        -0x4a682ec7 -> :sswitch_2
        0x44ce7ed0 -> :sswitch_1
        0x62816bb7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a([Lyads/vz2;JJ)V
    .locals 0

    .line 236
    iget-object p2, p0, Lyads/k84;->n:Lyads/i84;

    const/4 p3, 0x0

    aget-object p1, p1, p3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 237
    iget-object p1, p1, Lyads/vz2;->m:Ljava/lang/String;

    if-eqz p1, :cond_5

    .line 238
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const/4 p4, -0x1

    sparse-switch p2, :sswitch_data_0

    :goto_0
    move p3, p4

    goto :goto_1

    :sswitch_0
    const-string p2, "application/x-scte35"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x4

    goto :goto_1

    :sswitch_1
    const-string p2, "application/x-emsg"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p3, 0x3

    goto :goto_1

    :sswitch_2
    const-string p2, "application/id3"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 p3, 0x2

    goto :goto_1

    :sswitch_3
    const-string p2, "application/x-icy"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    const/4 p3, 0x1

    goto :goto_1

    :sswitch_4
    const-string p2, "application/vnd.dvb.ait"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_0

    :cond_4
    :goto_1
    packed-switch p3, :pswitch_data_0

    goto :goto_3

    .line 239
    :pswitch_0
    new-instance p1, Lyads/dp5;

    invoke-direct {p1}, Lyads/dp5;-><init>()V

    goto :goto_2

    .line 240
    :pswitch_1
    new-instance p1, Lyads/fp2;

    invoke-direct {p1}, Lyads/fp2;-><init>()V

    goto :goto_2

    .line 241
    :pswitch_2
    new-instance p1, Lyads/mb3;

    invoke-direct {p1}, Lyads/mb3;-><init>()V

    goto :goto_2

    .line 242
    :pswitch_3
    new-instance p1, Lyads/fb3;

    invoke-direct {p1}, Lyads/fb3;-><init>()V

    goto :goto_2

    .line 243
    :pswitch_4
    new-instance p1, Lyads/cg;

    invoke-direct {p1}, Lyads/cg;-><init>()V

    .line 244
    :goto_2
    iput-object p1, p0, Lyads/k84;->r:Lyads/vk5;

    return-void

    .line 245
    :cond_5
    :goto_3
    const-string p0, "Attempted to create decoder for unsupported MIME type: "

    .line 246
    invoke-static {p0, p1}, Lbj;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 247
    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x50bb4913 -> :sswitch_4
        -0x505c61b5 -> :sswitch_3
        -0x4a682ec7 -> :sswitch_2
        0x44ce7ed0 -> :sswitch_1
        0x62816bb7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    const-string p0, "MetadataRenderer"

    return-object p0
.end method

.method public final e()Z
    .locals 0

    iget-boolean p0, p0, Lyads/k84;->t:Z

    return p0
.end method

.method public final f()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final g()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lyads/k84;->w:Lyads/h84;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Lyads/k84;->v:J

    iput-object v0, p0, Lyads/k84;->r:Lyads/vk5;

    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lyads/h84;

    iget-object p0, p0, Lyads/k84;->o:Lyads/bq2;

    invoke-virtual {p0, p1}, Lyads/bq2;->a(Lyads/h84;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-static {}, Lud;->g()V

    const/4 p0, 0x0

    return p0
.end method
