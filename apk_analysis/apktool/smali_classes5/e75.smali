.class public final Le75;
.super La75;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le75$a;,
        Le75$b;
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
.field public final b:La75;

.field public final c:Lqp1;


# direct methods
.method public constructor <init>(La75;Lqp1;)V
    .locals 0

    invoke-direct {p0}, La75;-><init>()V

    iput-object p1, p0, Le75;->b:La75;

    iput-object p2, p0, Le75;->c:Lqp1;

    return-void
.end method


# virtual methods
.method public final d(Lt75;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt75<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v0, Le75$b;

    iget-object v1, p0, Le75;->b:La75;

    invoke-direct {v0, p1, v1}, Le75$b;-><init>(Lt75;La75;)V

    iget-object p0, p0, Le75;->c:Lqp1;

    invoke-virtual {p0, v0}, Lqp1;->b(Lmq1;)V

    return-void
.end method
