.class public final Lxxa;
.super Lgxa;
.source "SourceFile"


# instance fields
.field public final synthetic r:Lcom/google/android/gms/auth/api/proxy/ProxyRequest;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/auth/api/proxy/ProxyRequest;)V
    .locals 0

    iput-object p2, p0, Lxxa;->r:Lcom/google/android/gms/auth/api/proxy/ProxyRequest;

    sget-object p2, Lcom/google/android/gms/auth/api/AuthProxy;->API:Lcom/google/android/gms/common/api/Api;

    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;-><init>(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method
