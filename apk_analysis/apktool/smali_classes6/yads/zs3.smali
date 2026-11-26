.class public final Lyads/zs3;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public b:I

.field public final synthetic c:Lyads/ct3;


# direct methods
.method public constructor <init>(Lyads/ct3;Le02;)V
    .locals 0

    iput-object p1, p0, Lyads/zs3;->c:Lyads/ct3;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 0

    new-instance p1, Lyads/zs3;

    iget-object p0, p0, Lyads/zs3;->c:Lyads/ct3;

    invoke-direct {p1, p0, p2}, Lyads/zs3;-><init>(Lyads/ct3;Le02;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    new-instance p1, Lyads/zs3;

    iget-object p0, p0, Lyads/zs3;->c:Lyads/ct3;

    invoke-direct {p1, p0, p2}, Lyads/zs3;-><init>(Lyads/ct3;Le02;)V

    sget-object p0, Lj59;->a:Lj59;

    invoke-virtual {p1, p0}, Lyads/zs3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lyads/zs3;->b:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    :try_start_1
    iget-object p1, p0, Lyads/zs3;->c:Lyads/ct3;

    iput v2, p0, Lyads/zs3;->b:I

    sget-object v1, Lqo2;->a:Loi2;

    sget-object v1, Lsh2;->c:Lsh2;

    new-instance v2, Lyads/ws3;

    invoke-direct {v2, p1, v3}, Lyads/ws3;-><init>(Lyads/ct3;Le02;)V

    invoke-static {v1, v2, p0}, Lav0;->d(Lo22;Lbm3;Le02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Ljava/io/File;

    new-instance p0, Ljava/io/File;

    const-string v0, "light_bundle_script.js"

    invoke-direct {p0, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {p0}, Lda3;->e(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    :cond_3
    return-object v3
.end method
