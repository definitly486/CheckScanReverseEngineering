.class public final Ljm2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lim2;


# instance fields
.field public final a:Lem2;

.field public final b:Landroid/app/Application;


# direct methods
.method public constructor <init>(Lem2;Landroid/app/Application;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljm2;->a:Lem2;

    iput-object p2, p0, Ljm2;->b:Landroid/app/Application;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    iget-object p0, p0, Ljm2;->b:Landroid/app/Application;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final b(Lgm2;Lqo7;)Ljava/lang/Object;
    .locals 8

    new-instance v0, Lkm2;

    iget-object v1, p1, Lgm2;->c:Ljava/lang/String;

    iget-object v2, p1, Lgm2;->b:Ljava/lang/String;

    iget-object v4, p1, Lgm2;->d:Ljava/lang/String;

    iget-object v5, p1, Lgm2;->e:Ljava/lang/String;

    iget-object v6, p1, Lgm2;->f:Ljava/lang/String;

    iget-object v7, p1, Lgm2;->g:Ljava/lang/String;

    move-object v3, v1

    invoke-direct/range {v0 .. v7}, Lkm2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Ljm2;->a:Lem2;

    invoke-interface {p0, v0, p2}, Lem2;->c(Lkm2;Le02;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
