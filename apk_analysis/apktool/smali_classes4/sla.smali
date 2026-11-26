.class public final Lsla;
.super Lcom/google/android/gms/common/api/internal/zabq;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/app/Dialog;

.field public final synthetic b:Lvla;


# direct methods
.method public constructor <init>(Lvla;Landroid/app/Dialog;)V
    .locals 0

    iput-object p2, p0, Lsla;->a:Landroid/app/Dialog;

    iput-object p1, p0, Lsla;->b:Lvla;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zabq;-><init>()V

    return-void
.end method


# virtual methods
.method public final zaa()V
    .locals 3

    iget-object v0, p0, Lsla;->b:Lvla;

    iget-object v0, v0, Lvla;->c:Lcom/google/android/gms/common/api/internal/zap;

    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/zap;->d:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zap;->c()V

    iget-object p0, p0, Lsla;->a:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method
