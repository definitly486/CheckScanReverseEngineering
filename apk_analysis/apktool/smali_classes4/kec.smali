.class public final synthetic Lkec;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lks;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/measurement/zztj;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zztj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkec;->a:Lcom/google/android/gms/internal/measurement/zztj;

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzafc;

    iget-object p0, p0, Lkec;->a:Lcom/google/android/gms/internal/measurement/zztj;

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zztj;->zzc()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method
