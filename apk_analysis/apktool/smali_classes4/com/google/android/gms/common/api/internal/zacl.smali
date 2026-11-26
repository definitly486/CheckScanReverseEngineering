.class public final Lcom/google/android/gms/common/api/internal/zacl;
.super Lcom/google/android/gms/signin/internal/zac;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# static fields
.field public static final q:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/os/Handler;

.field public final l:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

.field public final m:Ljava/util/Set;

.field public final n:Lcom/google/android/gms/common/internal/ClientSettings;

.field public o:Lcom/google/android/gms/signin/zae;

.field public p:Lcom/google/android/gms/common/api/internal/zack;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/signin/zad;->zac:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    sput-object v0, Lcom/google/android/gms/common/api/internal/zacl;->q:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/common/internal/ClientSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/signin/internal/zac;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zacl;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zacl;->b:Landroid/os/Handler;

    const-string p1, "ClientSettings must not be null"

    invoke-static {p3, p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/internal/ClientSettings;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zacl;->n:Lcom/google/android/gms/common/internal/ClientSettings;

    invoke-virtual {p3}, Lcom/google/android/gms/common/internal/ClientSettings;->getRequiredScopes()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zacl;->m:Ljava/util/Set;

    sget-object p1, Lcom/google/android/gms/common/api/internal/zacl;->q:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zacl;->l:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zacl;->o:Lcom/google/android/gms/signin/zae;

    invoke-interface {p1, p0}, Lcom/google/android/gms/signin/zae;->zaa(Lcom/google/android/gms/signin/internal/zae;)V

    return-void
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zacl;->p:Lcom/google/android/gms/common/api/internal/zack;

    invoke-interface {p0, p1}, Lcom/google/android/gms/common/api/internal/zack;->zaa(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method public final onConnectionSuspended(I)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zacl;->p:Lcom/google/android/gms/common/api/internal/zack;

    invoke-interface {p0, p1}, Lcom/google/android/gms/common/api/internal/zack;->zab(I)V

    return-void
.end method

.method public final zab(Lcom/google/android/gms/signin/internal/zak;)V
    .locals 1

    new-instance v0, Llka;

    invoke-direct {v0, p0, p1}, Llka;-><init>(Lcom/google/android/gms/common/api/internal/zacl;Lcom/google/android/gms/signin/internal/zak;)V

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zacl;->b:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zac(Lcom/google/android/gms/common/api/internal/zack;)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zacl;->o:Lcom/google/android/gms/signin/zae;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$Client;->disconnect()V

    :cond_0
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/zacl;->n:Lcom/google/android/gms/common/internal/ClientSettings;

    invoke-virtual {v4, v0}, Lcom/google/android/gms/common/internal/ClientSettings;->zae(Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zacl;->b:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v4}, Lcom/google/android/gms/common/internal/ClientSettings;->zac()Lcom/google/android/gms/signin/SignInOptions;

    move-result-object v5

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zacl;->l:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zacl;->a:Landroid/content/Context;

    move-object v7, p0

    move-object v6, p0

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;->buildClient(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Ljava/lang/Object;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$Client;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/signin/zae;

    iput-object p0, v6, Lcom/google/android/gms/common/api/internal/zacl;->o:Lcom/google/android/gms/signin/zae;

    iput-object p1, v6, Lcom/google/android/gms/common/api/internal/zacl;->p:Lcom/google/android/gms/common/api/internal/zack;

    iget-object p0, v6, Lcom/google/android/gms/common/api/internal/zacl;->m:Ljava/util/Set;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, v6, Lcom/google/android/gms/common/api/internal/zacl;->o:Lcom/google/android/gms/signin/zae;

    invoke-interface {p0}, Lcom/google/android/gms/signin/zae;->zad()V

    return-void

    :cond_2
    :goto_0
    new-instance p0, Lkka;

    invoke-direct {p0, v6}, Lkka;-><init>(Lcom/google/android/gms/common/api/internal/zacl;)V

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zad()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zacl;->o:Lcom/google/android/gms/signin/zae;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/common/api/Api$Client;->disconnect()V

    :cond_0
    return-void
.end method
