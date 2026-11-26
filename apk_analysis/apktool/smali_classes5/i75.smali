.class public final Li75;
.super La75;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li75$a;
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
.field public final b:Lmz7;

.field public final c:Lze6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lze6<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmz7;Lze6;)V
    .locals 0

    invoke-direct {p0}, La75;-><init>()V

    iput-object p1, p0, Li75;->b:Lmz7;

    iput-object p2, p0, Li75;->c:Lze6;

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

    new-instance v0, Li75$a;

    iget-object v1, p0, Li75;->c:Lze6;

    invoke-direct {v0, p1, v1}, Li75$a;-><init>(Lt75;Lze6;)V

    iget-object p0, p0, Li75;->b:Lmz7;

    invoke-virtual {p0, v0}, Lmz7;->d(Lt08;)V

    return-void
.end method
