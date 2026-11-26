.class public final synthetic Lrbc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lks;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/measurement/zzqt;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzqt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrbc;->a:Lcom/google/android/gms/internal/measurement/zzqt;

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    iget-object p0, p0, Lrbc;->a:Lcom/google/android/gms/internal/measurement/zzqt;

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzqv;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzqt;->zzc(Lcom/google/android/gms/internal/measurement/zzqv;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method
