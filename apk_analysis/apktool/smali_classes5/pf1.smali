.class public final Lpf1;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Ljava/util/List<",
        "+",
        "Lld1;",
        ">;",
        "Lx75<",
        "+",
        "Lkd1;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final f:Lpf1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lpf1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Lpf1;->f:Lpf1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lqn1;->V(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lld1;

    if-eqz p0, :cond_0

    new-instance p1, Lkd1;

    invoke-virtual {p0}, Lld1;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lld1;->a()Lld1$a;

    move-result-object v1

    invoke-virtual {v1}, Lld1$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lld1;->a()Lld1$a;

    move-result-object p0

    invoke-virtual {p0}, Lld1$a;->b()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, v1, p0}, Lkd1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, La75;->b(Ljava/lang/Object;)Lq75;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Lg75;->b:Lg75;

    return-object p0
.end method
