.class public final Lk75;
.super Ltq5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk75$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ltq5<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final b:Lr75;

.field public final c:Lki0;


# direct methods
.method public constructor <init>(Lr75;Lki0;)V
    .locals 0

    invoke-direct {p0}, Ltq5;-><init>()V

    iput-object p1, p0, Lk75;->b:Lr75;

    iput-object p2, p0, Lk75;->c:Lki0;

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

    new-instance v0, Lk75$a;

    iget-object v1, p0, Lk75;->c:Lki0;

    invoke-direct {v0, p1, v1}, Lk75$a;-><init>(Lls5;Lki0;)V

    invoke-interface {p1, v0}, Lls5;->onSubscribe(Lcp2;)V

    iget-object p0, p0, Lk75;->b:Lr75;

    invoke-virtual {p0, v0}, La75;->a(Lt75;)V

    return-void
.end method
