.class public final Lvp1;
.super Lqp1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvp1$a;
    }
.end annotation


# instance fields
.field public final b:Lz87;


# direct methods
.method public constructor <init>(Lz87;)V
    .locals 0

    invoke-direct {p0}, Lqp1;-><init>()V

    iput-object p1, p0, Lvp1;->b:Lz87;

    return-void
.end method


# virtual methods
.method public final h(Lmq1;)V
    .locals 1

    new-instance v0, Lvp1$a;

    invoke-direct {v0, p1}, Lvp1$a;-><init>(Lmq1;)V

    invoke-interface {p1, v0}, Lmq1;->onSubscribe(Lcp2;)V

    :try_start_0
    iget-object p0, p0, Lvp1;->b:Lz87;

    invoke-virtual {p0, v0}, Lz87;->a(Lvp1$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lm13;->d(Ljava/lang/Throwable;)V

    invoke-virtual {v0, p0}, Lvp1$a;->a(Ljava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {p0}, Ld97;->b(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
