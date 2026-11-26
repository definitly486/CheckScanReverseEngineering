.class public final Llq1;
.super Lqp1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llq1$a;
    }
.end annotation


# instance fields
.field public final b:Lqp1;

.field public final c:Lhe7;


# direct methods
.method public constructor <init>(Lqp1;Lhe7;)V
    .locals 0

    invoke-direct {p0}, Lqp1;-><init>()V

    iput-object p1, p0, Llq1;->b:Lqp1;

    iput-object p2, p0, Llq1;->c:Lhe7;

    return-void
.end method


# virtual methods
.method public final h(Lmq1;)V
    .locals 2

    new-instance v0, Llq1$a;

    iget-object v1, p0, Llq1;->c:Lhe7;

    invoke-direct {v0, p1, v1}, Llq1$a;-><init>(Lmq1;Lhe7;)V

    iget-object p0, p0, Llq1;->b:Lqp1;

    invoke-virtual {p0, v0}, Lqp1;->b(Lmq1;)V

    return-void
.end method
