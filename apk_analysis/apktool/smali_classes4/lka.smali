.class public final Llka;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/signin/internal/zak;

.field public final synthetic c:Lcom/google/android/gms/common/api/internal/zacl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zacl;Lcom/google/android/gms/signin/internal/zak;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Llka;->b:Lcom/google/android/gms/signin/internal/zak;

    iput-object p1, p0, Llka;->c:Lcom/google/android/gms/common/api/internal/zacl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Llka;->b:Lcom/google/android/gms/signin/internal/zak;

    invoke-virtual {v0}, Lcom/google/android/gms/signin/internal/zak;->zaa()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v2

    iget-object p0, p0, Llka;->c:Lcom/google/android/gms/common/api/internal/zacl;

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/signin/internal/zak;->zab()Lcom/google/android/gms/common/internal/zaaa;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/zaaa;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zaaa;->zab()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    const-string v3, "SignInCoordinator"

    const-string v4, "Sign-in succeeded with resolve account failure: "

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zacl;->p:Lcom/google/android/gms/common/api/internal/zack;

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/internal/zack;->zaa(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zacl;->o:Lcom/google/android/gms/signin/zae;

    invoke-interface {p0}, Lcom/google/android/gms/common/api/Api$Client;->disconnect()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zacl;->p:Lcom/google/android/gms/common/api/internal/zack;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zaaa;->zaa()Lcom/google/android/gms/common/internal/IAccountAccessor;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zacl;->m:Ljava/util/Set;

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/common/api/internal/zack;->zac(Lcom/google/android/gms/common/internal/IAccountAccessor;Ljava/util/Set;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zacl;->p:Lcom/google/android/gms/common/api/internal/zack;

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/internal/zack;->zaa(Lcom/google/android/gms/common/ConnectionResult;)V

    :goto_0
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zacl;->o:Lcom/google/android/gms/signin/zae;

    invoke-interface {p0}, Lcom/google/android/gms/common/api/Api$Client;->disconnect()V

    return-void
.end method
