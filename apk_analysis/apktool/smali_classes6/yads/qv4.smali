.class public final Lyads/qv4;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public b:I

.field public final synthetic c:Lyads/sv4;


# direct methods
.method public constructor <init>(Lyads/sv4;Le02;)V
    .locals 0

    iput-object p1, p0, Lyads/qv4;->c:Lyads/sv4;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 0

    new-instance p1, Lyads/qv4;

    iget-object p0, p0, Lyads/qv4;->c:Lyads/sv4;

    invoke-direct {p1, p0, p2}, Lyads/qv4;-><init>(Lyads/sv4;Le02;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    new-instance p1, Lyads/qv4;

    iget-object p0, p0, Lyads/qv4;->c:Lyads/sv4;

    invoke-direct {p1, p0, p2}, Lyads/qv4;-><init>(Lyads/sv4;Le02;)V

    sget-object p0, Lj59;->a:Lj59;

    invoke-virtual {p1, p0}, Lyads/qv4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lyads/qv4;->b:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lyads/qv4;->c:Lyads/sv4;

    iput v3, p0, Lyads/qv4;->b:I

    new-instance v1, Lc31;

    invoke-static {p0}, Lzya;->b(Le02;)Le02;

    move-result-object p0

    invoke-direct {v1, v3, p0}, Lc31;-><init>(ILe02;)V

    invoke-virtual {v1}, Lc31;->u()V

    :try_start_0
    iget-object p0, p1, Lyads/sv4;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/appset/AppSet;->getClient(Landroid/content/Context;)Lcom/google/android/gms/appset/AppSetIdClient;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/gms/appset/AppSetIdClient;->getAppSetIdInfo()Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    new-instance p1, Lyads/ov4;

    invoke-direct {p1, v1}, Lyads/ov4;-><init>(Lc31;)V

    new-instance v3, Lyads/rv4;

    invoke-direct {v3, p1}, Lyads/rv4;-><init>(Lyads/ov4;)V

    invoke-virtual {p0, v3}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    new-instance p1, Lyads/pv4;

    invoke-direct {p1, v1}, Lyads/pv4;-><init>(Lc31;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    invoke-virtual {v1, v2, v2}, Lc31;->B(Ljava/lang/Object;Lps0;)V

    :goto_0
    invoke-virtual {v1}, Lc31;->s()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    return-object p0
.end method
