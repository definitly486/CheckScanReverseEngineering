.class public final Luxa;
.super Lcom/google/android/gms/internal/auth/zzbd;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lxxa;


# direct methods
.method public constructor <init>(Lxxa;)V
    .locals 0

    iput-object p1, p0, Luxa;->a:Lxxa;

    invoke-direct {p0}, Lcom/google/android/gms/internal/auth/zzbd;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/auth/api/proxy/ProxyResponse;)V
    .locals 1

    new-instance v0, Liya;

    invoke-direct {v0, p1}, Liya;-><init>(Lcom/google/android/gms/auth/api/proxy/ProxyResponse;)V

    iget-object p0, p0, Luxa;->a:Lxxa;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
