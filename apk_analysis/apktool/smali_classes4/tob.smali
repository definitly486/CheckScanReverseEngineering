.class public final synthetic Ltob;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/measurement/internal/zzht;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzht;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltob;->b:Lcom/google/android/gms/measurement/internal/zzht;

    iput-object p2, p0, Ltob;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzn;

    new-instance v1, Lfob;

    iget-object v2, p0, Ltob;->b:Lcom/google/android/gms/measurement/internal/zzht;

    iget-object p0, p0, Ltob;->c:Ljava/lang/String;

    invoke-direct {v1, v2, p0}, Lfob;-><init>(Lcom/google/android/gms/measurement/internal/zzht;Ljava/lang/String;)V

    const-string p0, "internal.remoteConfig"

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/measurement/zzn;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzo;)V

    return-object v0
.end method
