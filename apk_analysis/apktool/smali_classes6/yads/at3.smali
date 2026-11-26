.class public final Lyads/at3;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public b:Lyg5;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/String;

.field public e:I

.field public final synthetic f:Lyads/ct3;

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lyads/ct3;Ljava/lang/String;Le02;)V
    .locals 0

    iput-object p1, p0, Lyads/at3;->f:Lyads/ct3;

    iput-object p2, p0, Lyads/at3;->g:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 1

    new-instance p1, Lyads/at3;

    iget-object v0, p0, Lyads/at3;->f:Lyads/ct3;

    iget-object p0, p0, Lyads/at3;->g:Ljava/lang/String;

    invoke-direct {p1, v0, p0, p2}, Lyads/at3;-><init>(Lyads/ct3;Ljava/lang/String;Le02;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ly22;

    check-cast p2, Le02;

    new-instance p1, Lyads/at3;

    iget-object v0, p0, Lyads/at3;->f:Lyads/ct3;

    iget-object p0, p0, Lyads/at3;->g:Ljava/lang/String;

    invoke-direct {p1, v0, p0, p2}, Lyads/at3;-><init>(Lyads/ct3;Ljava/lang/String;Le02;)V

    sget-object p0, Lj59;->a:Lj59;

    invoke-virtual {p1, p0}, Lyads/at3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lyads/at3;->e:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    if-eq v1, v2, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v0, p0, Lyads/at3;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object p0, p0, Lyads/at3;->b:Lyg5;

    :try_start_0
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v4

    :cond_1
    iget-object v1, p0, Lyads/at3;->d:Ljava/lang/String;

    iget-object v2, p0, Lyads/at3;->c:Ljava/lang/Object;

    check-cast v2, Lyads/ct3;

    iget-object v5, p0, Lyads/at3;->b:Lyg5;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    move-object v6, v5

    move-object v5, v1

    move-object v1, v6

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lyads/at3;->f:Lyads/ct3;

    iget-object v1, p1, Lyads/ct3;->d:Lyg5;

    iget-object v5, p0, Lyads/at3;->g:Ljava/lang/String;

    iput-object v1, p0, Lyads/at3;->b:Lyg5;

    iput-object p1, p0, Lyads/at3;->c:Ljava/lang/Object;

    iput-object v5, p0, Lyads/at3;->d:Ljava/lang/String;

    iput v2, p0, Lyads/at3;->e:I

    invoke-interface {v1, v4, p0}, Lyg5;->lock(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_3

    goto :goto_1

    :cond_3
    move-object v2, p1

    :goto_0
    :try_start_1
    iput-object v1, p0, Lyads/at3;->b:Lyg5;

    iput-object v5, p0, Lyads/at3;->c:Ljava/lang/Object;

    iput-object v4, p0, Lyads/at3;->d:Ljava/lang/String;

    iput v3, p0, Lyads/at3;->e:I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lqo2;->a:Loi2;

    sget-object p1, Lsh2;->c:Lsh2;

    new-instance v3, Lyads/ws3;

    invoke-direct {v3, v2, v4}, Lyads/ws3;-><init>(Lyads/ct3;Le02;)V

    invoke-static {p1, v3, p0}, Lav0;->d(Lo22;Lbm3;Le02;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p1, v0, :cond_4

    :goto_1
    return-object v0

    :cond_4
    move-object p0, v1

    move-object v0, v5

    :goto_2
    :try_start_2
    check-cast p1, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    const-string v2, "light_bundle_script.js"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    const-string v3, "light_bundle_script.js.tmp"

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2, v0}, Lda3;->f(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_5

    :catch_0
    move-object p0, v1

    :catch_1
    :try_start_3
    sget-object p1, Lj59;->a:Lj59;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    invoke-interface {p0, v4}, Lyg5;->unlock(Ljava/lang/Object;)V

    return-object p1

    :goto_4
    move-object v1, p0

    move-object p0, p1

    :goto_5
    invoke-interface {v1, v4}, Lyg5;->unlock(Ljava/lang/Object;)V

    throw p0
.end method
