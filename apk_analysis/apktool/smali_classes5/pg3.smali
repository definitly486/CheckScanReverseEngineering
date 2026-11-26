.class public final Lpg3;
.super La75;
.source "SourceFile"

# interfaces
.implements Ltm3;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpg3$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "La75<",
        "TT;>;",
        "Ltm3<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:Lwg3;


# direct methods
.method public constructor <init>(Lwg3;)V
    .locals 0

    invoke-direct {p0}, La75;-><init>()V

    iput-object p1, p0, Lpg3;->b:Lwg3;

    return-void
.end method


# virtual methods
.method public final c()Lgg3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lgg3<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Log3;

    iget-object p0, p0, Lpg3;->b:Lwg3;

    invoke-direct {v0, p0}, Lk0;-><init>(Lgg3;)V

    return-object v0
.end method

.method public final d(Lt75;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt75<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v0, Lpg3$a;

    invoke-direct {v0, p1}, Lpg3$a;-><init>(Lt75;)V

    iget-object p0, p0, Lpg3;->b:Lwg3;

    invoke-virtual {p0, v0}, Lgg3;->f(Lrh3;)V

    return-void
.end method
