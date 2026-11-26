.class public final Lrg3;
.super Lgg3;
.source "SourceFile"

# interfaces
.implements Lkd7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgg3<",
        "Ljava/lang/Object;",
        ">;",
        "Lkd7<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Lrg3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lrg3;

    invoke-direct {v0}, Lgg3;-><init>()V

    sput-object v0, Lrg3;->c:Lrg3;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final g(Lwb8;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwb8<",
            "-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    sget-object p0, Lqx2;->INSTANCE:Lqx2;

    invoke-interface {p1, p0}, Lwb8;->a(Lbc8;)V

    invoke-interface {p1}, Lwb8;->onComplete()V

    return-void
.end method
