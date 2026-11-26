.class public final Lky0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgm5;


# instance fields
.field public final a:Lokhttp3/OkHttpClient;


# direct methods
.method public synthetic constructor <init>(Lokhttp3/OkHttpClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lky0;->a:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public static b(Lokhttp3/OkHttpClient;Ltm5;Lbm3;Lf02;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p3, Ljy0;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Ljy0;

    iget v1, v0, Ljy0;->o:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Ljy0;->o:I

    goto :goto_0

    :cond_0
    new-instance v0, Ljy0;

    invoke-direct {v0, p3}, Lf02;-><init>(Le02;)V

    :goto_0
    iget-object p3, v0, Ljy0;->n:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Ljy0;->o:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Ljy0;->l:Ljava/lang/Object;

    check-cast p0, Ljava/io/Closeable;

    :try_start_0
    invoke-static {p3}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_4

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v6

    :cond_2
    iget-object p0, v0, Ljy0;->l:Ljava/lang/Object;

    check-cast p0, Lbm3;

    invoke-static {p3}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object p0, v0, Ljy0;->m:Lokhttp3/OkHttpClient;

    iget-object p1, v0, Ljy0;->l:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Lbm3;

    invoke-static {p3}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p3}, Lr57;->b(Ljava/lang/Object;)V

    iput-object p2, v0, Ljy0;->l:Ljava/lang/Object;

    iput-object p0, v0, Ljy0;->m:Lokhttp3/OkHttpClient;

    iput v5, v0, Ljy0;->o:I

    invoke-static {p1, v0}, Lny0;->c(Ltm5;Lf02;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_5

    goto :goto_3

    :cond_5
    :goto_1
    check-cast p3, Lb37;

    invoke-interface {p0, p3}, Lokhttp3/a$a;->b(Lb37;)Ljy6;

    move-result-object p0

    iput-object p2, v0, Ljy0;->l:Ljava/lang/Object;

    iput-object v6, v0, Ljy0;->m:Lokhttp3/OkHttpClient;

    iput v4, v0, Ljy0;->o:I

    new-instance p1, Lc31;

    invoke-static {v0}, Lzya;->b(Le02;)Le02;

    move-result-object p3

    invoke-direct {p1, v5, p3}, Lc31;-><init>(ILe02;)V

    invoke-virtual {p1}, Lc31;->u()V

    new-instance p3, Lyy0;

    invoke-direct {p3, p0}, Lyy0;-><init>(Lokhttp3/a;)V

    invoke-virtual {p1, p3}, Lc31;->n(Lnl3;)V

    new-instance p3, Lzy0;

    invoke-direct {p3, p1}, Lzy0;-><init>(Lc31;)V

    invoke-static {p0, p3}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->enqueue(Lokhttp3/a;Lty0;)V

    invoke-virtual {p1}, Lc31;->s()Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_6

    goto :goto_3

    :cond_6
    move-object p0, p2

    :goto_2
    move-object p1, p3

    check-cast p1, Ljava/io/Closeable;

    :try_start_1
    move-object p2, p1

    check-cast p2, Lz47;

    invoke-static {p2}, Lny0;->b(Lz47;)Lvm5;

    move-result-object p2

    iput-object p1, v0, Ljy0;->l:Ljava/lang/Object;

    iput v3, v0, Ljy0;->o:I

    invoke-interface {p0, p2, v0}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p3, v1, :cond_7

    :goto_3
    return-object v1

    :cond_7
    move-object p0, p1

    :goto_4
    invoke-static {p0, v6}, Lm96;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p3

    :catchall_1
    move-exception p0

    move-object v7, p1

    move-object p1, p0

    move-object p0, v7

    :goto_5
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception p2

    invoke-static {p0, p1}, Lm96;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public final a(Ltm5;Lbm3;Lkm5$b;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lky0;->a:Lokhttp3/OkHttpClient;

    invoke-static {p0, p1, p2, p3}, Lky0;->b(Lokhttp3/OkHttpClient;Ltm5;Lbm3;Lf02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lky0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lky0;

    iget-object p1, p1, Lky0;->a:Lokhttp3/OkHttpClient;

    iget-object p0, p0, Lky0;->a:Lokhttp3/OkHttpClient;

    if-eq p0, p1, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lky0;->a:Lokhttp3/OkHttpClient;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CallFactoryNetworkClient(callFactory="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lky0;->a:Lokhttp3/OkHttpClient;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
