.class public final synthetic Lyk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field public final synthetic b:Ljava/util/concurrent/ThreadFactory;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Llt;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/ThreadFactory;Ljava/lang/String;Llt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyk;->b:Ljava/util/concurrent/ThreadFactory;

    iput-object p2, p0, Lyk;->c:Ljava/lang/String;

    iput-object p3, p0, Lyk;->d:Llt;

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    iget-object v0, p0, Lyk;->c:Ljava/lang/String;

    iget-object v1, p0, Lyk;->d:Llt;

    iget-object p0, p0, Lyk;->b:Ljava/util/concurrent/ThreadFactory;

    invoke-static {p0, v0, v1, p1}, Landroidx/camera/camera2/pipe/core/AndroidThreads;->b(Ljava/util/concurrent/ThreadFactory;Ljava/lang/String;Llt;Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method
