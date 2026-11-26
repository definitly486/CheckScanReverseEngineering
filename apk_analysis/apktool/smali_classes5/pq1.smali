.class public final Lpq1;
.super Lqp1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpq1$a;
    }
.end annotation


# instance fields
.field public final b:Lqp1;

.field public final c:Lxl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxl3<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Lqq1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lqp1;Lxl3;)V
    .locals 0

    invoke-direct {p0}, Lqp1;-><init>()V

    iput-object p1, p0, Lpq1;->b:Lqp1;

    iput-object p2, p0, Lpq1;->c:Lxl3;

    return-void
.end method


# virtual methods
.method public final h(Lmq1;)V
    .locals 2

    new-instance v0, Lpq1$a;

    iget-object v1, p0, Lpq1;->c:Lxl3;

    invoke-direct {v0, p1, v1}, Lpq1$a;-><init>(Lmq1;Lxl3;)V

    invoke-interface {p1, v0}, Lmq1;->onSubscribe(Lcp2;)V

    iget-object p0, p0, Lpq1;->b:Lqp1;

    invoke-virtual {p0, v0}, Lqp1;->b(Lmq1;)V

    return-void
.end method
