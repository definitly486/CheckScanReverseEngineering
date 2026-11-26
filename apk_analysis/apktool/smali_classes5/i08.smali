.class public final Li08;
.super La75;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li08$a;,
        Li08$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "La75<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final b:Lmz7;

.field public final c:Lgf1;


# direct methods
.method public constructor <init>(Lmz7;Lgf1;)V
    .locals 0

    invoke-direct {p0}, La75;-><init>()V

    iput-object p2, p0, Li08;->c:Lgf1;

    iput-object p1, p0, Li08;->b:Lmz7;

    return-void
.end method


# virtual methods
.method public final d(Lt75;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt75<",
            "-TR;>;)V"
        }
    .end annotation

    new-instance v0, Li08$b;

    iget-object v1, p0, Li08;->c:Lgf1;

    invoke-direct {v0, p1, v1}, Li08$b;-><init>(Lt75;Lgf1;)V

    iget-object p0, p0, Li08;->b:Lmz7;

    invoke-virtual {p0, v0}, Lmz7;->d(Lt08;)V

    return-void
.end method
