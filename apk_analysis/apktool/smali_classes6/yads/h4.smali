.class public abstract Lyads/h4;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lyads/en4;)Lyads/i4;
    .locals 5

    const/4 v0, -0x1

    if-eqz p0, :cond_0

    iget v1, p0, Lyads/en4;->a:I

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const/16 v2, 0xcc

    if-ne v2, v1, :cond_1

    sget-object v0, Lyads/o4;->d:Lyads/o4;

    goto :goto_4

    :cond_1
    const/4 v2, 0x0

    if-eqz p0, :cond_2

    iget-object v3, p0, Lyads/en4;->c:Ljava/util/Map;

    goto :goto_1

    :cond_2
    move-object v3, v2

    :goto_1
    if-eqz p0, :cond_3

    iget v2, p0, Lyads/en4;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_3
    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v4, 0x190

    if-ne v4, v2, :cond_5

    if-eqz v3, :cond_5

    sget-object v2, Lyads/oa3;->N:Lyads/oa3;

    invoke-static {v3, v2}, Lyads/v83;->a(Ljava/util/Map;Lyads/oa3;)Z

    move-result v2

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v2, 0x0

    :goto_3
    if-eqz v2, :cond_6

    sget-object v0, Lyads/o4;->h:Lyads/o4;

    goto :goto_4

    :cond_6
    const/16 v2, 0x193

    if-ne v2, v1, :cond_7

    sget-object v0, Lyads/o4;->g:Lyads/o4;

    goto :goto_4

    :cond_7
    const/16 v2, 0x194

    if-ne v2, v1, :cond_8

    sget-object v0, Lyads/o4;->b:Lyads/o4;

    goto :goto_4

    :cond_8
    const/16 v2, 0x1f4

    if-gt v2, v1, :cond_9

    const/16 v2, 0x257

    if-gt v1, v2, :cond_9

    sget-object v0, Lyads/o4;->f:Lyads/o4;

    goto :goto_4

    :cond_9
    if-ne v0, v1, :cond_a

    sget-object v0, Lyads/o4;->l:Lyads/o4;

    goto :goto_4

    :cond_a
    sget-object v0, Lyads/o4;->e:Lyads/o4;

    :goto_4
    new-instance v1, Lyads/i4;

    invoke-direct {v1, v0, p0}, Lyads/i4;-><init>(Lyads/o4;Lyads/en4;)V

    return-object v1
.end method
