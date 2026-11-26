.class public final Lmr5;
.super Lqp1;
.source "SourceFile"

# interfaces
.implements Lvm3;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmr5$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lqp1;",
        "Lvm3<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:Ltq5;


# direct methods
.method public constructor <init>(Ltq5;)V
    .locals 0

    invoke-direct {p0}, Lqp1;-><init>()V

    iput-object p1, p0, Lmr5;->b:Ltq5;

    return-void
.end method


# virtual methods
.method public final a()Ltq5;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltq5<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Llr5;

    iget-object p0, p0, Lmr5;->b:Ltq5;

    invoke-direct {v0, p0}, Lg1;-><init>(Lwr5;)V

    return-object v0
.end method

.method public final h(Lmq1;)V
    .locals 1

    new-instance v0, Lmr5$a;

    invoke-direct {v0, p1}, Lmr5$a;-><init>(Lmq1;)V

    iget-object p0, p0, Lmr5;->b:Ltq5;

    invoke-virtual {p0, v0}, Ltq5;->a(Lls5;)V

    return-void
.end method
