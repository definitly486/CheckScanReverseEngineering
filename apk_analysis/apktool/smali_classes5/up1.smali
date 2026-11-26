.class public final Lup1;
.super Lqp1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lup1$a;
    }
.end annotation


# instance fields
.field public final b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Lqp1;-><init>()V

    iput-object p1, p0, Lup1;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final h(Lmq1;)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lup1;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-string v0, "The iterator returned is null"

    invoke-static {p0, v0}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lup1$a;

    invoke-direct {v0, p1, p0}, Lup1$a;-><init>(Lmq1;Ljava/util/Iterator;)V

    iget-object p0, v0, Lup1$a;->d:Lkp7;

    invoke-interface {p1, p0}, Lmq1;->onSubscribe(Lcp2;)V

    invoke-virtual {v0}, Lup1$a;->a()V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lm13;->d(Ljava/lang/Throwable;)V

    sget-object v0, Lhx2;->INSTANCE:Lhx2;

    invoke-interface {p1, v0}, Lmq1;->onSubscribe(Lcp2;)V

    invoke-interface {p1, p0}, Lmq1;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
