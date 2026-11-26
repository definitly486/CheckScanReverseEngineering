.class public final Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Ljava/lang/String;)Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;
    .locals 3

    new-instance v0, Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;

    invoke-direct {v0}, Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;-><init>()V

    new-instance v1, Lb36;

    const-string v2, "LOADING_TEXT_KEY"

    invoke-direct {v1, v2, p0}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v1}, [Lb36;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/os/BundleKt;->bundleOf([Lb36;)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static synthetic b(Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog$a;)Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;
    .locals 1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog$a;->a(Ljava/lang/String;)Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;

    move-result-object p0

    return-object p0
.end method
