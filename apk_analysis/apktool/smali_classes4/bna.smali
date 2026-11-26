.class public final synthetic Lbna;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/internal/auth-api/zbat;

.field public final synthetic c:Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/auth-api/zbat;Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbna;->b:Lcom/google/android/gms/internal/auth-api/zbat;

    iput-object p2, p0, Lbna;->c:Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest;

    return-void
.end method


# virtual methods
.method public final synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    check-cast p1, Lcom/google/android/gms/internal/auth-api/zbau;

    new-instance v0, Lzma;

    iget-object v1, p0, Lbna;->b:Lcom/google/android/gms/internal/auth-api/zbat;

    invoke-direct {v0, v1, p2}, Lzma;-><init>(Lcom/google/android/gms/internal/auth-api/zbat;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/auth-api/zbv;

    iget-object p0, p0, Lbna;->c:Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest;

    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/auth-api/zbba;->zba(Landroid/content/Context;)Lcom/google/android/gms/common/api/ApiMetadata;

    move-result-object p1

    invoke-virtual {p2, v0, p0, p1}, Lcom/google/android/gms/internal/auth-api/zbv;->zbe(Lcom/google/android/gms/internal/auth-api/zbq;Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest;Lcom/google/android/gms/common/api/ApiMetadata;)V

    return-void
.end method
