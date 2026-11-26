.class public final Lyads/vy1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/i36;


# instance fields
.field public final synthetic a:Lyads/uy1;

.field public final synthetic b:Lyads/gz1;

.field public final synthetic c:Lyads/ao2;

.field public final synthetic d:Lyads/fs2;


# direct methods
.method public constructor <init>(Lyads/uy1;Lyads/gz1;Lyads/ao2;Lyads/fs2;)V
    .locals 0

    iput-object p1, p0, Lyads/vy1;->a:Lyads/uy1;

    iput-object p2, p0, Lyads/vy1;->b:Lyads/gz1;

    iput-object p3, p0, Lyads/vy1;->c:Lyads/ao2;

    iput-object p4, p0, Lyads/vy1;->d:Lyads/fs2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Lyads/fs2;Ljava/lang/String;Lyads/ty1;)Z
    .locals 0

    .line 103
    iget-object p2, p2, Lyads/ty1;->b:Lyads/as2;

    invoke-virtual {p2, p0}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 102
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lyads/vy1;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lyads/vy1;->a:Lyads/uy1;

    iget-object v0, v0, Lyads/uy1;->A:Ljava/util/List;

    invoke-static {v0}, Lqn1;->K(Ljava/lang/Iterable;)Lpn1;

    move-result-object v0

    iget-object v1, p0, Lyads/vy1;->d:Lyads/fs2;

    new-instance v2, Lkl1;

    const/4 v3, 0x3

    invoke-direct {v2, v3, v1, p1}, Lkl1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v2}, Ljp7;->k(Lzo7;Lnl3;)Lpa3;

    move-result-object v0

    new-instance v1, Lpa3$a;

    invoke-direct {v1, v0}, Lpa3$a;-><init>(Lpa3;)V

    iget-object v0, p0, Lyads/vy1;->b:Lyads/gz1;

    invoke-virtual {v1}, Lpa3$a;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object p0, p0, Lyads/vy1;->c:Lyads/ao2;

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "No option found with value = \""

    const-string v3, "\""

    invoke-static {v2, p1, v3}, Lme0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lyads/ao2;->a(Ljava/lang/Throwable;)V

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lpa3$a;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/ty1;

    invoke-virtual {v1}, Lpa3$a;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lyads/vy1;->c:Lyads/ao2;

    new-instance v3, Ljava/lang/Throwable;

    const-string v4, "Multiple options found with value = \""

    const-string v5, "\", selecting first one"

    invoke-static {v4, p1, v5}, Lme0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lyads/ao2;->a(Ljava/lang/Throwable;)V

    :cond_1
    iget-object p1, v2, Lyads/ty1;->a:Lyads/as2;

    if-nez p1, :cond_2

    iget-object p1, v2, Lyads/ty1;->b:Lyads/as2;

    :cond_2
    iget-object p0, p0, Lyads/vy1;->d:Lyads/fs2;

    invoke-virtual {p1, p0}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final a(Lnl3;)V
    .locals 0

    .line 104
    iget-object p0, p0, Lyads/vy1;->b:Lyads/gz1;

    invoke-virtual {p0, p1}, Lyads/gz1;->setValueUpdater(Lnl3;)V

    return-void
.end method
