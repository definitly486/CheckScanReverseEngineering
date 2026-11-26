.class public final Lir6;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Landroid/view/View;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Ljr6;

.field public final synthetic g:Lgr6;


# direct methods
.method public constructor <init>(Ljr6;Lgr6;)V
    .locals 0

    iput-object p1, p0, Lir6;->f:Ljr6;

    iput-object p2, p0, Lir6;->g:Lgr6;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lir6;->f:Ljr6;

    iget-object p1, p1, Ljr6;->b:Lsk0;

    iget-object p0, p0, Lir6;->g:Lgr6;

    iget-wide v0, p0, Lgr6;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p1, p0}, Lsk0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
