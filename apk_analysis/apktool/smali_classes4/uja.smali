.class public final Luja;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$SignOutCallbacks;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/common/api/internal/zabk;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zabk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luja;->a:Lcom/google/android/gms/common/api/internal/zabk;

    return-void
.end method


# virtual methods
.method public final onSignOutComplete()V
    .locals 1

    new-instance v0, Ltja;

    invoke-direct {v0, p0}, Ltja;-><init>(Luja;)V

    iget-object p0, p0, Luja;->a:Lcom/google/android/gms/common/api/internal/zabk;

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zabk;->v:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->o:Lcom/google/android/gms/internal/base/zar;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
