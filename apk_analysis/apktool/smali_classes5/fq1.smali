.class public final Lfq1;
.super Lqp1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfq1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lqp1;"
    }
.end annotation


# instance fields
.field public final b:Lmz7;


# direct methods
.method public constructor <init>(Lmz7;)V
    .locals 0

    invoke-direct {p0}, Lqp1;-><init>()V

    iput-object p1, p0, Lfq1;->b:Lmz7;

    return-void
.end method


# virtual methods
.method public final h(Lmq1;)V
    .locals 1

    new-instance v0, Lfq1$a;

    invoke-direct {v0, p1}, Lfq1$a;-><init>(Lmq1;)V

    iget-object p0, p0, Lfq1;->b:Lmz7;

    invoke-virtual {p0, v0}, Lmz7;->d(Lt08;)V

    return-void
.end method
