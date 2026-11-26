.class public final Lop2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:[C


# direct methods
.method public constructor <init>(Ljavax/security/auth/x500/X500Principal;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "RFC2253"

    invoke-virtual {p1, v0}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lop2;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lop2;->b:I

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 9

    add-int/lit8 v0, p1, 0x1

    iget v1, p0, Lop2;->b:I

    iget-object v2, p0, Lop2;->a:Ljava/lang/String;

    const-string v3, "Malformed DN: "

    if-ge v0, v1, :cond_6

    iget-object p0, p0, Lop2;->g:[C

    aget-char p1, p0, p1

    const/16 v1, 0x46

    const/16 v4, 0x41

    const/16 v5, 0x66

    const/16 v6, 0x61

    const/16 v7, 0x39

    const/16 v8, 0x30

    if-lt p1, v8, :cond_0

    if-gt p1, v7, :cond_0

    sub-int/2addr p1, v8

    goto :goto_0

    :cond_0
    if-lt p1, v6, :cond_1

    if-gt p1, v5, :cond_1

    add-int/lit8 p1, p1, -0x57

    goto :goto_0

    :cond_1
    if-lt p1, v4, :cond_5

    if-gt p1, v1, :cond_5

    add-int/lit8 p1, p1, -0x37

    :goto_0
    aget-char p0, p0, v0

    if-lt p0, v8, :cond_2

    if-gt p0, v7, :cond_2

    sub-int/2addr p0, v8

    goto :goto_1

    :cond_2
    if-lt p0, v6, :cond_3

    if-gt p0, v5, :cond_3

    add-int/lit8 p0, p0, -0x57

    goto :goto_1

    :cond_3
    if-lt p0, v4, :cond_4

    if-gt p0, v1, :cond_4

    add-int/lit8 p0, p0, -0x37

    :goto_1
    shl-int/lit8 p1, p1, 0x4

    add-int/2addr p1, p0

    return p1

    :cond_4
    invoke-static {v2, v3}, Lqz0;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    const/4 p0, 0x0

    return p0

    :cond_5
    invoke-static {v2, v3}, Lqz0;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    invoke-static {v2, v3}, Lqz0;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public final b()C
    .locals 10

    iget v0, p0, Lop2;->c:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lop2;->c:I

    iget v2, p0, Lop2;->b:I

    if-eq v0, v2, :cond_8

    iget-object v3, p0, Lop2;->g:[C

    aget-char v3, v3, v0

    const/16 v4, 0x20

    if-eq v3, v4, :cond_7

    const/16 v4, 0x25

    if-eq v3, v4, :cond_7

    const/16 v4, 0x5c

    if-eq v3, v4, :cond_7

    const/16 v5, 0x5f

    if-eq v3, v5, :cond_7

    const/16 v5, 0x22

    if-eq v3, v5, :cond_7

    const/16 v5, 0x23

    if-eq v3, v5, :cond_7

    packed-switch v3, :pswitch_data_0

    packed-switch v3, :pswitch_data_1

    invoke-virtual {p0, v0}, Lop2;->a(I)I

    move-result v0

    iget v3, p0, Lop2;->c:I

    add-int/2addr v3, v1

    iput v3, p0, Lop2;->c:I

    const/16 v3, 0x80

    if-ge v0, v3, :cond_0

    int-to-char p0, v0

    return p0

    :cond_0
    const/16 v5, 0xc0

    if-lt v0, v5, :cond_6

    const/16 v5, 0xf7

    if-gt v0, v5, :cond_6

    const/16 v5, 0xdf

    if-gt v0, v5, :cond_1

    and-int/lit8 v0, v0, 0x1f

    move v5, v1

    goto :goto_0

    :cond_1
    const/16 v5, 0xef

    if-gt v0, v5, :cond_2

    and-int/lit8 v0, v0, 0xf

    const/4 v5, 0x2

    goto :goto_0

    :cond_2
    and-int/lit8 v0, v0, 0x7

    const/4 v5, 0x3

    :goto_0
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_5

    iget v7, p0, Lop2;->c:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lop2;->c:I

    if-eq v8, v2, :cond_6

    iget-object v9, p0, Lop2;->g:[C

    aget-char v8, v9, v8

    if-eq v8, v4, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v7, v7, 0x2

    iput v7, p0, Lop2;->c:I

    invoke-virtual {p0, v7}, Lop2;->a(I)I

    move-result v7

    iget v8, p0, Lop2;->c:I

    add-int/2addr v8, v1

    iput v8, p0, Lop2;->c:I

    and-int/lit16 v8, v7, 0xc0

    if-eq v8, v3, :cond_4

    goto :goto_2

    :cond_4
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v7, v7, 0x3f

    add-int/2addr v0, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    int-to-char p0, v0

    return p0

    :cond_6
    :goto_2
    const/16 p0, 0x3f

    return p0

    :cond_7
    :pswitch_0
    return v3

    :cond_8
    const-string v0, "Unexpected end of DN: "

    iget-object p0, p0, Lop2;->a:Ljava/lang/String;

    invoke-static {p0, v0}, Lqz0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x2a
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final c()Ljava/lang/String;
    .locals 7

    :goto_0
    iget v0, p0, Lop2;->c:I

    iget v1, p0, Lop2;->b:I

    const/16 v2, 0x20

    if-ge v0, v1, :cond_0

    iget-object v3, p0, Lop2;->g:[C

    aget-char v3, v3, v0

    if-ne v3, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lop2;->c:I

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    iput v0, p0, Lop2;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lop2;->c:I

    :goto_1
    iget v0, p0, Lop2;->c:I

    const/16 v3, 0x3d

    if-ge v0, v1, :cond_2

    iget-object v4, p0, Lop2;->g:[C

    aget-char v4, v4, v0

    if-eq v4, v3, :cond_2

    if-eq v4, v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lop2;->c:I

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lop2;->a:Ljava/lang/String;

    const-string v5, "Unexpected end of DN: "

    if-ge v0, v1, :cond_b

    iput v0, p0, Lop2;->e:I

    iget-object v6, p0, Lop2;->g:[C

    aget-char v6, v6, v0

    if-ne v6, v2, :cond_5

    :goto_2
    iget v0, p0, Lop2;->c:I

    if-ge v0, v1, :cond_3

    iget-object v6, p0, Lop2;->g:[C

    aget-char v6, v6, v0

    if-eq v6, v3, :cond_3

    if-ne v6, v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lop2;->c:I

    goto :goto_2

    :cond_3
    iget-object v6, p0, Lop2;->g:[C

    aget-char v6, v6, v0

    if-ne v6, v3, :cond_4

    if-eq v0, v1, :cond_4

    goto :goto_4

    :cond_4
    invoke-static {v4, v5}, Lqz0;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_3
    const/4 p0, 0x0

    return-object p0

    :cond_5
    :goto_4
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lop2;->c:I

    :goto_5
    iget v0, p0, Lop2;->c:I

    if-ge v0, v1, :cond_6

    iget-object v3, p0, Lop2;->g:[C

    aget-char v3, v3, v0

    if-ne v3, v2, :cond_6

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lop2;->c:I

    goto :goto_5

    :cond_6
    iget v0, p0, Lop2;->e:I

    iget v1, p0, Lop2;->d:I

    sub-int v2, v0, v1

    const/4 v3, 0x4

    if-le v2, v3, :cond_a

    iget-object v2, p0, Lop2;->g:[C

    add-int/lit8 v3, v1, 0x3

    aget-char v3, v2, v3

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_a

    aget-char v3, v2, v1

    const/16 v4, 0x4f

    if-eq v3, v4, :cond_7

    const/16 v4, 0x6f

    if-ne v3, v4, :cond_a

    :cond_7
    add-int/lit8 v3, v1, 0x1

    aget-char v3, v2, v3

    const/16 v4, 0x49

    if-eq v3, v4, :cond_8

    add-int/lit8 v3, v1, 0x1

    aget-char v3, v2, v3

    const/16 v4, 0x69

    if-ne v3, v4, :cond_a

    :cond_8
    add-int/lit8 v3, v1, 0x2

    aget-char v3, v2, v3

    const/16 v4, 0x44

    if-eq v3, v4, :cond_9

    add-int/lit8 v3, v1, 0x2

    aget-char v2, v2, v3

    const/16 v3, 0x64

    if-ne v2, v3, :cond_a

    :cond_9
    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lop2;->d:I

    :cond_a
    new-instance v2, Ljava/lang/String;

    iget-object p0, p0, Lop2;->g:[C

    sub-int/2addr v0, v1

    invoke-direct {v2, p0, v1, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v2

    :cond_b
    invoke-static {v4, v5}, Lqz0;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3
.end method
