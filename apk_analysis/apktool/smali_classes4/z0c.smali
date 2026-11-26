.class public final synthetic Lz0c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljs;


# instance fields
.field public final synthetic b:Ljava/util/concurrent/Callable;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz0c;->b:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public final call()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzky;->a:Landroid/os/UserManager;

    sget-object v0, Ljn2;->INSTANCE:Ljn2;

    new-instance v1, Ln39;

    iget-object p0, p0, Lz0c;->b:Ljava/util/concurrent/Callable;

    invoke-direct {v1, p0}, Ln39;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-virtual {v0, v1}, Ljn2;->execute(Ljava/lang/Runnable;)V

    return-object v1
.end method
