.class public final synthetic Lz71;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lb81;

.field public final synthetic c:Lcom/warefly/checkscan/bonuses/databinding/ItemRvCategoryBinding;


# direct methods
.method public synthetic constructor <init>(Lb81;Lcom/warefly/checkscan/bonuses/databinding/ItemRvCategoryBinding;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz71;->b:Lb81;

    iput-object p2, p0, Lz71;->c:Lcom/warefly/checkscan/bonuses/databinding/ItemRvCategoryBinding;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lz71;->b:Lb81;

    iget-object p1, p1, Lb81;->b:Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;

    iget-object p0, p0, Lz71;->c:Lcom/warefly/checkscan/bonuses/databinding/ItemRvCategoryBinding;

    iget-object v0, p0, Lcom/warefly/checkscan/bonuses/databinding/ItemRvCategoryBinding;->tvTitle:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/warefly/checkscan/bonuses/databinding/ItemRvCategoryBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {p1, v0, p0}, Lm81;->onCategoryClick(Ljava/lang/String;I)V

    return-void
.end method
