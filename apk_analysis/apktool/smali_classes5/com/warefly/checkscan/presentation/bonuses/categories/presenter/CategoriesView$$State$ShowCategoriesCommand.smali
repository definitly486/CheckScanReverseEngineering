.class public Lcom/warefly/checkscan/presentation/bonuses/categories/presenter/CategoriesView$$State$ShowCategoriesCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/bonuses/categories/presenter/CategoriesView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowCategoriesCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/bonuses/categories/presenter/CategoriesView;",
        ">;"
    }
.end annotation


# instance fields
.field public final categories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcs0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/bonuses/categories/presenter/CategoriesView$$State;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcs0;",
            ">;)V"
        }
    .end annotation

    const-string p1, "showCategories"

    const-class v0, Lk9;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/bonuses/categories/presenter/CategoriesView$$State$ShowCategoriesCommand;->categories:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/bonuses/categories/presenter/CategoriesView;)V
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/categories/presenter/CategoriesView$$State$ShowCategoriesCommand;->categories:Ljava/util/List;

    invoke-interface {p1, p0}, Lcom/warefly/checkscan/presentation/bonuses/categories/presenter/CategoriesView;->showCategories(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/presentation/bonuses/categories/presenter/CategoriesView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/categories/presenter/CategoriesView$$State$ShowCategoriesCommand;->apply(Lcom/warefly/checkscan/presentation/bonuses/categories/presenter/CategoriesView;)V

    return-void
.end method
