.class public final Lyads/xa4;
.super Lyads/xk5;
.source "SourceFile"


# instance fields
.field public final m:Lyads/os4;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lyads/xk5;-><init>()V

    new-instance v0, Lyads/os4;

    invoke-direct {v0}, Lyads/os4;-><init>()V

    iput-object v0, p0, Lyads/xa4;->m:Lyads/os4;

    return-void
.end method


# virtual methods
.method public final a([BIZ)Lyads/mt5;
    .locals 8

    iget-object p3, p0, Lyads/xa4;->m:Lyads/os4;

    iput-object p1, p3, Lyads/os4;->a:[B

    iput p2, p3, Lyads/os4;->c:I

    const/4 p1, 0x0

    iput p1, p3, Lyads/os4;->b:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iget-object p2, p0, Lyads/xa4;->m:Lyads/os4;

    iget p3, p2, Lyads/os4;->c:I

    iget v0, p2, Lyads/os4;->b:I

    sub-int/2addr p3, v0

    if-lez p3, :cond_8

    const/16 v0, 0x8

    if-lt p3, v0, :cond_7

    invoke-virtual {p2}, Lyads/os4;->a()I

    move-result p2

    iget-object p3, p0, Lyads/xa4;->m:Lyads/os4;

    invoke-virtual {p3}, Lyads/os4;->a()I

    move-result p3

    iget-object v1, p0, Lyads/xa4;->m:Lyads/os4;

    const v2, 0x76747463

    if-ne p3, v2, :cond_6

    add-int/lit8 p2, p2, -0x8

    const/4 p3, 0x0

    move-object v2, p3

    move-object v3, v2

    :cond_0
    :goto_1
    if-lez p2, :cond_3

    if-lt p2, v0, :cond_2

    invoke-virtual {v1}, Lyads/os4;->a()I

    move-result v4

    invoke-virtual {v1}, Lyads/os4;->a()I

    move-result v5

    add-int/lit8 p2, p2, -0x8

    sub-int/2addr v4, v0

    iget-object v6, v1, Lyads/os4;->a:[B

    iget v7, v1, Lyads/os4;->b:I

    invoke-static {v6, v7, v4}, Lyads/u56;->a([BII)Ljava/lang/String;

    move-result-object v6

    iget v7, v1, Lyads/os4;->b:I

    add-int/2addr v7, v4

    invoke-virtual {v1, v7}, Lyads/os4;->e(I)V

    sub-int/2addr p2, v4

    const v4, 0x73747467

    if-ne v5, v4, :cond_1

    new-instance v3, Lyads/rk6;

    invoke-direct {v3}, Lyads/rk6;-><init>()V

    invoke-static {v6, v3}, Lyads/sk6;->a(Ljava/lang/String;Lyads/rk6;)V

    invoke-virtual {v3}, Lyads/rk6;->a()Lyads/rb0;

    move-result-object v3

    goto :goto_1

    :cond_1
    const v4, 0x7061796c

    if-ne v5, v4, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {p3, v2, v4}, Lyads/sk6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/text/SpannedString;

    move-result-object v2

    goto :goto_1

    :cond_2
    new-instance p0, Lyads/ot5;

    const-string p1, "Incomplete vtt cue box header found."

    invoke-direct {p0, p1}, Lyads/ot5;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    if-nez v2, :cond_4

    const-string v2, ""

    :cond_4
    if-eqz v3, :cond_5

    iput-object v2, v3, Lyads/rb0;->a:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Lyads/rb0;->a()Lyads/sb0;

    move-result-object p2

    goto :goto_2

    :cond_5
    sget-object p2, Lyads/sk6;->a:Ljava/util/regex/Pattern;

    new-instance p2, Lyads/rk6;

    invoke-direct {p2}, Lyads/rk6;-><init>()V

    iput-object v2, p2, Lyads/rk6;->c:Ljava/lang/CharSequence;

    invoke-virtual {p2}, Lyads/rk6;->a()Lyads/rb0;

    move-result-object p2

    invoke-virtual {p2}, Lyads/rb0;->a()Lyads/sb0;

    move-result-object p2

    :goto_2
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6
    add-int/lit8 p2, p2, -0x8

    iget p3, v1, Lyads/os4;->b:I

    add-int/2addr p3, p2

    invoke-virtual {v1, p3}, Lyads/os4;->e(I)V

    goto/16 :goto_0

    :cond_7
    new-instance p0, Lyads/ot5;

    const-string p1, "Incomplete Mp4Webvtt Top Level box header found."

    invoke-direct {p0, p1}, Lyads/ot5;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Lyads/ya4;

    invoke-direct {p0, p1}, Lyads/ya4;-><init>(Ljava/util/ArrayList;)V

    return-object p0
.end method
