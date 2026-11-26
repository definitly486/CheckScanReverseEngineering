.class public final Lcom/warefly/checkscan/presentation/queue/view/OfferCardDialog$a;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/queue/view/OfferCardDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

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
.field public final synthetic f:Lcom/warefly/checkscan/presentation/queue/view/OfferCardDialog;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/queue/view/OfferCardDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/queue/view/OfferCardDialog$a;->f:Lcom/warefly/checkscan/presentation/queue/view/OfferCardDialog;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lkd$j$b$c$b;->e:Lkd$j$b$c$b;

    invoke-virtual {v0}, Lkd;->a()V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/queue/view/OfferCardDialog$a;->f:Lcom/warefly/checkscan/presentation/queue/view/OfferCardDialog;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/queue/view/OfferCardDialog;->d:Lhc9;

    invoke-virtual {v0, p1}, Lhc9;->onClick(Landroid/view/View;)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
