.class public final Lyads/je;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Lyads/ke;

.field public final synthetic c:Lyads/rf;


# direct methods
.method public constructor <init>(Lyads/ke;Lyads/rf;Le02;)V
    .locals 0

    iput-object p1, p0, Lyads/je;->b:Lyads/ke;

    iput-object p2, p0, Lyads/je;->c:Lyads/rf;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 1

    new-instance p1, Lyads/je;

    iget-object v0, p0, Lyads/je;->b:Lyads/ke;

    iget-object p0, p0, Lyads/je;->c:Lyads/rf;

    invoke-direct {p1, v0, p0, p2}, Lyads/je;-><init>(Lyads/ke;Lyads/rf;Le02;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ly22;

    check-cast p2, Le02;

    new-instance p1, Lyads/je;

    iget-object v0, p0, Lyads/je;->b:Lyads/ke;

    iget-object p0, p0, Lyads/je;->c:Lyads/rf;

    invoke-direct {p1, v0, p0, p2}, Lyads/je;-><init>(Lyads/ke;Lyads/rf;Le02;)V

    sget-object p0, Lj59;->a:Lj59;

    invoke-virtual {p1, p0}, Lyads/je;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lyads/je;->b:Lyads/ke;

    iget-object v0, p0, Lyads/je;->c:Lyads/rf;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lyads/ke;->a(Lyads/rf;)V

    iget-object p1, p0, Lyads/je;->b:Lyads/ke;

    iget-object p1, p1, Lyads/ke;->a:Lyads/he;

    iget-object p0, p0, Lyads/je;->c:Lyads/rf;

    iget-object v0, p1, Lyads/he;->a:Lyads/lg;

    invoke-virtual {v0}, Lyads/lg;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p1, p1, Lyads/he;->b:Lyads/fj0;

    const-string v0, "ads_sdk"

    iget-object v1, p0, Lyads/rf;->a:Ljava/lang/String;

    iget-object p0, p0, Lyads/rf;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1, p0}, Lio/appmetrica/analytics/AppMetricaLibraryAdapter;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
