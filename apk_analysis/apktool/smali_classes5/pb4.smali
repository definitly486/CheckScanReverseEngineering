.class public final synthetic Lpb4;
.super Lqm3;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lqm3;",
        "Lnl3<",
        "Ljava/lang/Throwable;",
        "Lj59;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const-string v5, "invoke(Ljava/lang/Throwable;)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-class v3, Lrb4;

    const-string v4, "invoke"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lqm3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    iget-object p0, p0, Lqy0;->receiver:Ljava/lang/Object;

    check-cast p0, Lrb4;

    invoke-virtual {p0, p1}, Lrb4;->l(Ljava/lang/Throwable;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
