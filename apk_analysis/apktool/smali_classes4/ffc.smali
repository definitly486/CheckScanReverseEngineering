.class public final synthetic Lffc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lks;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/measurement/zztp;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zztp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lffc;->a:Lcom/google/android/gms/internal/measurement/zztp;

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzth;

    iget-object p0, p0, Lffc;->a:Lcom/google/android/gms/internal/measurement/zztp;

    iget-object p0, p0, Lifc;->e:Lcom/google/android/gms/internal/measurement/zzvm;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzvm;->zza()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method
