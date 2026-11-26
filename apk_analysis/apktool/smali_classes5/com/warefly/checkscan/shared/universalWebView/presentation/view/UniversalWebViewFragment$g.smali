.class public final Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln69$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment$g;->a:Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 1

    sget-object v0, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;->r:Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment$a;

    iget-object p0, p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment$g;->a:Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;

    iget-object v0, p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;->o:Landroid/webkit/WebChromeClient$CustomViewCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    :cond_0
    iput-object p2, p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;->o:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-virtual {p0}, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;->p()Lcom/warefly/checkscan/shared/universalWebView/databinding/FragmentUniversalWebViewBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/shared/universalWebView/databinding/FragmentUniversalWebViewBinding;->flFullScreenContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 p2, -0x1

    invoke-virtual {p0, p1, p2, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final b(Landroid/webkit/PermissionRequest;)V
    .locals 8

    iget-object p0, p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment$g;->a:Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;

    iget-object p0, p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;->k:Lvf9;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/webkit/PermissionRequest;->getResources()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x0

    if-ge v4, v2, :cond_3

    aget-object v6, v0, v4

    const-string v7, "android.webkit.resource.VIDEO_CAPTURE"

    invoke-static {v6, v7}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v5, "android.permission.CAMERA"

    goto :goto_1

    :cond_0
    const-string v7, "android.webkit.resource.AUDIO_CAPTURE"

    invoke-static {v6, v7}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v5, "android.permission.RECORD_AUDIO"

    :cond_1
    :goto_1
    if-eqz v5, :cond_2

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4}, Lvf9;->c(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-static {v0}, Lqn1;->x0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lqn1;->t0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0, p1}, Lvf9;->a(Landroid/webkit/PermissionRequest;)V

    return-void

    :cond_6
    iput-object p1, p0, Lvf9;->b:Landroid/webkit/PermissionRequest;

    :try_start_0
    iget-object v1, p0, Lvf9;->e:Landroidx/activity/result/ActivityResultLauncher;

    check-cast v0, Ljava/util/Collection;

    new-array v2, v3, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    sget-object v0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    new-instance v1, Lk57$a;

    invoke-direct {v1, v0}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v1

    :goto_3
    invoke-static {v0}, Lk57;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_7

    iput-object v5, p0, Lvf9;->b:Landroid/webkit/PermissionRequest;

    invoke-virtual {p0, p1}, Lvf9;->a(Landroid/webkit/PermissionRequest;)V

    :cond_7
    return-void
.end method

.method public final c(Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    iget-object p0, p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment$g;->a:Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;

    iget-object p0, p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;->j:Ltf9;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    iput-object v0, p0, Ltf9;->d:Landroid/net/Uri;

    :try_start_0
    invoke-virtual {p2}, Landroid/webkit/WebChromeClient$FileChooserParams;->createIntent()Landroid/content/Intent;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    new-instance v2, Lk57$a;

    invoke-direct {v2, v1}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object v1, v2

    :goto_0
    invoke-static {v1}, Lk57;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_b

    check-cast v1, Landroid/content/Intent;

    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.CHOOSER"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "android.intent.extra.INTENT"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v1, p0, Ltf9;->a:Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_1
    move-object v1, v0

    goto/16 :goto_5

    :cond_1
    invoke-virtual {p2}, Landroid/webkit/WebChromeClient$FileChooserParams;->getAcceptTypes()[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    array-length v5, p2

    move v6, v3

    :goto_2
    if-ge v6, v5, :cond_4

    aget-object v7, p2, v6

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    move-object v4, v0

    :cond_4
    if-nez v4, :cond_5

    sget-object v4, Lkx2;->b:Lkx2;

    :cond_5
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_8

    check-cast v4, Ljava/lang/Iterable;

    instance-of p2, v4, Ljava/util/Collection;

    if-eqz p2, :cond_6

    move-object p2, v4

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_6

    goto :goto_1

    :cond_6
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_7
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "image/"

    invoke-static {v4, v5, v3}, Lra8;->C(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_8

    const-string v5, "*/*"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_8
    const-string p2, "android.permission.CAMERA"

    invoke-static {v1, p2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_0

    :try_start_1
    new-instance p2, Ljava/io/File;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "universal_web_view_uploads"

    invoke-direct {p2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    const-string v4, "upload_"

    const-string v5, ".jpg"

    invoke-static {v4, v5, p2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p2

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".universalwebview.fileprovider"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, p2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p2

    new-instance v1, Lk57$a;

    invoke-direct {v1, p2}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object p2, v1

    :goto_3
    invoke-static {p2}, Lk57;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_9

    goto :goto_4

    :cond_9
    move-object p2, v0

    :goto_4
    check-cast p2, Landroid/net/Uri;

    if-nez p2, :cond_a

    goto/16 :goto_1

    :cond_a
    iput-object p2, p0, Ltf9;->d:Landroid/net/Uri;

    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "output"

    invoke-virtual {v1, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p2, 0x2

    invoke-virtual {v1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :goto_5
    if-eqz v1, :cond_c

    filled-new-array {v1}, [Landroid/content/Intent;

    move-result-object p2

    check-cast p2, [Landroid/os/Parcelable;

    const-string v1, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {v2, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_6

    :cond_b
    move-object v2, v0

    :cond_c
    :goto_6
    if-nez v2, :cond_d

    goto :goto_b

    :cond_d
    iget-object p2, p0, Ltf9;->c:Landroid/webkit/ValueCallback;

    iput-object p1, p0, Ltf9;->c:Landroid/webkit/ValueCallback;

    :try_start_2
    iget-object p1, p0, Ltf9;->e:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {p1, v2}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    if-eqz p2, :cond_e

    invoke-interface {p2, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_7

    :catchall_2
    move-exception p1

    goto :goto_8

    :cond_e
    :goto_7
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_9

    :goto_8
    new-instance v0, Lk57$a;

    invoke-direct {v0, p1}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object p1, v0

    :goto_9
    invoke-static {p1}, Lk57;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_f

    goto :goto_a

    :cond_f
    iput-object p2, p0, Ltf9;->c:Landroid/webkit/ValueCallback;

    iget-object p0, p0, Ltf9;->b:Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment$d;

    invoke-virtual {p0}, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment$d;->invoke()Ljava/lang/Object;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_a
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    :goto_b
    return v3
.end method

.method public final d(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment$g;->a:Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;

    invoke-virtual {p0}, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;->q()Lcom/warefly/checkscan/shared/universalWebView/presentation/presenter/UniversalWebViewPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/warefly/checkscan/shared/universalWebView/presentation/presenter/UniversalWebViewPresenter;->onUrlLoading(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;->n:Landroid/webkit/WebView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment$g;->a:Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;

    invoke-virtual {p0}, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;->q()Lcom/warefly/checkscan/shared/universalWebView/presentation/presenter/UniversalWebViewPresenter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/shared/universalWebView/presentation/presenter/UniversalWebViewPresenter;->onTitleReceived(Ljava/lang/String;)V

    return-void
.end method

.method public final f(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 3

    iget-object p0, p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment$g;->a:Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;

    iget-object p0, p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;->k:Lvf9;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    sget-object v2, Lvf9;->f:[Ljava/lang/String;

    if-ge v0, v1, :cond_2

    aget-object v1, v2, v0

    invoke-virtual {p0, v1}, Lvf9;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1, p2}, Lvf9;->b(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iput-object p1, p0, Lvf9;->c:Ljava/lang/String;

    iput-object p2, p0, Lvf9;->d:Landroid/webkit/GeolocationPermissions$Callback;

    :try_start_0
    iget-object v0, p0, Lvf9;->e:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {v0, v2}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    sget-object v0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    new-instance v1, Lk57$a;

    invoke-direct {v1, v0}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v1

    :goto_1
    invoke-static {v0}, Lk57;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-object v0, p0, Lvf9;->c:Ljava/lang/String;

    iput-object v0, p0, Lvf9;->d:Landroid/webkit/GeolocationPermissions$Callback;

    invoke-virtual {p0, p1, p2}, Lvf9;->b(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public final g(I)V
    .locals 1

    iget-object p0, p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment$g;->a:Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;

    invoke-virtual {p0}, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;->p()Lcom/warefly/checkscan/shared/universalWebView/databinding/FragmentUniversalWebViewBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/shared/universalWebView/databinding/FragmentUniversalWebViewBinding;->pbPageProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    const/16 v0, 0x64

    if-ge p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final h()V
    .locals 2

    sget-object v0, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;->r:Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment$a;

    iget-object p0, p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment$g;->a:Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;

    invoke-virtual {p0}, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;->p()Lcom/warefly/checkscan/shared/universalWebView/databinding/FragmentUniversalWebViewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/shared/universalWebView/databinding/FragmentUniversalWebViewBinding;->flFullScreenContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;->o:Landroid/webkit/WebChromeClient$CustomViewCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;->o:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-void
.end method
