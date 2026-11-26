.class public final synthetic Le9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter;

.field public final synthetic c:Landroid/net/Uri;

.field public final synthetic d:Lsi7;


# direct methods
.method public synthetic constructor <init>(Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter;Landroid/net/Uri;Lsi7;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le9;->b:Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter;

    iput-object p2, p0, Le9;->c:Landroid/net/Uri;

    iput-object p3, p0, Le9;->d:Lsi7;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Le9;->c:Landroid/net/Uri;

    iget-object v1, p0, Le9;->d:Lsi7;

    iget-object p0, p0, Le9;->b:Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter;

    invoke-static {p0, v0, v1}, Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter;->g(Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter;Landroid/net/Uri;Lsi7;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
