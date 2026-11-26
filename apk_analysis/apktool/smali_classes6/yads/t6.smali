.class public final Lyads/t6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/ln1;


# instance fields
.field public final a:Lyads/r6;


# direct methods
.method public constructor <init>(Lyads/r6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/t6;->a:Lyads/r6;

    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri;)Z
    .locals 7

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    const-string v0, "showNextAd"

    invoke-static {p1, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p0, p0, Lyads/t6;->a:Lyads/r6;

    iget p1, p0, Lyads/r6;->m:I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    iget-object v1, p0, Lyads/r6;->d:Lyads/n6;

    iget v1, v1, Lyads/n6;->c:I

    if-ne p1, v1, :cond_0

    iget-boolean v1, p0, Lyads/r6;->n:Z

    if-nez v1, :cond_0

    iput-boolean v0, p0, Lyads/r6;->n:Z

    iget-object v1, p0, Lyads/r6;->b:Lyads/a3;

    invoke-interface {v1}, Lyads/a3;->b()V

    :cond_0
    iget v1, p0, Lyads/r6;->m:I

    iget-object v2, p0, Lyads/r6;->j:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    iget-object v1, p0, Lyads/r6;->j:Ljava/util/ArrayList;

    invoke-static {p1, v1}, Lqn1;->W(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/rr3;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lyads/rr3;->b()V

    :cond_1
    iget-object v1, p0, Lyads/r6;->k:Ljava/util/List;

    invoke-static {p1, v1}, Lqn1;->W(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/u6;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lyads/u6;->b:Lyads/v6;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lyads/v6;->a:Lyads/fm5;

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lyads/fm5;->c:Lyads/fm5;

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lyads/r6;->j:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    iput v1, p0, Lyads/r6;->m:I

    iget-object v2, p0, Lyads/r6;->k:Ljava/util/List;

    invoke-interface {v2, p1, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v1, 0x0

    move-wide v3, v1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lyads/u6;

    iget-wide v5, v5, Lyads/u6;->a:J

    add-long/2addr v3, v5

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lyads/r6;->g:Lyads/l15;

    iget-wide v5, p1, Lyads/l15;->a:J

    add-long/2addr v5, v3

    iput-wide v5, p1, Lyads/l15;->a:J

    iget-object p1, p0, Lyads/r6;->h:Lyads/l10;

    iget-wide v3, p1, Lyads/l10;->a:J

    iget-wide v5, p1, Lyads/l10;->b:J

    add-long/2addr v3, v5

    iput-wide v3, p1, Lyads/l10;->a:J

    iput-wide v1, p1, Lyads/l10;->b:J

    iget p1, p0, Lyads/r6;->m:I

    invoke-virtual {p0, p1}, Lyads/r6;->a(I)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lyads/r6;->b()V

    :cond_5
    :goto_2
    return v0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method
