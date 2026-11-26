.class public final Ltf9;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;

.field public final b:Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment$d;

.field public c:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field public d:Landroid/net/Uri;

.field public final e:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment$d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltf9;->a:Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;

    iput-object p2, p0, Ltf9;->b:Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment$d;

    new-instance p2, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {p2}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v0, Lo61;

    invoke-direct {v0, p0}, Lo61;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, p2, v0}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Ltf9;->e:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method
