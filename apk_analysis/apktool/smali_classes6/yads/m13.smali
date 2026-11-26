.class public final Lyads/m13;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public b:I

.field public final synthetic c:Lyads/n13;

.field public final synthetic d:Lyads/n8;

.field public final synthetic e:Lyads/g13;

.field public final synthetic f:Lyads/ar;


# direct methods
.method public constructor <init>(Lyads/n13;Lyads/n8;Lyads/g13;Lyads/ar;Le02;)V
    .locals 0

    iput-object p1, p0, Lyads/m13;->c:Lyads/n13;

    iput-object p2, p0, Lyads/m13;->d:Lyads/n8;

    iput-object p3, p0, Lyads/m13;->e:Lyads/g13;

    iput-object p4, p0, Lyads/m13;->f:Lyads/ar;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 6

    new-instance v0, Lyads/m13;

    iget-object v1, p0, Lyads/m13;->c:Lyads/n13;

    iget-object v2, p0, Lyads/m13;->d:Lyads/n8;

    iget-object v3, p0, Lyads/m13;->e:Lyads/g13;

    iget-object v4, p0, Lyads/m13;->f:Lyads/ar;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lyads/m13;-><init>(Lyads/n13;Lyads/n8;Lyads/g13;Lyads/ar;Le02;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lyads/m13;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lyads/m13;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lyads/m13;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lyads/m13;->b:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    :try_start_0
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_6

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lyads/m13;->c:Lyads/n13;

    iget-object p1, p1, Lyads/n13;->d:Lyads/uz4;

    iget-object v1, p0, Lyads/m13;->d:Lyads/n8;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v1, Lyads/n8;->h:Ljava/lang/String;

    if-nez p1, :cond_c

    iget-object p1, p0, Lyads/m13;->c:Lyads/n13;

    iget-object p1, p1, Lyads/n13;->c:Lyads/al0;

    iget-object v1, p0, Lyads/m13;->e:Lyads/g13;

    iput v4, p0, Lyads/m13;->b:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_8

    if-eq p1, v4, :cond_7

    if-ne p1, v3, :cond_6

    sget-object p1, Lyads/jh;->d:Lyads/jh;

    if-nez p1, :cond_4

    sget-object p1, Lyads/jh;->c:Ljava/lang/Object;

    monitor-enter p1

    :try_start_1
    sget-object v1, Lyads/jh;->d:Lyads/jh;

    if-nez v1, :cond_3

    new-instance v1, Lyads/jh;

    invoke-direct {v1}, Lyads/jh;-><init>()V

    sput-object v1, Lyads/jh;->d:Lyads/jh;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_3
    :goto_0
    sget-object v1, Lj59;->a:Lj59;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p1

    goto :goto_2

    :goto_1
    monitor-exit p1

    throw p0

    :cond_4
    :goto_2
    sget-object p1, Lyads/jh;->d:Lyads/jh;

    if-eqz p1, :cond_5

    iget-object p1, p1, Lyads/jh;->a:Lyads/zz4;

    invoke-virtual {p1, p0}, Lyads/zz4;->a(Lf02;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_3

    :cond_5
    const-string p0, "Required value was null."

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-object v2

    :cond_6
    invoke-static {}, Lme0;->e()V

    return-object v2

    :cond_7
    invoke-static {}, Lyads/eb5;->a()Lyads/fb5;

    move-result-object p1

    iget-object p1, p1, Lyads/fb5;->a:Lyads/zz4;

    invoke-virtual {p1, p0}, Lyads/zz4;->a(Lf02;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_3

    :cond_8
    invoke-static {}, Lyads/xp3;->a()Lyads/yp3;

    move-result-object p1

    iget-object p1, p1, Lyads/yp3;->a:Lyads/zz4;

    invoke-virtual {p1, p0}, Lyads/zz4;->a(Lf02;)Ljava/lang/Object;

    move-result-object p1

    :goto_3
    if-ne p1, v0, :cond_9

    goto :goto_5

    :cond_9
    :goto_4
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_a

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_a
    iget-object p1, p0, Lyads/m13;->c:Lyads/n13;

    iget-object p1, p1, Lyads/n13;->e:Lyads/g1;

    iget-object v1, p0, Lyads/m13;->d:Lyads/n8;

    iget-object v4, p1, Lyads/g1;->b:Lyads/l13;

    invoke-virtual {v4, v1}, Lyads/l13;->a(Lyads/n8;)Ljava/lang/String;

    move-result-object v1

    iget-object p1, p1, Lyads/g1;->a:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v4, Lyp1;

    invoke-direct {v4}, Lyp1;-><init>()V

    invoke-virtual {p1, v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lyads/m13;->d:Lyads/n8;

    const-string v1, "smart"

    const/16 v4, 0x17ff

    invoke-static {p1, v2, v1, v4}, Lyads/n8;->a(Lyads/n8;Ljava/util/Map;Ljava/lang/String;I)Lyads/n8;

    move-result-object p1

    :try_start_2
    iget-object v1, p0, Lyads/m13;->f:Lyads/ar;

    iput v3, p0, Lyads/m13;->b:I

    invoke-virtual {v1, p1, p0}, Lyads/ar;->a(Lyads/n8;Lyads/m13;)Ljava/lang/Object;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-ne p0, v0, :cond_b

    :goto_5
    return-object v0

    :catch_0
    iget-object p1, p0, Lyads/m13;->e:Lyads/g13;

    iget-object p1, p1, Lyads/g13;->b:Ljava/lang/String;

    iget-object p0, p0, Lyads/m13;->d:Lyads/n8;

    iget-object p0, p0, Lyads/n8;->a:Ljava/lang/String;

    :cond_b
    :goto_6
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_c
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
