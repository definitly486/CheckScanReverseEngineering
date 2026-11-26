.class public interface abstract Lyg5;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getOnLock()Lxl7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lxl7<",
            "Ljava/lang/Object;",
            "Lyg5;",
            ">;"
        }
    .end annotation
.end method

.method public abstract holdsLock(Ljava/lang/Object;)Z
.end method

.method public abstract isLocked()Z
.end method

.method public abstract lock(Ljava/lang/Object;Le02;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract tryLock(Ljava/lang/Object;)Z
.end method

.method public abstract unlock(Ljava/lang/Object;)V
.end method
