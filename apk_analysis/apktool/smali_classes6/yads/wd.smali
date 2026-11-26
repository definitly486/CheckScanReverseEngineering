.class public final Lyads/wd;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public b:Ljava/lang/Object;

.field public c:I

.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:Lyads/yd;


# direct methods
.method public constructor <init>(Lyads/yd;Le02;)V
    .locals 0

    iput-object p1, p0, Lyads/wd;->e:Lyads/yd;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 1

    new-instance v0, Lyads/wd;

    iget-object p0, p0, Lyads/wd;->e:Lyads/yd;

    invoke-direct {v0, p0, p2}, Lyads/wd;-><init>(Lyads/yd;Le02;)V

    iput-object p1, v0, Lyads/wd;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ly22;

    check-cast p2, Le02;

    new-instance v0, Lyads/wd;

    iget-object p0, p0, Lyads/wd;->e:Lyads/yd;

    invoke-direct {v0, p0, p2}, Lyads/wd;-><init>(Lyads/yd;Le02;)V

    iput-object p1, v0, Lyads/wd;->d:Ljava/lang/Object;

    sget-object p0, Lj59;->a:Lj59;

    invoke-virtual {v0, p0}, Lyads/wd;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lyads/wd;->c:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v5, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lyads/wd;->b:Ljava/lang/Object;

    check-cast v0, Lyads/id;

    iget-object v1, p0, Lyads/wd;->d:Ljava/lang/Object;

    check-cast v1, Lyads/id;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v4

    :cond_1
    iget-object v1, p0, Lyads/wd;->b:Ljava/lang/Object;

    check-cast v1, Lyads/id;

    iget-object v3, p0, Lyads/wd;->d:Ljava/lang/Object;

    check-cast v3, Lmk2;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lyads/wd;->b:Ljava/lang/Object;

    check-cast v1, Lmk2;

    iget-object v4, p0, Lyads/wd;->d:Ljava/lang/Object;

    check-cast v4, Lmk2;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lyads/wd;->d:Ljava/lang/Object;

    check-cast p1, Ly22;

    new-instance v1, Lyads/ud;

    iget-object v6, p0, Lyads/wd;->e:Lyads/yd;

    invoke-direct {v1, v6, v4}, Lyads/ud;-><init>(Lyads/yd;Le02;)V

    invoke-static {p1, v4, v4, v1, v2}, Lav0;->a(Ly22;Lo22;Lc32;Lbm3;I)Lnk2;

    move-result-object v1

    new-instance v6, Lyads/vd;

    iget-object v7, p0, Lyads/wd;->e:Lyads/yd;

    invoke-direct {v6, v7, v4}, Lyads/vd;-><init>(Lyads/yd;Le02;)V

    invoke-static {p1, v4, v4, v6, v2}, Lav0;->a(Ly22;Lo22;Lc32;Lbm3;I)Lnk2;

    move-result-object v6

    new-instance v7, Lyads/td;

    iget-object v8, p0, Lyads/wd;->e:Lyads/yd;

    invoke-direct {v7, v8, v4}, Lyads/td;-><init>(Lyads/yd;Le02;)V

    invoke-static {p1, v4, v4, v7, v2}, Lav0;->a(Ly22;Lo22;Lc32;Lbm3;I)Lnk2;

    move-result-object p1

    iput-object v6, p0, Lyads/wd;->d:Ljava/lang/Object;

    iput-object p1, p0, Lyads/wd;->b:Ljava/lang/Object;

    iput v5, p0, Lyads/wd;->c:I

    invoke-virtual {v1, p0}, Lsb4;->u(Le02;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_4

    goto :goto_2

    :cond_4
    move-object v4, v1

    move-object v1, p1

    move-object p1, v4

    move-object v4, v6

    :goto_0
    check-cast p1, Lyads/id;

    iput-object v1, p0, Lyads/wd;->d:Ljava/lang/Object;

    iput-object p1, p0, Lyads/wd;->b:Ljava/lang/Object;

    iput v3, p0, Lyads/wd;->c:I

    invoke-interface {v4, p0}, Lmk2;->Z(Le02;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_5

    goto :goto_2

    :cond_5
    move-object v9, v1

    move-object v1, p1

    move-object p1, v3

    move-object v3, v9

    :goto_1
    check-cast p1, Lyads/id;

    iput-object v1, p0, Lyads/wd;->d:Ljava/lang/Object;

    iput-object p1, p0, Lyads/wd;->b:Ljava/lang/Object;

    iput v2, p0, Lyads/wd;->c:I

    invoke-interface {v3, p0}, Lmk2;->Z(Le02;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_6

    :goto_2
    return-object v0

    :cond_6
    move-object v0, p1

    move-object p1, v2

    :goto_3
    check-cast p1, Ljava/lang/String;

    iget-object v2, p0, Lyads/wd;->e:Lyads/yd;

    iget-object v2, v2, Lyads/yd;->d:Lyads/gd;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    if-eqz v1, :cond_9

    iget-object v4, v1, Lyads/id;->a:Ljava/lang/String;

    if-nez v4, :cond_7

    goto :goto_6

    :cond_7
    sget-object v6, Lyads/gd;->b:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-object v2, v2, Lyads/gd;->a:Lyads/zu3;

    const-string v7, "google_advertising_id_key"

    check-cast v2, Lyads/av3;

    invoke-virtual {v2, v7}, Lyads/av3;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_8

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_8
    move v5, v3

    :goto_4
    monitor-exit v6

    move v3, v5

    goto :goto_6

    :goto_5
    monitor-exit v6

    throw p0

    :cond_9
    :goto_6
    iget-object p0, p0, Lyads/wd;->e:Lyads/yd;

    iget-object p0, p0, Lyads/yd;->d:Lyads/gd;

    invoke-virtual {p0, v1, v0, p1}, Lyads/gd;->a(Lyads/id;Lyads/id;Ljava/lang/String;)V

    new-instance p0, Lyads/kd;

    invoke-direct {p0, v1, v0, v3, p1}, Lyads/kd;-><init>(Lyads/id;Lyads/id;ZLjava/lang/String;)V

    return-object p0
.end method
