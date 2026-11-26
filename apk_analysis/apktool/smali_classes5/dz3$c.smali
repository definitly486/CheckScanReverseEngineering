.class public final Ldz3$c;
.super Ldz3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldz3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResponseT:",
        "Ljava/lang/Object;",
        ">",
        "Ldz3<",
        "TResponseT;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final d:Lgy0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgy0<",
            "TResponseT;",
            "Lfy0<",
            "TResponseT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lm37;Lokhttp3/a$a;Li02;Lgy0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm37;",
            "Lokhttp3/a$a;",
            "Li02<",
            "Lb57;",
            "TResponseT;>;",
            "Lgy0<",
            "TResponseT;",
            "Lfy0<",
            "TResponseT;>;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Ldz3;-><init>(Lm37;Lokhttp3/a$a;Li02;)V

    iput-object p4, p0, Ldz3$c;->d:Lgy0;

    return-void
.end method


# virtual methods
.method public final c(Lgv5;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Ldz3$c;->d:Lgy0;

    invoke-interface {p0, p1}, Lgy0;->b(Lgv5;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfy0;

    array-length p1, p2

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    aget-object p1, p2, p1

    check-cast p1, Le02;

    :try_start_0
    new-instance p2, Lc31;

    invoke-static {p1}, Lzya;->b(Le02;)Le02;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lc31;-><init>(ILe02;)V

    invoke-virtual {p2}, Lc31;->u()V

    new-instance v0, Lrg4;

    invoke-direct {v0, p0}, Lrg4;-><init>(Lfy0;)V

    invoke-virtual {p2, v0}, Lc31;->n(Lnl3;)V

    new-instance v0, Lsg4;

    invoke-direct {v0, p2}, Lsg4;-><init>(Lc31;)V

    invoke-interface {p0, v0}, Lfy0;->o(Lsy0;)V

    invoke-virtual {p2}, Lc31;->s()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0, p1}, Lqg4;->c(Ljava/lang/Throwable;Le02;)La32;

    move-result-object p0

    return-object p0
.end method
