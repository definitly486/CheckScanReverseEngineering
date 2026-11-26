.class public interface abstract Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/presentation/operations/base/OperationsView;


# virtual methods
.method public abstract removeCategory()V
.end method

.method public abstract showBeginList()V
.end method

.method public abstract showCategories(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpy5;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showCategoriesLoaded(Z)V
.end method

.method public abstract showCouldntLoadCategories(Z)V
.end method

.method public abstract showLoadingCategories(Z)V
.end method

.method public abstract showSelectedCategory(Lpy5;)V
.end method
