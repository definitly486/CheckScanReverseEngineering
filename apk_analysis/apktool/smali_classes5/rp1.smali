.class public final Lrp1;
.super Lqp1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrp1$a;,
        Lrp1$b;
    }
.end annotation


# instance fields
.field public final b:Lqp1;

.field public final c:Lqq1;


# direct methods
.method public constructor <init>(Lqp1;Lqq1;)V
    .locals 0

    invoke-direct {p0}, Lqp1;-><init>()V

    iput-object p1, p0, Lrp1;->b:Lqp1;

    iput-object p2, p0, Lrp1;->c:Lqq1;

    return-void
.end method


# virtual methods
.method public final h(Lmq1;)V
    .locals 2

    new-instance v0, Lrp1$b;

    iget-object v1, p0, Lrp1;->c:Lqq1;

    invoke-direct {v0, p1, v1}, Lrp1$b;-><init>(Lmq1;Lqq1;)V

    iget-object p0, p0, Lrp1;->b:Lqp1;

    invoke-virtual {p0, v0}, Lqp1;->b(Lmq1;)V

    return-void
.end method
