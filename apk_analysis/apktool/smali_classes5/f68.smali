.class public final Lf68;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "La57<",
        "Ljava/util/List<",
        "+",
        "Ljc0;",
        ">;>;",
        "Lqq1;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lb68;


# direct methods
.method public constructor <init>(Lb68;)V
    .locals 0

    iput-object p1, p0, Lf68;->f:Lb68;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    check-cast p1, La57;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, La57;->b:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    sget-object v0, Lkx2;->b:Lkx2;

    if-nez p1, :cond_0

    move-object p1, v0

    :cond_0
    check-cast p1, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljc0;

    invoke-virtual {v3}, Ljc0;->a()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {v3}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {p1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljc0;

    invoke-virtual {v3}, Ljc0;->d()Lhc0$c;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget-object p0, p0, Lf68;->f:Lb68;

    iget-object v1, p0, Lb68;->a:Ljf6;

    invoke-static {}, Lht3;->c()Lcom/google/gson/Gson;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/gson/Gson;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljf6;->d1(Ljava/lang/String;)V

    iget-object v1, p0, Lb68;->c:Landroid/app/Application;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v0}, Lmz7;->e(Ljava/lang/Object;)Lo08;

    move-result-object p1

    goto :goto_3

    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1, v2}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhc0$c;

    iget-object v3, v3, Lhc0$c;->b:Ljava/lang/String;

    if-nez v3, :cond_6

    const-string v3, ""

    :cond_6
    new-instance v4, La68;

    invoke-direct {v4, v1, v3}, La68;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Loz7;

    invoke-direct {v3, v4}, Loz7;-><init>(Lw08;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    new-instance v1, Lc68;

    invoke-direct {v1, p0, p1}, Lc68;-><init>(Lb68;Ljava/util/ArrayList;)V

    new-instance p1, Lxq;

    const/4 v2, 0x4

    invoke-direct {p1, v1, v2}, Lxq;-><init>(Ljava/lang/Object;I)V

    new-instance v1, Lk18;

    invoke-direct {v1, v0, p1}, Lk18;-><init>(Ljava/util/ArrayList;Lxq;)V

    move-object p1, v1

    :goto_3
    new-instance v0, Ld68;

    invoke-direct {v0, p0}, Ld68;-><init>(Lb68;)V

    new-instance p0, Lf7;

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lf7;-><init>(Ljava/lang/Object;I)V

    new-instance v0, Lp08;

    invoke-direct {v0, p1, p0}, Lp08;-><init>(Lmz7;Lxl3;)V

    new-instance p0, Lfq1;

    invoke-direct {p0, v0}, Lfq1;-><init>(Lmz7;)V

    return-object p0
.end method
