.class public final Lg75;
.super La75;
.source "SourceFile"

# interfaces
.implements Lkd7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "La75<",
        "Ljava/lang/Object;",
        ">;",
        "Lkd7<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lg75;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg75;

    invoke-direct {v0}, La75;-><init>()V

    sput-object v0, Lg75;->b:Lg75;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final d(Lt75;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt75<",
            "-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    sget-object p0, Lhx2;->INSTANCE:Lhx2;

    invoke-interface {p1, p0}, Lt75;->onSubscribe(Lcp2;)V

    invoke-interface {p1}, Lt75;->onComplete()V

    return-void
.end method
