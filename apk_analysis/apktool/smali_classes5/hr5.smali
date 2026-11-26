.class public final Lhr5;
.super Lqp1;
.source "SourceFile"

# interfaces
.implements Lvm3;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhr5$a;
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
.field public final b:Lpr5;

.field public final c:Lvq;


# direct methods
.method public constructor <init>(Lpr5;Lvq;)V
    .locals 0

    invoke-direct {p0}, Lqp1;-><init>()V

    iput-object p1, p0, Lhr5;->b:Lpr5;

    iput-object p2, p0, Lhr5;->c:Lvq;

    return-void
.end method


# virtual methods
.method public final a()Ltq5;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltq5<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lgr5;

    iget-object v1, p0, Lhr5;->b:Lpr5;

    iget-object p0, p0, Lhr5;->c:Lvq;

    invoke-direct {v0, v1, p0}, Lgr5;-><init>(Lpr5;Lvq;)V

    return-object v0
.end method

.method public final h(Lmq1;)V
    .locals 2

    new-instance v0, Lhr5$a;

    iget-object v1, p0, Lhr5;->c:Lvq;

    invoke-direct {v0, p1, v1}, Lhr5$a;-><init>(Lmq1;Lvq;)V

    iget-object p0, p0, Lhr5;->b:Lpr5;

    invoke-virtual {p0, v0}, Ltq5;->a(Lls5;)V

    return-void
.end method
