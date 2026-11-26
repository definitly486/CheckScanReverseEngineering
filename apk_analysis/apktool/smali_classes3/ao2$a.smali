.class public final Lao2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lao2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lao2;


# direct methods
.method public constructor <init>(Lao2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lao2$a;->b:Lao2;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lao2$a;->b:Lao2;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lao2$a;->b:Lao2;

    iget-object v2, v1, Lao2;->j:Ljava/io/BufferedWriter;

    if-nez v2, :cond_0

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lao2;->Q()V

    iget-object v1, p0, Lao2$a;->b:Lao2;

    invoke-virtual {v1}, Lao2;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lao2$a;->b:Lao2;

    invoke-virtual {v1}, Lao2;->E()V

    iget-object p0, p0, Lao2$a;->b:Lao2;

    const/4 v1, 0x0

    iput v1, p0, Lao2;->l:I

    :cond_1
    monitor-exit v0

    :goto_0
    const/4 p0, 0x0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
