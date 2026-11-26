.class public final Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public a:Lcom/google/android/gms/internal/auth-api/zbbj;

.field public b:Landroid/accounts/Account;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public build()Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest;
    .locals 3

    new-instance v0, Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest;

    iget-object v1, p0, Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest$Builder;->a:Lcom/google/android/gms/internal/auth-api/zbbj;

    iget-object v2, p0, Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest$Builder;->b:Landroid/accounts/Account;

    iget-object p0, p0, Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest$Builder;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p0}, Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest;-><init>(Ljava/util/List;Landroid/accounts/Account;Ljava/lang/String;)V

    return-object v0
.end method

.method public setAccount(Landroid/accounts/Account;)Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest$Builder;->b:Landroid/accounts/Account;

    return-object p0
.end method

.method public setScopes(Ljava/util/List;)Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)",
            "Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/auth-api/zbbj;->zbi(Ljava/util/Collection;)Lcom/google/android/gms/internal/auth-api/zbbj;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest$Builder;->a:Lcom/google/android/gms/internal/auth-api/zbbj;

    return-object p0
.end method

.method public final zba(Ljava/lang/String;)Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/auth/api/identity/RevokeAccessRequest$Builder;->c:Ljava/lang/String;

    return-object p0
.end method
