.class public final synthetic Ltm9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/my/target/core/ui/views/nativeslider/a;


# direct methods
.method public synthetic constructor <init>(Lcom/my/target/core/ui/views/nativeslider/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltm9;->b:Lcom/my/target/core/ui/views/nativeslider/a;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p0, p0, Ltm9;->b:Lcom/my/target/core/ui/views/nativeslider/a;

    iget-object p0, p0, Lcom/my/target/core/ui/views/nativeslider/a;->u:Lcom/my/target/core/ui/views/nativeslider/b$a;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/my/target/core/ui/views/nativeslider/b$a;->a:Lcom/my/target/core/ui/views/nativeslider/b;

    iget-boolean v0, p0, Lcom/my/target/core/ui/views/nativeslider/b;->o:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/my/target/core/ui/views/nativeslider/b;->l:Lcom/my/target/core/ui/views/nativeslider/b$b;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    :cond_1
    :goto_0
    return-void
.end method
