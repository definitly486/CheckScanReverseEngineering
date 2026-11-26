.class public final Lcom/warefly/checkscan/core/ui/base/dialogs/DialogTwoButtons$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/core/ui/base/dialogs/DialogTwoButtons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/warefly/checkscan/core/ui/base/dialogs/DialogTwoButtons;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/warefly/checkscan/core/ui/base/dialogs/DialogTwoButtons;

    invoke-direct {v0}, Lcom/warefly/checkscan/core/ui/base/dialogs/DialogTwoButtons;-><init>()V

    new-instance v1, Lb36;

    const-string v2, "TITLE_ARG"

    invoke-direct {v1, v2, p0}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p0, Lb36;

    const-string v2, "DESCRIPTION_ARG"

    invoke-direct {p0, v2, p1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p1, Lb36;

    const-string v2, "TOP_BUTTON_TITLE_ARG"

    invoke-direct {p1, v2, p2}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p2, Lb36;

    const-string v2, "BOTTOM_BUTTON_TITLE_ARG"

    invoke-direct {p2, v2, p3}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p3, Lb36;

    const-string v2, "DIALOG_TAG"

    invoke-direct {p3, v2, p4}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v1, p0, p1, p2, p3}, [Lb36;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/os/BundleKt;->bundleOf([Lb36;)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method
