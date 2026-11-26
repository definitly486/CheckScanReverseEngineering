.class public final Lkma;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/PendingResult$StatusListener;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/common/api/internal/BasePendingResult;

.field public final synthetic b:Lcom/google/android/gms/common/api/internal/zaaa;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zaaa;Lcom/google/android/gms/common/api/internal/BasePendingResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lkma;->a:Lcom/google/android/gms/common/api/internal/BasePendingResult;

    iput-object p1, p0, Lkma;->b:Lcom/google/android/gms/common/api/internal/zaaa;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    iget-object p1, p0, Lkma;->b:Lcom/google/android/gms/common/api/internal/zaaa;

    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/zaaa;->a:Ljava/util/Map;

    iget-object p0, p0, Lkma;->a:Lcom/google/android/gms/common/api/internal/BasePendingResult;

    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
