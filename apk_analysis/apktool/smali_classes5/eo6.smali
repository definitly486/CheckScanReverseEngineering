.class public final Leo6;
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
.field public final synthetic f:Lcom/warefly/checkscan/presentation/flows/promotions/registration/view/dialog/PromoResultDialog;

.field public final synthetic g:Lur6$c;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/flows/promotions/registration/view/dialog/PromoResultDialog;Lur6$c;)V
    .locals 0

    iput-object p1, p0, Leo6;->f:Lcom/warefly/checkscan/presentation/flows/promotions/registration/view/dialog/PromoResultDialog;

    iput-object p2, p0, Leo6;->g:Lur6$c;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Leo6;->f:Lcom/warefly/checkscan/presentation/flows/promotions/registration/view/dialog/PromoResultDialog;

    iget-object p0, p0, Leo6;->g:Lur6$c;

    iget-object p0, p0, Lur6$c;->d:Ljava/lang/String;

    sget-object v0, Lcom/warefly/checkscan/presentation/flows/promotions/registration/view/dialog/PromoResultDialog;->i:[Lze4;

    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1401dc

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/warefly/checkscan/presentation/flows/promotions/registration/view/dialog/PromoResultDialog;->f:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?after_event=checkscan://landing?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    goto :goto_1

    :goto_0
    new-instance v1, Lk57$a;

    invoke-direct {v1, v0}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v1

    :goto_1
    nop

    instance-of v1, v0, Lk57$a;

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    move-object p0, v0

    :goto_2
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/warefly/checkscan/core/ui/base/dialogs/BaseBottomSheetDialog;->openUrl(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
