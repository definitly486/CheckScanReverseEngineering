.class public final synthetic Lgfc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lks;


# instance fields
.field public final synthetic a:Lhfc;

.field public final synthetic b:Lks;

.field public final synthetic c:Ljava/util/concurrent/Executor;


# direct methods
.method public synthetic constructor <init>(Lhfc;Lks;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgfc;->a:Lhfc;

    iput-object p2, p0, Lgfc;->b:Lks;

    iput-object p3, p0, Lgfc;->c:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    check-cast p1, Ljava/lang/Void;

    iget-object p1, p0, Lgfc;->a:Lhfc;

    iget-object p1, p1, Lhfc;->a:Lcom/google/android/gms/internal/measurement/zztp;

    iget-object p1, p1, Lifc;->c:Lcom/google/android/gms/internal/measurement/zzuv;

    iget-object v0, p0, Lgfc;->c:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    iget-object p0, p0, Lgfc;->b:Lks;

    invoke-interface {p1, p0, v0, v1}, Lcom/google/android/gms/internal/measurement/zzuv;->zzb(Lks;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/measurement/zzuu;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method
