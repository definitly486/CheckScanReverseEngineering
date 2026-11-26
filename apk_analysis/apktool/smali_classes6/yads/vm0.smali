.class public final Lyads/vm0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/oe3;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lyads/oe3;->c:Lyads/le3;

    sget-object v0, Lyads/k55;->f:Lyads/k55;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/vm0;->a:Lyads/oe3;

    return-void
.end method


# virtual methods
.method public final a(Lyads/s26;)Ljava/util/List;
    .locals 11

    .line 268
    new-instance v0, Lyads/os4;

    iget-object p1, p1, Lyads/s26;->c:[B

    invoke-direct {v0, p1}, Lyads/os4;-><init>([B)V

    .line 269
    iget-object p0, p0, Lyads/vm0;->a:Lyads/oe3;

    .line 270
    :goto_0
    iget p1, v0, Lyads/os4;->c:I

    iget v1, v0, Lyads/os4;->b:I

    sub-int/2addr p1, v1

    if-lez p1, :cond_5

    .line 271
    invoke-virtual {v0}, Lyads/os4;->k()I

    move-result p1

    .line 272
    invoke-virtual {v0}, Lyads/os4;->k()I

    move-result v1

    .line 273
    iget v2, v0, Lyads/os4;->b:I

    add-int/2addr v2, v1

    const/16 v1, 0x86

    if-ne p1, v1, :cond_4

    .line 274
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 275
    invoke-virtual {v0}, Lyads/os4;->k()I

    move-result p1

    and-int/lit8 p1, p1, 0x1f

    const/4 v1, 0x0

    move v3, v1

    :goto_1
    if-ge v3, p1, :cond_4

    const/4 v4, 0x3

    .line 276
    sget-object v5, Lyads/az;->c:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v4, v5}, Lyads/os4;->a(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v4

    .line 277
    invoke-virtual {v0}, Lyads/os4;->k()I

    move-result v5

    and-int/lit16 v6, v5, 0x80

    const/4 v7, 0x1

    if-eqz v6, :cond_0

    move v6, v7

    goto :goto_2

    :cond_0
    move v6, v1

    :goto_2
    if-eqz v6, :cond_1

    and-int/lit8 v5, v5, 0x3f

    .line 278
    const-string v8, "application/cea-708"

    goto :goto_3

    .line 279
    :cond_1
    const-string v8, "application/cea-608"

    move v5, v7

    .line 280
    :goto_3
    invoke-virtual {v0}, Lyads/os4;->k()I

    move-result v9

    int-to-byte v9, v9

    .line 281
    iget v10, v0, Lyads/os4;->b:I

    add-int/2addr v10, v7

    invoke-virtual {v0, v10}, Lyads/os4;->e(I)V

    if-eqz v6, :cond_3

    and-int/lit8 v6, v9, 0x40

    if-eqz v6, :cond_2

    .line 282
    new-array v6, v7, [B

    aput-byte v7, v6, v1

    goto :goto_4

    :cond_2
    new-array v6, v7, [B

    aput-byte v1, v6, v1

    :goto_4
    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    goto :goto_5

    :cond_3
    const/4 v6, 0x0

    .line 283
    :goto_5
    new-instance v7, Lyads/uz2;

    invoke-direct {v7}, Lyads/uz2;-><init>()V

    .line 284
    iput-object v8, v7, Lyads/uz2;->k:Ljava/lang/String;

    .line 285
    iput-object v4, v7, Lyads/uz2;->c:Ljava/lang/String;

    .line 286
    iput v5, v7, Lyads/uz2;->C:I

    .line 287
    iput-object v6, v7, Lyads/uz2;->m:Ljava/util/List;

    .line 288
    new-instance v4, Lyads/vz2;

    invoke-direct {v4, v7}, Lyads/vz2;-><init>(Lyads/uz2;)V

    .line 289
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 290
    :cond_4
    invoke-virtual {v0, v2}, Lyads/os4;->e(I)V

    goto :goto_0

    :cond_5
    return-object p0
.end method

.method public final a(ILyads/s26;)Lyads/u26;
    .locals 3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_a

    const/4 v0, 0x3

    if-eq p1, v0, :cond_9

    const/4 v0, 0x4

    if-eq p1, v0, :cond_9

    const/16 v0, 0x15

    if-eq p1, v0, :cond_8

    const/16 v0, 0x1b

    const/4 v1, 0x0

    if-eq p1, v0, :cond_7

    const/16 v0, 0x24

    if-eq p1, v0, :cond_6

    const/16 v0, 0x59

    if-eq p1, v0, :cond_5

    const/16 v0, 0x8a

    if-eq p1, v0, :cond_4

    const/16 v0, 0xac

    if-eq p1, v0, :cond_3

    const/16 v0, 0x101

    if-eq p1, v0, :cond_2

    const/16 v0, 0x80

    if-eq p1, v0, :cond_a

    const/16 v0, 0x81

    if-eq p1, v0, :cond_1

    const/16 v0, 0x86

    if-eq p1, v0, :cond_0

    const/16 v0, 0x87

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    new-instance p0, Lyads/eu4;

    new-instance p1, Lyads/lr3;

    iget-object p2, p2, Lyads/s26;->a:Ljava/lang/String;

    invoke-direct {p1, p2}, Lyads/lr3;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lyads/eu4;-><init>(Lyads/zm2;)V

    return-object p0

    :pswitch_1
    new-instance p1, Lyads/eu4;

    new-instance v0, Lyads/g83;

    new-instance v1, Lyads/s56;

    invoke-virtual {p0, p2}, Lyads/vm0;->a(Lyads/s26;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v1, p0}, Lyads/s56;-><init>(Ljava/util/List;)V

    invoke-direct {v0, v1}, Lyads/g83;-><init>(Lyads/s56;)V

    invoke-direct {p1, v0}, Lyads/eu4;-><init>(Lyads/zm2;)V

    return-object p1

    :pswitch_2
    new-instance p0, Lyads/eu4;

    new-instance p1, Lyads/xb;

    iget-object p2, p2, Lyads/s26;->a:Ljava/lang/String;

    invoke-direct {p1, p2, v1}, Lyads/xb;-><init>(Ljava/lang/String;Z)V

    invoke-direct {p0, p1}, Lyads/eu4;-><init>(Lyads/zm2;)V

    return-object p0

    :cond_0
    new-instance p0, Lyads/ph5;

    new-instance p1, Lyads/ot4;

    const-string p2, "application/x-scte35"

    invoke-direct {p1, p2}, Lyads/ot4;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lyads/ph5;-><init>(Lyads/oh5;)V

    return-object p0

    :cond_1
    new-instance p0, Lyads/eu4;

    new-instance p1, Lyads/e0;

    iget-object p2, p2, Lyads/s26;->a:Ljava/lang/String;

    invoke-direct {p1, p2}, Lyads/e0;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lyads/eu4;-><init>(Lyads/zm2;)V

    return-object p0

    :cond_2
    new-instance p0, Lyads/ph5;

    new-instance p1, Lyads/ot4;

    const-string p2, "application/vnd.dvb.ait"

    invoke-direct {p1, p2}, Lyads/ot4;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lyads/ph5;-><init>(Lyads/oh5;)V

    return-object p0

    :cond_3
    new-instance p0, Lyads/eu4;

    new-instance p1, Lyads/h0;

    iget-object p2, p2, Lyads/s26;->a:Ljava/lang/String;

    invoke-direct {p1, p2}, Lyads/h0;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lyads/eu4;-><init>(Lyads/zm2;)V

    return-object p0

    :cond_4
    new-instance p0, Lyads/eu4;

    new-instance p1, Lyads/yl2;

    iget-object p2, p2, Lyads/s26;->a:Ljava/lang/String;

    invoke-direct {p1, p2}, Lyads/yl2;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lyads/eu4;-><init>(Lyads/zm2;)V

    return-object p0

    :cond_5
    new-instance p0, Lyads/eu4;

    new-instance p1, Lyads/rm2;

    iget-object p2, p2, Lyads/s26;->b:Ljava/util/List;

    invoke-direct {p1, p2}, Lyads/rm2;-><init>(Ljava/util/List;)V

    invoke-direct {p0, p1}, Lyads/eu4;-><init>(Lyads/zm2;)V

    return-object p0

    :cond_6
    new-instance p1, Lyads/eu4;

    new-instance v0, Lyads/l83;

    new-instance v1, Lyads/ki5;

    invoke-virtual {p0, p2}, Lyads/vm0;->a(Lyads/s26;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v1, p0}, Lyads/ki5;-><init>(Ljava/util/List;)V

    invoke-direct {v0, v1}, Lyads/l83;-><init>(Lyads/ki5;)V

    invoke-direct {p1, v0}, Lyads/eu4;-><init>(Lyads/zm2;)V

    return-object p1

    :cond_7
    new-instance p1, Lyads/eu4;

    new-instance v0, Lyads/j83;

    new-instance v2, Lyads/ki5;

    invoke-virtual {p0, p2}, Lyads/vm0;->a(Lyads/s26;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v2, p0}, Lyads/ki5;-><init>(Ljava/util/List;)V

    invoke-direct {v0, v2, v1, v1}, Lyads/j83;-><init>(Lyads/ki5;ZZ)V

    invoke-direct {p1, v0}, Lyads/eu4;-><init>(Lyads/zm2;)V

    return-object p1

    :cond_8
    new-instance p0, Lyads/eu4;

    new-instance p1, Lyads/pb3;

    invoke-direct {p1}, Lyads/pb3;-><init>()V

    invoke-direct {p0, p1}, Lyads/eu4;-><init>(Lyads/zm2;)V

    return-object p0

    :cond_9
    new-instance p0, Lyads/eu4;

    new-instance p1, Lyads/za4;

    iget-object p2, p2, Lyads/s26;->a:Ljava/lang/String;

    invoke-direct {p1, p2}, Lyads/za4;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lyads/eu4;-><init>(Lyads/zm2;)V

    return-object p0

    :cond_a
    new-instance p1, Lyads/eu4;

    new-instance v0, Lyads/d83;

    new-instance v1, Lyads/s56;

    invoke-virtual {p0, p2}, Lyads/vm0;->a(Lyads/s26;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v1, p0}, Lyads/s56;-><init>(Ljava/util/List;)V

    invoke-direct {v0, v1}, Lyads/d83;-><init>(Lyads/s56;)V

    invoke-direct {p1, v0}, Lyads/eu4;-><init>(Lyads/zm2;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
