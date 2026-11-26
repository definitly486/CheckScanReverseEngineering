.class public final Ljyb;
.super Lcom/google/android/gms/internal/measurement/zzkn;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/android/gms/common/api/internal/ListenerHolder;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/zzkk;Lcom/google/android/gms/common/api/internal/ListenerHolder;)V
    .locals 0

    iput-object p2, p0, Ljyb;->a:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzkn;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb([B)V
    .locals 1

    new-instance v0, Ltxb;

    invoke-direct {v0, p0, p1}, Ltxb;-><init>(Ljyb;[B)V

    iget-object p0, p0, Ljyb;->a:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/ListenerHolder;->notifyListener(Lcom/google/android/gms/common/api/internal/ListenerHolder$Notifier;)V

    return-void
.end method
