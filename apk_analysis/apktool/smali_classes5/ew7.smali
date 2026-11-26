.class public final Lew7;
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
.field public final synthetic f:Ldw7;

.field public final synthetic g:Ldn1;


# direct methods
.method public constructor <init>(Ldw7;Ldn1;)V
    .locals 0

    iput-object p1, p0, Lew7;->f:Ldw7;

    iput-object p2, p0, Lew7;->g:Ldn1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lew7;->f:Ldw7;

    iget-object p1, p1, Ldw7;->b:Lbv7;

    iget-object p0, p0, Lew7;->g:Ldn1;

    iget-object p0, p0, Ldn1;->e:Lb06;

    invoke-interface {p1, p0}, Lbv7;->onOrdClick(Lb06;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
