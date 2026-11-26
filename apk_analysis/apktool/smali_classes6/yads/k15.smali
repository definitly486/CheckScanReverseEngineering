.class public final Lyads/k15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/nb6;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/ja6;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lyads/k15;->a:Landroid/content/Context;

    iget-object p1, p2, Lyads/ja6;->a:Lyads/p90;

    iget p2, p1, Lyads/p90;->i:I

    int-to-long v0, p2

    iget-object p1, p1, Lyads/p90;->d:Ljava/util/ArrayList;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lyads/v06;

    const-string v4, "progress"

    iget-object v3, v3, Lyads/v06;->a:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/v06;

    iget-object v3, v2, Lyads/v06;->c:Lyads/q86;

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    sget-object v5, Lyads/p86;->b:Lyads/p86;

    iget-object v6, v3, Lyads/q86;->b:Lyads/p86;

    if-ne v5, v6, :cond_3

    iget v3, v3, Lyads/q86;->c:F

    float-to-long v5, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_2

    :cond_3
    sget-object v5, Lyads/p86;->c:Lyads/p86;

    if-ne v5, v6, :cond_4

    iget v3, v3, Lyads/q86;->c:F

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v3, v5

    long-to-float v5, v0

    mul-float/2addr v3, v5

    float-to-long v5, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_2

    :cond_4
    move-object v3, v4

    :goto_2
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    new-instance v5, Lyads/j15;

    iget-object v2, v2, Lyads/v06;->b:Ljava/lang/String;

    invoke-direct {v5, v2, v3, v4}, Lyads/j15;-><init>(Ljava/lang/String;J)V

    move-object v4, v5

    :cond_5
    if-eqz v4, :cond_2

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Lyads/k15;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(JJ)V
    .locals 4

    iget-object p1, p0, Lyads/k15;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lyads/j15;

    iget-wide v0, p2, Lyads/j15;->b:J

    cmp-long v0, v0, p3

    if-gtz v0, :cond_0

    sget-object v0, Lyads/wd6;->c:Lyads/vd6;

    iget-object v1, p0, Lyads/k15;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lyads/vd6;->a(Landroid/content/Context;)Lyads/wd6;

    move-result-object v0

    iget-object p2, p2, Lyads/j15;->a:Ljava/lang/String;

    iget-object v1, v0, Lyads/wd6;->a:Landroid/content/Context;

    new-instance v2, Lyads/av4;

    new-instance v3, Lyads/oi6;

    invoke-direct {v3}, Lyads/oi6;-><init>()V

    invoke-direct {v2, v1, p2, v3}, Lyads/av4;-><init>(Landroid/content/Context;Ljava/lang/String;Lyads/ds;)V

    iget-object p2, v0, Lyads/wd6;->b:Lyads/e85;

    invoke-virtual {p2, v2}, Lyads/e85;->a(Lyads/r75;)V

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method
