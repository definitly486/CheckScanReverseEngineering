.class public final Lsp1;
.super Ltq5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsp1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ltq5<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final b:Lsq1;

.field public final c:Ltq5;


# direct methods
.method public constructor <init>(Lsq1;Ltq5;)V
    .locals 0

    invoke-direct {p0}, Ltq5;-><init>()V

    iput-object p1, p0, Lsp1;->b:Lsq1;

    iput-object p2, p0, Lsp1;->c:Ltq5;

    return-void
.end method


# virtual methods
.method public final f(Lls5;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lls5<",
            "-TR;>;)V"
        }
    .end annotation

    new-instance v0, Lsp1$a;

    iget-object v1, p0, Lsp1;->c:Ltq5;

    invoke-direct {v0, p1, v1}, Lsp1$a;-><init>(Lls5;Ltq5;)V

    invoke-interface {p1, v0}, Lls5;->onSubscribe(Lcp2;)V

    iget-object p0, p0, Lsp1;->b:Lsq1;

    invoke-virtual {p0, v0}, Lqp1;->b(Lmq1;)V

    return-void
.end method
