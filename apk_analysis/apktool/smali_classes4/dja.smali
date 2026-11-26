.class public final Ldja;
.super Lpja;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/google/android/gms/common/api/internal/zaar;

.field public final synthetic c:Lcom/google/android/gms/signin/internal/zak;


# direct methods
.method public constructor <init>(Leja;Lcom/google/android/gms/common/api/internal/zaar;Lcom/google/android/gms/common/api/internal/zaar;Lcom/google/android/gms/signin/internal/zak;)V
    .locals 0

    iput-object p3, p0, Ldja;->b:Lcom/google/android/gms/common/api/internal/zaar;

    iput-object p4, p0, Ldja;->c:Lcom/google/android/gms/signin/internal/zak;

    invoke-direct {p0, p2}, Lpja;-><init>(Lcom/google/android/gms/common/api/internal/zaba;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Ldja;->b:Lcom/google/android/gms/common/api/internal/zaar;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/api/internal/zaar;->g(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Ldja;->c:Lcom/google/android/gms/signin/internal/zak;

    invoke-virtual {p0}, Lcom/google/android/gms/signin/internal/zak;->zaa()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/signin/internal/zak;->zab()Lcom/google/android/gms/common/internal/zaaa;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/common/internal/zaaa;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zaaa;->zab()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    const-string v3, "GACConnecting"

    const-string v4, "Sign-in succeeded with resolve account failure: "

    invoke-virtual {v4, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/api/internal/zaar;->e(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/google/android/gms/common/api/internal/zaar;->n:Z

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zaaa;->zaa()Lcom/google/android/gms/common/internal/IAccountAccessor;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/IAccountAccessor;

    iput-object v0, v1, Lcom/google/android/gms/common/api/internal/zaar;->o:Lcom/google/android/gms/common/internal/IAccountAccessor;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zaaa;->zac()Z

    move-result v0

    iput-boolean v0, v1, Lcom/google/android/gms/common/api/internal/zaar;->p:Z

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zaaa;->zad()Z

    move-result p0

    iput-boolean p0, v1, Lcom/google/android/gms/common/api/internal/zaar;->q:Z

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zaar;->a()V

    return-void

    :cond_2
    iget-boolean p0, v1, Lcom/google/android/gms/common/api/internal/zaar;->l:Z

    if-eqz p0, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zaar;->d()V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zaar;->a()V

    return-void

    :cond_3
    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/api/internal/zaar;->e(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
