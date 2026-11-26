.class public final Lyads/lu4;
.super Lyads/ur;
.source "SourceFile"


# instance fields
.field public final e:Lnl3;


# direct methods
.method public constructor <init>(Lnl3;)V
    .locals 1

    sget-object v0, Lyads/mu4;->b:Lyads/sr;

    invoke-direct {p0, v0}, Lyads/ur;-><init>(Lyads/sr;)V

    iput-object p1, p0, Lyads/lu4;->e:Lnl3;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 7

    invoke-virtual {p0}, Lyads/ur;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lyads/zv5;->a(Ljava/lang/String;Ljava/lang/String;)Lyads/aw5;

    move-result-object v0

    new-instance v1, Lyads/aw5;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget v2, v0, Lyads/aw5;->b:I

    sub-int/2addr p1, v2

    const/4 v3, 0x0

    if-gez p1, :cond_0

    move p1, v3

    :cond_0
    iget v0, v0, Lyads/aw5;->c:I

    invoke-direct {v1, p1, v2, v0}, Lyads/aw5;-><init>(III)V

    invoke-virtual {p0}, Lyads/ur;->a()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move v2, v3

    :goto_0
    if-gt v2, p1, :cond_2

    invoke-virtual {p0}, Lyads/ur;->a()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyads/rr;

    instance-of v5, v4, Lyads/pr;

    if-eqz v5, :cond_1

    check-cast v4, Lyads/pr;

    iget-object v4, v4, Lyads/pr;->a:Ljava/lang/Character;

    if-eqz v4, :cond_1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p2}, Lyads/ur;->a(Lyads/aw5;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0}, Lyads/ur;->a()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move v4, v3

    :goto_1
    if-gt v4, v0, :cond_4

    invoke-virtual {p0}, Lyads/ur;->a()Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lyads/rr;

    instance-of v6, v5, Lyads/pr;

    if-eqz v6, :cond_3

    check-cast v5, Lyads/pr;

    iget-object v5, v5, Lyads/pr;->a:Ljava/lang/Character;

    if-eqz v5, :cond_3

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lyads/mu4;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lyads/ur;->a:Lyads/sr;

    iget-object v4, v4, Lyads/sr;->a:Ljava/lang/String;

    invoke-static {v2, v4}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_5

    goto :goto_2

    :cond_5
    move-object v2, v5

    :goto_2
    if-nez v2, :cond_9

    invoke-virtual {p0}, Lyads/ur;->b()I

    move-result p1

    iget v0, v1, Lyads/aw5;->a:I

    if-ge v0, p1, :cond_8

    :goto_3
    invoke-virtual {p0}, Lyads/ur;->a()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p2, p1, :cond_7

    invoke-virtual {p0}, Lyads/ur;->a()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyads/rr;

    instance-of p1, p1, Lyads/pr;

    if-eqz p1, :cond_6

    goto :goto_4

    :cond_6
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_7
    :goto_4
    invoke-virtual {p0}, Lyads/ur;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_8
    iput p1, p0, Lyads/ur;->d:I

    return-void

    :cond_9
    new-instance p2, Lyads/sr;

    sget-object v1, Lyads/mu4;->a:Ljava/util/List;

    iget-object v4, p0, Lyads/ur;->a:Lyads/sr;

    iget-boolean v4, v4, Lyads/sr;->c:Z

    invoke-direct {p2, v2, v1, v4}, Lyads/sr;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    invoke-virtual {p0, p2, v3}, Lyads/ur;->a(Lyads/sr;Z)V

    invoke-virtual {p0, v0, v3, v5}, Lyads/ur;->a(Ljava/lang/String;ILjava/lang/Integer;)V

    invoke-static {p1, v0}, Lyads/zv5;->a(Ljava/lang/String;Ljava/lang/String;)Lyads/aw5;

    move-result-object p1

    iget p2, p1, Lyads/aw5;->a:I

    iget p1, p1, Lyads/aw5;->b:I

    add-int/2addr p2, p1

    move p1, v3

    :goto_5
    invoke-virtual {p0}, Lyads/ur;->a()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_b

    if-ge p1, p2, :cond_b

    invoke-virtual {p0}, Lyads/ur;->a()Ljava/util/List;

    move-result-object v0

    add-int/lit8 v1, v3, 0x1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lyads/pr;

    if-eqz v0, :cond_a

    add-int/lit8 p1, p1, 0x1

    :cond_a
    move v3, v1

    goto :goto_5

    :cond_b
    :goto_6
    invoke-virtual {p0}, Lyads/ur;->a()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v3, p1, :cond_d

    invoke-virtual {p0}, Lyads/ur;->a()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyads/rr;

    instance-of p1, p1, Lyads/pr;

    if-eqz p1, :cond_c

    goto :goto_7

    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_d
    :goto_7
    iput v3, p0, Lyads/ur;->d:I

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4

    .line 304
    invoke-static {p1}, Lyads/mu4;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 305
    iget-object v1, p0, Lyads/ur;->a:Lyads/sr;

    .line 306
    iget-object v1, v1, Lyads/sr;->a:Ljava/lang/String;

    .line 307
    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 308
    new-instance v1, Lyads/sr;

    .line 309
    sget-object v2, Lyads/mu4;->a:Ljava/util/List;

    .line 310
    iget-object v3, p0, Lyads/ur;->a:Lyads/sr;

    .line 311
    iget-boolean v3, v3, Lyads/sr;->c:Z

    .line 312
    invoke-direct {v1, v0, v2, v3}, Lyads/sr;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    const/4 v0, 0x0

    .line 313
    invoke-virtual {p0, v1, v0}, Lyads/ur;->a(Lyads/sr;Z)V

    .line 314
    sget-object v0, Lj59;->a:Lj59;

    .line 315
    :cond_1
    invoke-super {p0, p1}, Lyads/ur;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/util/regex/PatternSyntaxException;)V
    .locals 0

    .line 316
    iget-object p0, p0, Lyads/lu4;->e:Lnl3;

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
