.class public final Lyads/ek6;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le02;)V
    .locals 0

    iput-object p1, p0, Lyads/ek6;->c:Landroid/content/Context;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 1

    new-instance v0, Lyads/ek6;

    iget-object p0, p0, Lyads/ek6;->c:Landroid/content/Context;

    invoke-direct {v0, p0, p2}, Lyads/ek6;-><init>(Landroid/content/Context;Le02;)V

    iput-object p1, v0, Lyads/ek6;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ly22;

    check-cast p2, Le02;

    new-instance v0, Lyads/ek6;

    iget-object p0, p0, Lyads/ek6;->c:Landroid/content/Context;

    invoke-direct {v0, p0, p2}, Lyads/ek6;-><init>(Landroid/content/Context;Le02;)V

    iput-object p1, v0, Lyads/ek6;->b:Ljava/lang/Object;

    sget-object p0, Lj59;->a:Lj59;

    invoke-virtual {v0, p0}, Lyads/ek6;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lyads/ek6;->b:Ljava/lang/Object;

    check-cast p1, Ly22;

    iget-object p0, p0, Lyads/ek6;->c:Landroid/content/Context;

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    new-instance p1, Lk57$a;

    invoke-direct {p1, p0}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    :goto_0
    new-instance p1, Lk57;

    invoke-direct {p1, p0}, Lk57;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method
