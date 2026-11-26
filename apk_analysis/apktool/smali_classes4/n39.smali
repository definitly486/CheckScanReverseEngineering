.class public final Ln39;
.super Lxh3$a;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/RunnableFuture;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln39$b;,
        Ln39$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lxh3$a<",
        "TV;>;",
        "Ljava/util/concurrent/RunnableFuture<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public volatile j:Ly94;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly94<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lxh3;-><init>()V

    new-instance v0, Ln39$b;

    invoke-direct {v0, p0, p1}, Ln39$b;-><init>(Ln39;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Ln39;->j:Ly94;

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 1

    invoke-virtual {p0}, Ll0;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ln39;->j:Ly94;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ly94;->d()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Ln39;->j:Ly94;

    return-void
.end method

.method public final k()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Ln39;->j:Ly94;

    if-eqz v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "task=["

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0}, Ll0;->k()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final run()V
    .locals 1

    iget-object v0, p0, Ln39;->j:Ly94;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ly94;->run()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Ln39;->j:Ly94;

    return-void
.end method
