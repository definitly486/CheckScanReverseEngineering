.class public final Ldr5;
.super Ltq5;
.source "SourceFile"

# interfaces
.implements Lkd7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ltq5<",
        "Ljava/lang/Object;",
        ">;",
        "Lkd7<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Ldr5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldr5;

    invoke-direct {v0}, Ltq5;-><init>()V

    sput-object v0, Ldr5;->b:Ldr5;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final f(Lls5;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lls5<",
            "-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    sget-object p0, Lhx2;->INSTANCE:Lhx2;

    invoke-interface {p1, p0}, Lls5;->onSubscribe(Lcp2;)V

    invoke-interface {p1}, Lls5;->onComplete()V

    return-void
.end method
