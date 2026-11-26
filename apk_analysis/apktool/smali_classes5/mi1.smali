.class public final Lmi1;
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
.field public final synthetic f:Lli1;

.field public final synthetic g:Lla8;


# direct methods
.method public constructor <init>(Lli1;Lla8;)V
    .locals 0

    iput-object p1, p0, Lmi1;->f:Lli1;

    iput-object p2, p0, Lmi1;->g:Lla8;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lmi1;->f:Lli1;

    iget-object p1, p1, Lli1;->b:Lnl3;

    iget-object p0, p0, Lmi1;->g:Lla8;

    iget-object p0, p0, Lla8;->a:Ljava/lang/String;

    invoke-interface {p1, p0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
