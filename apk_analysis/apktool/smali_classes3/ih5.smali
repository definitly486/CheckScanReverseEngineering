.class public abstract Lih5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<View::",
        "Ljh5;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mFirstLaunch:Z

.field private mPresenterClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lih5;",
            ">;"
        }
    .end annotation
.end field

.field private mTag:Ljava/lang/String;

.field private mViewState:Lkh5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkh5<",
            "TView;>;"
        }
    .end annotation
.end field

.field private mViewStateAsView:Ljh5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TView;"
        }
    .end annotation
.end field

.field private mViews:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TView;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lih5;->mFirstLaunch:Z

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lse5;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpe9;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lpe9;->a()Lkh5;

    move-result-object v0

    :goto_0
    check-cast v0, Ljh5;

    invoke-static {p0, v0}, Lih5;->access$002(Lih5;Ljh5;)Ljh5;

    check-cast v0, Lkh5;

    invoke-static {p0, v0}, Lih5;->access$102(Lih5;Lkh5;)Lkh5;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lih5;->mViews:Ljava/util/Set;

    return-void
.end method

.method public static synthetic access$002(Lih5;Ljh5;)Ljh5;
    .locals 0

    iput-object p1, p0, Lih5;->mViewStateAsView:Ljh5;

    return-object p1
.end method

.method public static synthetic access$102(Lih5;Lkh5;)Lkh5;
    .locals 0

    iput-object p1, p0, Lih5;->mViewState:Lkh5;

    return-object p1
.end method


# virtual methods
.method public attachView(Ljh5;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TView;)V"
        }
    .end annotation

    iget-object v0, p0, Lih5;->mViewState:Lkh5;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lkh5;->attachView(Ljh5;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lih5;->mViews:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-boolean p1, p0, Lih5;->mFirstLaunch:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lih5;->mFirstLaunch:Z

    invoke-virtual {p0}, Lih5;->onFirstViewAttach()V

    :cond_1
    return-void
.end method

.method public destroyView(Ljh5;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TView;)V"
        }
    .end annotation

    iget-object p0, p0, Lih5;->mViewState:Lkh5;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lkh5;->destroyView(Ljh5;)V

    :cond_0
    return-void
.end method

.method public detachView(Ljh5;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TView;)V"
        }
    .end annotation

    iget-object v0, p0, Lih5;->mViewState:Lkh5;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lkh5;->detachView(Ljh5;)V

    return-void

    :cond_0
    iget-object p0, p0, Lih5;->mViews:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public getAttachedViews()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TView;>;"
        }
    .end annotation

    iget-object v0, p0, Lih5;->mViewState:Lkh5;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lkh5;->getViews()Ljava/util/Set;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lih5;->mViews:Ljava/util/Set;

    return-object p0
.end method

.method public getPresenterClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lih5;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lih5;->mPresenterClass:Ljava/lang/Class;

    return-object p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lih5;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method public getViewState()Ljh5;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TView;"
        }
    .end annotation

    iget-object p0, p0, Lih5;->mViewStateAsView:Ljh5;

    return-object p0
.end method

.method public isInRestoreState(Ljh5;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TView;)Z"
        }
    .end annotation

    iget-object p0, p0, Lih5;->mViewState:Lkh5;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lkh5;->isInRestoreState(Ljh5;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onFirstViewAttach()V
    .locals 0

    return-void
.end method

.method public setPresenterClass(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lih5;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lih5;->mPresenterClass:Ljava/lang/Class;

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lih5;->mTag:Ljava/lang/String;

    return-void
.end method

.method public setViewState(Lkh5;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkh5<",
            "TView;>;)V"
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Ljh5;

    iput-object v0, p0, Lih5;->mViewStateAsView:Ljh5;

    iput-object p1, p0, Lih5;->mViewState:Lkh5;

    return-void
.end method
