.class public final Lhy0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfm1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhy0$a;
    }
.end annotation


# instance fields
.field public final b:Lfm1;


# direct methods
.method public constructor <init>(Lfm1;Lez4$h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhy0;->b:Lfm1;

    return-void
.end method


# virtual methods
.method public final A()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    iget-object p0, p0, Lhy0;->b:Lfm1;

    invoke-interface {p0}, Lfm1;->A()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p0

    return-object p0
.end method

.method public final close()V
    .locals 0

    iget-object p0, p0, Lhy0;->b:Lfm1;

    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    return-void
.end method

.method public final d0(Ljava/net/SocketAddress;Lfm1$a;Lp94$g;)Lmw1;
    .locals 2

    new-instance v0, Lhy0$a;

    iget-object v1, p0, Lhy0;->b:Lfm1;

    invoke-interface {v1, p1, p2, p3}, Lfm1;->d0(Ljava/net/SocketAddress;Lfm1$a;Lp94$g;)Lmw1;

    move-result-object p1

    iget-object p2, p2, Lfm1$a;->a:Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2}, Lhy0$a;-><init>(Lhy0;Lmw1;Ljava/lang/String;)V

    return-object v0
.end method
