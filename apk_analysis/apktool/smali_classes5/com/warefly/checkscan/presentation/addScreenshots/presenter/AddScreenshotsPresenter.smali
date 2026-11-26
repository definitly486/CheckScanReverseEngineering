.class public final Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"

# interfaces
.implements Lcu3;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsView;",
        ">;",
        "Lcu3;"
    }
.end annotation


# static fields
.field private static final BANK_IMAGE_FIELD_NAME:Ljava/lang/String; = "bankImage"

.field public static final Companion:Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter$b;

.field private static final IMAGE_TYPE:Ljava/lang/String; = "image/*"

.field private static final SHOP_IMAGE_FIELD_NAME:Ljava/lang/String; = "shopImage"


# instance fields
.field private final cashBackInteractor:Lp51;

.field private final contentResolverProvider:Lhy1;

.field private final id:J

.field private final imagesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lsi7;",
            "Lri7;",
            ">;"
        }
    .end annotation
.end field

.field private final router:Luf3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter$b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter;->Companion:Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter$b;

    return-void
.end method

.method public constructor <init>(Lp51;Lhy1;Luf3;J)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter;->cashBackInteractor:Lp51;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter;->contentResolverProvider:Lhy1;

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter;->router:Luf3;

    iput-wide p4, p0, Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter;->id:J

    sget-object p2, Lsi7;->Shop:Lsi7;

    sget-object p3, Lri7;->c:Lri7;

    new-instance v0, Lb36;

    invoke-direct {v0, p2, p3}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p2, Lsi7;->Bank:Lsi7;

    new-instance v1, Lb36;

    invoke-direct {v1, p2, p3}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v0, v1}, [Lb36;

    move-result-object p2

    invoke-static {p2}, Ln05;->d([Lb36;)Ljava/util/HashMap;

    move-result-object p2

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter;->imagesMap:Ljava/util/HashMap;

    iget-object p1, p1, Lp51;->a:Lu51;

    invoke-interface {p1, p4, p5}, Lu51;->c(J)Lmz7;

    move-result-object p1

    sget-object p2, Lne7;->c:Lhe7;

    invoke-virtual {p1, p2}, Lmz7;->i(Lhe7;)Le18;

    move-result-object p1

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmz7;->f(Lhe7;)Lr08;

    move-result-object p1

    new-instance p2, Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter$a;

    invoke-direct {p2, p0}, Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter$a;-><init>(Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter;)V

    const/4 p3, 0x0

    const/4 p4, 0x1

    invoke-static {p1, p3, p2, p4}, Lyb8;->f(Lmz7;Lnl3;Lnl3;I)Lrx1;

    move-result-object p1

    invoke-static {p0, p1, p3, p4, p3}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$checkUploadEnable(Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter;->checkUploadEnable()V

    return-void
.end method

.method private final checkUploadEnable()V
    .locals 3

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsView;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter;->imagesMap:Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lri7;

    iget-object v1, v1, Lri7;->a:Ljava/io/File;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_1
    invoke-interface {v0, v2}, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsView;->isUploadButtonVisible(Z)V

    :cond_3
    return-void
.end method

.method public static synthetic e(Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter$e;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter;->uploadScreenshots$lambda$5(Lnl3;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic f(Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter;)V
    .locals 0

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter;->uploadScreenshots$lambda$6(Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter;)V

    return-void
.end method

.method public static synthetic g(Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter;Landroid/net/Uri;Lsi7;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter;->getScreenshotByUri$lambda$4(Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter;Landroid/net/Uri;Lsi7;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final getScreenshotByUri(Landroid/net/Uri;Lsi7;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Le9;

    invoke-direct {v0, p0, p1, p2}, Le9;-><init>(Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter;Landroid/net/Uri;Lsi7;)V

    new-instance v1, Ll08;

    invoke-direct {v1, v0}, Ll08;-><init>(Ljava/util/concurrent/Callable;)V

    sget-object v0, Lne7;->c:Lhe7;

    invoke-virtual {v1, v0}, Lmz7;->i(Lhe7;)Le18;

    move-result-object v0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmz7;->f(Lhe7;)Lr08;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter$d;

    invoke-direct {v1, p0, p1, p2}, Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter$d;-><init>(Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter;Landroid/net/Uri;Lsi7;)V

    sget-object p1, Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter$c;->f:Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter$c;

    invoke-static {v0, p1, v1}, Lyb8;->d(Lmz7;Lnl3;Lnl3;)Lrx1;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getScreenshotByUri"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy(Lcp2;Ljava/lang/String;)V

    return-void
.end method

.method private static final getScreenshotByUri$lambda$4(Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter;Landroid/net/Uri;Lsi7;)Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter;->contentResolverProvider:Lhy1;

    invoke-interface {v0}, Lhy1;->a()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    const-string v3, "_display_name"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_3

    :cond_0
    move-object v3, v0

    :goto_0
    if-eqz v3, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter;->imagesMap:Ljava/util/HashMap;

    invoke-static {p2, v4}, Ln05;->c(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lri7;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v6, 0x1

    invoke-static {v5, v0, v3, v6}, Lri7;->a(Lri7;Ljava/io/File;Ljava/lang/String;I)Lri7;

    move-result-object v3

    invoke-interface {v4, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    sget-object v3, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1, v0}, Lm96;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    if-eqz p1, :cond_2

    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "image"

    invoke-static {v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {p1}, Lex0;->d(Ljava/io/InputStream;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    iget-object v2, p0, Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter;->imagesMap:Ljava/util/HashMap;

    invoke-static {p2, v2}, Ln05;->c(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lri7;

    const/4 v4, 0x2

    invoke-static {v3, v1, v0, v4}, Lri7;->a(Lri7;Ljava/io/File;Ljava/lang/String;I)Lri7;

    move-result-object v1

    invoke-interface {v2, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object p0, v0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    move-exception v0

    move-object p2, v0

    :try_start_5
    invoke-static {v2, p0}, Lm96;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_1
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    move-exception v0

    move-object p2, v0

    invoke-static {p1, p0}, Lm96;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2

    :cond_2
    :goto_2
    invoke-static {p1, v0}, Lm96;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter;->imagesMap:Ljava/util/HashMap;

    invoke-static {p2, p0}, Ln05;->c(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lri7;

    iget-object p0, p0, Lri7;->b:Ljava/lang/String;

    return-object p0

    :goto_3
    :try_start_7
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    :catchall_5
    move-exception v0

    move-object p2, v0

    invoke-static {p1, p0}, Lm96;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private static final uploadScreenshots$lambda$5(Lnl3;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final uploadScreenshots$lambda$6(Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter;)V
    .locals 1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsView;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsView;->showLoading(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final getUriBankScreenshot(Landroid/net/Uri;)V
    .locals 1

    sget-object v0, Lsi7;->Bank:Lsi7;

    invoke-direct {p0, p1, v0}, Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter;->getScreenshotByUri(Landroid/net/Uri;Lsi7;)V

    return-void
.end method

.method public final getUriShopScreenshot(Landroid/net/Uri;)V
    .locals 1

    sget-object v0, Lsi7;->Shop:Lsi7;

    invoke-direct {p0, p1, v0}, Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter;->getScreenshotByUri(Landroid/net/Uri;Lsi7;)V

    return-void
.end method

.method public final onBackClick()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter;->router:Luf3;

    invoke-virtual {p0}, Luf3;->i()V

    return-void
.end method

.method public final onHelpScreenshotClick()Lj59;
    .locals 3

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsView;

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter;->id:J

    invoke-interface {v0, v1, v2}, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsView;->showHelpScreenshotDialog(J)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final onLoadBankScreenshotClick()Lj59;
    .locals 0

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsView;->getBankScreenshot()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final onLoadShopScreenshotClick()Lj59;
    .locals 0

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsView;->getShopScreenshot()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public showError()V
    .locals 0

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsView;->showSomeError()V

    :cond_0
    return-void
.end method

.method public showSuccess()V
    .locals 1

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter;->router:Luf3;

    sget-object v0, Lii7;->a:Lii7;

    invoke-virtual {p0, v0}, Lo87;->h(Ldf7;)V

    return-void
.end method

.method public final uploadScreenshots()V
    .locals 10

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter;->imagesMap:Ljava/util/HashMap;

    sget-object v1, Lsi7;->Bank:Lsi7;

    invoke-static {v1, v0}, Ln05;->c(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lri7;

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter;->imagesMap:Ljava/util/HashMap;

    sget-object v2, Lsi7;->Shop:Lsi7;

    invoke-static {v2, v1}, Ln05;->c(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lri7;

    iget-object v2, v0, Lri7;->a:Ljava/io/File;

    if-eqz v2, :cond_0

    iget-object v3, v1, Lri7;->a:Ljava/io/File;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter;->cashBackInteractor:Lp51;

    iget-wide v5, p0, Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter;->id:J

    iget-object v0, v0, Lri7;->b:Ljava/lang/String;

    sget-object v4, Lj95;->e:Ljava/util/regex/Pattern;

    const-string v4, "image/*"

    invoke-static {v4}, Lj95$a;->a(Ljava/lang/String;)Lj95;

    move-result-object v7

    new-instance v8, Ld37;

    invoke-direct {v8, v7, v2}, Ld37;-><init>(Lj95;Ljava/io/File;)V

    const-string v2, "bankImage"

    invoke-static {v2, v0, v8}, Llg5$c$a;->a(Ljava/lang/String;Ljava/lang/String;Ld37;)Llg5$c;

    move-result-object v7

    iget-object v0, v1, Lri7;->b:Ljava/lang/String;

    iget-object v1, v1, Lri7;->a:Ljava/io/File;

    invoke-static {v4}, Lj95$a;->a(Ljava/lang/String;)Lj95;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Ld37;

    invoke-direct {v4, v2, v1}, Ld37;-><init>(Lj95;Ljava/io/File;)V

    const-string v1, "shopImage"

    invoke-static {v1, v0, v4}, Llg5$c$a;->a(Ljava/lang/String;Ljava/lang/String;Ld37;)Llg5$c;

    move-result-object v8

    sget-object v9, Lyt6;->ADMITAD_ONLINE:Lyt6;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v3, Lp51;->a:Lu51;

    invoke-interface/range {v4 .. v9}, Lu51;->l(JLlg5$c;Llg5$c;Lyt6;)Le08;

    move-result-object v0

    sget-object v1, Lne7;->c:Lhe7;

    invoke-virtual {v0, v1}, Lmz7;->i(Lhe7;)Le18;

    move-result-object v0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmz7;->f(Lhe7;)Lr08;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter$e;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter$e;-><init>(Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter;)V

    new-instance v2, Lf9;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lf9;-><init>(Lgh4;I)V

    new-instance v1, Lxz7;

    invoke-direct {v1, v0, v2}, Lxz7;-><init>(Lmz7;Lqx1;)V

    new-instance v0, Lg9;

    invoke-direct {v0, p0}, Lg9;-><init>(Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter;)V

    new-instance v2, Luz7;

    invoke-direct {v2, v1, v0}, Luz7;-><init>(Lmz7;Lh6;)V

    new-instance v0, Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter$f;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter$f;-><init>(Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter;)V

    new-instance v1, Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter$g;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter$g;-><init>(Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter;)V

    invoke-static {v2, v0, v1}, Lyb8;->d(Lmz7;Lnl3;Lnl3;)Lrx1;

    move-result-object v0

    const-string v1, "uploadScreenshots"

    invoke-virtual {p0, v0, v1}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy(Lcp2;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
