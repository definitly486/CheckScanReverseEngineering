.class public final Ln75;
.super La75;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln75$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "La75<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:Lqq1;


# direct methods
.method public constructor <init>(Lqp1;)V
    .locals 0

    invoke-direct {p0}, La75;-><init>()V

    iput-object p1, p0, Ln75;->b:Lqq1;

    return-void
.end method


# virtual methods
.method public final d(Lt75;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt75<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v0, Ln75$a;

    invoke-direct {v0, p1}, Ln75$a;-><init>(Lt75;)V

    iget-object p0, p0, Ln75;->b:Lqq1;

    invoke-interface {p0, v0}, Lqq1;->b(Lmq1;)V

    return-void
.end method
