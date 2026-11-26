.class public final Lcom/warefly/checkscan/presentation/commonDialogs/BannerBottomSheetDialog$b;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/commonDialogs/BannerBottomSheetDialog;->onCreate(Landroid/os/Bundle;)V
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
.field public final synthetic f:Lcom/warefly/checkscan/presentation/commonDialogs/BannerBottomSheetDialog;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/commonDialogs/BannerBottomSheetDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/commonDialogs/BannerBottomSheetDialog$b;->f:Lcom/warefly/checkscan/presentation/commonDialogs/BannerBottomSheetDialog;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/commonDialogs/BannerBottomSheetDialog$b;->f:Lcom/warefly/checkscan/presentation/commonDialogs/BannerBottomSheetDialog;

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/commonDialogs/BannerBottomSheetDialog;->d:Lhc0$a;

    iget-object v0, p1, Lhc0$a;->q:Lb06;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lb06;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v1, Lkd$e0$k;

    invoke-direct {v1, v0}, Lkd$e0$k;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lkd;->a()V

    :cond_0
    new-instance v0, Lkd$g0$a$a$c;

    iget p1, p1, Lhc0$a;->g:I

    invoke-direct {v0, p1}, Lkd$g0$a$a$c;-><init>(I)V

    invoke-virtual {v0}, Lkd;->c()V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
