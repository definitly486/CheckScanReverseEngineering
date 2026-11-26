.class public Lcom/warefly/checkscan/ui/SearchBar;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/ui/SearchBar$c;
    }
.end annotation


# instance fields
.field public b:Landroidx/appcompat/widget/SearchView;

.field public c:Lcom/warefly/checkscan/ui/SearchBar$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 10
    invoke-virtual {p0}, Lcom/warefly/checkscan/ui/SearchBar;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 8
    invoke-virtual {p0}, Lcom/warefly/checkscan/ui/SearchBar;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/ui/SearchBar;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d033b

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0603

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SearchView;

    iput-object v0, p0, Lcom/warefly/checkscan/ui/SearchBar;->b:Landroidx/appcompat/widget/SearchView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    iget-object v0, p0, Lcom/warefly/checkscan/ui/SearchBar;->b:Landroidx/appcompat/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->setIconifiedByDefault(Z)V

    iget-object v0, p0, Lcom/warefly/checkscan/ui/SearchBar;->b:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView;->clearFocus()V

    iget-object v0, p0, Lcom/warefly/checkscan/ui/SearchBar;->b:Landroidx/appcompat/widget/SearchView;

    sget v1, Landroidx/appcompat/R$id;->search_close_btn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/warefly/checkscan/ui/SearchBar;->b:Landroidx/appcompat/widget/SearchView;

    sget v2, Landroidx/appcompat/R$id;->search_src_text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f060036

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f06034a

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHintTextColor(I)V

    new-instance v2, Lcom/warefly/checkscan/ui/SearchBar$a;

    invoke-direct {v2, p0, v1, v0}, Lcom/warefly/checkscan/ui/SearchBar$a;-><init>(Lcom/warefly/checkscan/ui/SearchBar;Landroid/widget/EditText;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getQuerySequence()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/ui/SearchBar;->b:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public setOnQueryTextChangedListener(Lcom/warefly/checkscan/ui/SearchBar$c;)V
    .locals 1

    iput-object p1, p0, Lcom/warefly/checkscan/ui/SearchBar;->c:Lcom/warefly/checkscan/ui/SearchBar$c;

    iget-object v0, p0, Lcom/warefly/checkscan/ui/SearchBar;->b:Landroidx/appcompat/widget/SearchView;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    return-void

    :cond_0
    sget p1, Landroidx/appcompat/R$id;->search_close_btn:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    new-instance v0, Lcom/warefly/checkscan/ui/SearchBar$b;

    invoke-direct {v0, p0, p1}, Lcom/warefly/checkscan/ui/SearchBar$b;-><init>(Lcom/warefly/checkscan/ui/SearchBar;Landroid/widget/ImageView;)V

    iget-object p0, p0, Lcom/warefly/checkscan/ui/SearchBar;->b:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    return-void
.end method

.method public setQueryHint(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/ui/SearchBar;->b:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setQuerySequence(Ljava/lang/CharSequence;Z)V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/ui/SearchBar;->b:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    return-void
.end method
