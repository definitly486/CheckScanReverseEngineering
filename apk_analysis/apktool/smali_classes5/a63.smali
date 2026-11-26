.class public final synthetic La63;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh6;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:I

.field public final synthetic c:Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;


# direct methods
.method public synthetic constructor <init>(ZILcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, La63;->a:Z

    iput p2, p0, La63;->b:I

    iput-object p3, p0, La63;->c:Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, La63;->b:I

    iget-object v1, p0, La63;->c:Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;

    iget-boolean p0, p0, La63;->a:Z

    invoke-static {p0, v0, v1}, Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;->e(ZILcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;)V

    return-void
.end method
