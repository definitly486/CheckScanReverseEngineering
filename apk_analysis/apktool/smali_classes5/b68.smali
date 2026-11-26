.class public final Lb68;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb68$a;,
        Lb68$b;
    }
.end annotation


# instance fields
.field public final a:Ljf6;

.field public final b:Lrp0;

.field public final c:Landroid/app/Application;


# direct methods
.method public constructor <init>(Ljf6;Lrp0;Landroid/app/Application;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb68;->a:Ljf6;

    iput-object p2, p0, Lb68;->b:Lrp0;

    iput-object p3, p0, Lb68;->c:Landroid/app/Application;

    return-void
.end method


# virtual methods
.method public final a()Lhc0$c;
    .locals 7

    iget-object p0, p0, Lb68;->a:Ljf6;

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p0}, Ljf6;->t()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lht3;->c()Lcom/google/gson/Gson;

    move-result-object v2

    new-instance v3, Lb68$c;

    invoke-direct {v3}, Lb68$c;-><init>()V

    iget-object v3, v3, Lx39;->b:Ljava/lang/reflect/Type;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lx39;

    invoke-direct {v4, v3}, Lx39;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {v2, v1, v4}, Lcom/google/gson/Gson;->f(Ljava/lang/String;Lx39;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v1, v0

    goto/16 :goto_5

    :cond_0
    invoke-interface {p0}, Ljf6;->W()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lht3;->c()Lcom/google/gson/Gson;

    move-result-object v3

    new-instance v4, Lb68$d;

    invoke-direct {v4}, Lb68$d;-><init>()V

    iget-object v4, v4, Lx39;->b:Ljava/lang/reflect/Type;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v2, v4}, Lht3;->a(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb68$b;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lb68$b;->a()Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_1
    move-object v2, v0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lhc0$c;

    iget v5, v5, Lhc0$c;->a:I

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v5, v6, :cond_3

    goto :goto_3

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    const/4 v4, -0x1

    :goto_3
    add-int/lit8 v4, v4, 0x1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr v4, v2

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhc0$c;

    new-instance v2, Lb68$b;

    iget v3, v1, Lhc0$c;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3}, Lb68$b;-><init>(Ljava/lang/Integer;)V

    invoke-static {}, Lht3;->c()Lcom/google/gson/Gson;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/gson/Gson;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Ljf6;->g(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :goto_4
    new-instance v1, Lk57$a;

    invoke-direct {v1, p0}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    :goto_5
    instance-of p0, v1, Lk57$a;

    if-eqz p0, :cond_5

    goto :goto_6

    :cond_5
    move-object v0, v1

    :goto_6
    check-cast v0, Lhc0$c;

    return-object v0
.end method

.method public final b()Lnq1;
    .locals 4

    iget-object v0, p0, Lb68;->a:Ljf6;

    invoke-interface {v0}, Ljf6;->O0()I

    move-result v0

    sget-object v1, Lfc0;->SPLASH:Lfc0;

    const/4 v2, 0x0

    iget-object v3, p0, Lb68;->b:Lrp0;

    invoke-interface {v3, v1, v0, v2}, Lrp0;->b(Lfc0;ILjava/lang/Integer;)Lmz7;

    move-result-object v0

    new-instance v1, Lf68;

    invoke-direct {v1, p0}, Lf68;-><init>(Lb68;)V

    new-instance p0, Lwq;

    const/4 v2, 0x4

    invoke-direct {p0, v1, v2}, Lwq;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lh08;

    invoke-direct {v1, v0, p0}, Lh08;-><init>(Lmz7;Lxl3;)V

    new-instance p0, Lnq1;

    invoke-direct {p0, v1}, Lnq1;-><init>(Lqp1;)V

    return-object p0
.end method
