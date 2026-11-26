.class public final Ll07;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Ljava/lang/Long;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/view/RedirectDialog;

.field public final synthetic g:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/view/RedirectDialog;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Ll07;->f:Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/view/RedirectDialog;

    iput-object p2, p0, Ll07;->g:Landroid/content/Context;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    rem-long/2addr v0, v2

    iget-object p1, p0, Ll07;->f:Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/view/RedirectDialog;

    invoke-virtual {p1}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/redirectDialog/view/RedirectDialog;->a()Lcom/warefly/checkscan/databinding/DialogRedirectBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/DialogRedirectBinding;->tvDescriptionInfo:Landroid/widget/TextView;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    iget-object p0, p0, Ll07;->g:Landroid/content/Context;

    const v1, 0x7f140557

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
