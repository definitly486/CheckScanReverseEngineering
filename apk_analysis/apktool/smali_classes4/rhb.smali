.class public final Lrhb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lulb;


# direct methods
.method public constructor <init>(Lulb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrhb;->b:Lulb;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lrhb;->b:Lulb;

    iget-object v0, p0, Lulb;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lulb;->d:Lcom/google/android/gms/tasks/OnCanceledListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/tasks/OnCanceledListener;->onCanceled()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
