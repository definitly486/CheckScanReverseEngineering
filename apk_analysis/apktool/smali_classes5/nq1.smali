.class public final Lnq1;
.super Lqp1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnq1$a;
    }
.end annotation


# instance fields
.field public final b:Lqp1;

.field public final c:Lrm3$m;


# direct methods
.method public constructor <init>(Lqp1;)V
    .locals 0

    invoke-direct {p0}, Lqp1;-><init>()V

    iput-object p1, p0, Lnq1;->b:Lqp1;

    sget-object p1, Lrm3;->f:Lrm3$m;

    iput-object p1, p0, Lnq1;->c:Lrm3$m;

    return-void
.end method


# virtual methods
.method public final h(Lmq1;)V
    .locals 1

    new-instance v0, Lnq1$a;

    invoke-direct {v0, p0, p1}, Lnq1$a;-><init>(Lnq1;Lmq1;)V

    iget-object p0, p0, Lnq1;->b:Lqp1;

    invoke-virtual {p0, v0}, Lqp1;->b(Lmq1;)V

    return-void
.end method
