.class public final Ltp1;
.super Lqp1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltp1$a;
    }
.end annotation


# instance fields
.field public final b:[Lqq1;


# direct methods
.method public constructor <init>([Lqq1;)V
    .locals 0

    invoke-direct {p0}, Lqp1;-><init>()V

    iput-object p1, p0, Ltp1;->b:[Lqq1;

    return-void
.end method


# virtual methods
.method public final h(Lmq1;)V
    .locals 1

    new-instance v0, Ltp1$a;

    iget-object p0, p0, Ltp1;->b:[Lqq1;

    invoke-direct {v0, p1, p0}, Ltp1$a;-><init>(Lmq1;[Lqq1;)V

    iget-object p0, v0, Ltp1$a;->e:Lkp7;

    invoke-interface {p1, p0}, Lmq1;->onSubscribe(Lcp2;)V

    invoke-virtual {v0}, Ltp1$a;->a()V

    return-void
.end method
