.class public Landroidx/browser/auth/AuthTabIntent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/browser/auth/AuthTabIntent$AuthenticateUserResultContract;,
        Landroidx/browser/auth/AuthTabIntent$AuthResult;,
        Landroidx/browser/auth/AuthTabIntent$Builder;,
        Landroidx/browser/auth/AuthTabIntent$ResultCode;
    }
.end annotation


# static fields
.field public static final EXTRA_HTTPS_REDIRECT_HOST:Ljava/lang/String; = "androidx.browser.auth.extra.HTTPS_REDIRECT_HOST"

.field public static final EXTRA_HTTPS_REDIRECT_PATH:Ljava/lang/String; = "androidx.browser.auth.extra.HTTPS_REDIRECT_PATH"

.field public static final EXTRA_LAUNCH_AUTH_TAB:Ljava/lang/String; = "androidx.browser.auth.extra.LAUNCH_AUTH_TAB"

.field public static final EXTRA_REDIRECT_SCHEME:Ljava/lang/String; = "androidx.browser.auth.extra.REDIRECT_SCHEME"

.field public static final RESULT_CANCELED:I = 0x0

.field public static final RESULT_OK:I = -0x1

.field public static final RESULT_UNKNOWN_CODE:I = -0x2

.field public static final RESULT_VERIFICATION_FAILED:I = 0x2

.field public static final RESULT_VERIFICATION_TIMED_OUT:I = 0x3


# instance fields
.field public final intent:Landroid/content/Intent;

.field private final mPendingSession:Landroidx/browser/auth/AuthTabSession$PendingSession;

.field private final mSession:Landroidx/browser/auth/AuthTabSession;


# direct methods
.method private constructor <init>(Landroid/content/Intent;Landroidx/browser/auth/AuthTabSession;Landroidx/browser/auth/AuthTabSession$PendingSession;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/browser/auth/AuthTabIntent;->intent:Landroid/content/Intent;

    iput-object p2, p0, Landroidx/browser/auth/AuthTabIntent;->mSession:Landroidx/browser/auth/AuthTabSession;

    iput-object p3, p0, Landroidx/browser/auth/AuthTabIntent;->mPendingSession:Landroidx/browser/auth/AuthTabSession$PendingSession;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Intent;Landroidx/browser/auth/AuthTabSession;Landroidx/browser/auth/AuthTabSession$PendingSession;Landroidx/browser/auth/AuthTabIntent$1;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2, p3}, Landroidx/browser/auth/AuthTabIntent;-><init>(Landroid/content/Intent;Landroidx/browser/auth/AuthTabSession;Landroidx/browser/auth/AuthTabSession$PendingSession;)V

    return-void
.end method

.method public static getColorSchemeParams(Landroid/content/Intent;I)Landroidx/browser/auth/AuthTabColorSchemeParams;
    .locals 3

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    invoke-static {p0}, Landroidx/browser/auth/AuthTabColorSchemeParams;->fromBundle(Landroid/os/Bundle;)Landroidx/browser/auth/AuthTabColorSchemeParams;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Landroidx/browser/auth/AuthTabColorSchemeParams;->fromBundle(Landroid/os/Bundle;)Landroidx/browser/auth/AuthTabColorSchemeParams;

    move-result-object v0

    const-string v1, "androidx.browser.customtabs.extra.COLOR_SCHEME_PARAMS"

    const-class v2, Landroid/os/Bundle;

    invoke-static {p0, v1, v2}, Landroidx/core/os/BundleCompat;->getSparseParcelableArray(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Landroid/util/SparseArray;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    if-eqz p0, :cond_1

    invoke-static {p0}, Landroidx/browser/auth/AuthTabColorSchemeParams;->fromBundle(Landroid/os/Bundle;)Landroidx/browser/auth/AuthTabColorSchemeParams;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/browser/auth/AuthTabColorSchemeParams;->withDefaults(Landroidx/browser/auth/AuthTabColorSchemeParams;)Landroidx/browser/auth/AuthTabColorSchemeParams;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static registerActivityResultLauncher(Landroidx/activity/result/ActivityResultCaller;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/activity/result/ActivityResultCaller;",
            "Landroidx/activity/result/ActivityResultCallback<",
            "Landroidx/browser/auth/AuthTabIntent$AuthResult;",
            ">;)",
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroidx/browser/auth/AuthTabIntent$AuthenticateUserResultContract;

    invoke-direct {v0}, Landroidx/browser/auth/AuthTabIntent$AuthenticateUserResultContract;-><init>()V

    invoke-interface {p0, v0, p1}, Landroidx/activity/result/ActivityResultCaller;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getCloseButtonIcon()Landroid/graphics/Bitmap;
    .locals 2

    iget-object p0, p0, Landroidx/browser/auth/AuthTabIntent;->intent:Landroid/content/Intent;

    const-string v0, "android.support.customtabs.extra.CLOSE_BUTTON_ICON"

    const-class v1, Landroid/graphics/Bitmap;

    invoke-static {p0, v0, v1}, Landroidx/core/content/IntentCompat;->getParcelableExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getPendingSession()Landroidx/browser/auth/AuthTabSession$PendingSession;
    .locals 0

    iget-object p0, p0, Landroidx/browser/auth/AuthTabIntent;->mPendingSession:Landroidx/browser/auth/AuthTabSession$PendingSession;

    return-object p0
.end method

.method public getSession()Landroidx/browser/auth/AuthTabSession;
    .locals 0

    iget-object p0, p0, Landroidx/browser/auth/AuthTabIntent;->mSession:Landroidx/browser/auth/AuthTabSession;

    return-object p0
.end method

.method public isEphemeralBrowsingEnabled()Z
    .locals 2

    iget-object p0, p0, Landroidx/browser/auth/AuthTabIntent;->intent:Landroid/content/Intent;

    const-string v0, "androidx.browser.customtabs.extra.ENABLE_EPHEMERAL_BROWSING"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public launch(Landroidx/activity/result/ActivityResultLauncher;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Landroidx/browser/auth/AuthTabIntent;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 26
    iget-object p2, p0, Landroidx/browser/auth/AuthTabIntent;->intent:Landroid/content/Intent;

    const-string v0, "androidx.browser.auth.extra.REDIRECT_SCHEME"

    invoke-virtual {p2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    iget-object p0, p0, Landroidx/browser/auth/AuthTabIntent;->intent:Landroid/content/Intent;

    invoke-virtual {p1, p0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method public launch(Landroidx/activity/result/ActivityResultLauncher;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/browser/auth/AuthTabIntent;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object p2, p0, Landroidx/browser/auth/AuthTabIntent;->intent:Landroid/content/Intent;

    const-string v0, "androidx.browser.auth.extra.HTTPS_REDIRECT_HOST"

    invoke-virtual {p2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Landroidx/browser/auth/AuthTabIntent;->intent:Landroid/content/Intent;

    const-string p3, "androidx.browser.auth.extra.HTTPS_REDIRECT_PATH"

    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Landroidx/browser/auth/AuthTabIntent;->intent:Landroid/content/Intent;

    invoke-virtual {p1, p0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method
