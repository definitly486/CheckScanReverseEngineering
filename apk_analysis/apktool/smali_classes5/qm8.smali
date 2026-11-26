.class public final Lqm8;
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
.field public final synthetic f:Lpm8;

.field public final synthetic g:Lrm8;


# direct methods
.method public constructor <init>(Lpm8;Lrm8;)V
    .locals 0

    iput-object p1, p0, Lqm8;->f:Lpm8;

    iput-object p2, p0, Lqm8;->g:Lrm8;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lqm8;->f:Lpm8;

    iget-object p1, p1, Lpm8;->b:Lpm8$b;

    iget-object p0, p0, Lqm8;->g:Lrm8;

    iget p0, p0, Lrm8;->a:I

    invoke-interface {p1, p0}, Lpm8$b;->onDailyTaskCardClicked(I)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
