.class public final Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter$f;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;->loadMoreData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lll3<",
        "Lj59;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter$f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter$f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter$f;->f:Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter$f;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
