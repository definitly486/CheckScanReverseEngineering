.class public final Lcic;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/internal/measurement/zzyd;

.field public final synthetic c:Lcom/google/android/gms/internal/measurement/zzyf;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/zzyf;Lcom/google/android/gms/internal/measurement/zzyd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcic;->b:Lcom/google/android/gms/internal/measurement/zzyd;

    iput-object p1, p0, Lcic;->c:Lcom/google/android/gms/internal/measurement/zzyf;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcic;->c:Lcom/google/android/gms/internal/measurement/zzyf;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzyf;->a:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object p0, p0, Lcic;->b:Lcom/google/android/gms/internal/measurement/zzyd;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
