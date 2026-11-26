.class public final Lufc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public b:Ljs;

.field public c:Ljava/util/concurrent/Executor;


# virtual methods
.method public final run()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lufc;->b:Ljs;

    iput-object v0, p0, Lufc;->c:Ljava/util/concurrent/Executor;

    return-void
.end method
