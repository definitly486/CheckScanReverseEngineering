.class public final Lcom/my/target/d2$a;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/my/target/d2;-><init>(Landroid/content/Context;Lcom/my/target/d2$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic h:Lcom/my/target/d2$b;

.field public final synthetic i:Lcom/my/target/d2;


# direct methods
.method public constructor <init>(Lcom/my/target/d2;Lcom/my/target/d2$b;)V
    .locals 0

    iput-object p1, p0, Lcom/my/target/d2$a;->i:Lcom/my/target/d2;

    iput-object p2, p0, Lcom/my/target/d2$a;->h:Lcom/my/target/d2$b;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    iget-object p1, p0, Lcom/my/target/d2$a;->h:Lcom/my/target/d2$b;

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    iget-object p0, p0, Lcom/my/target/d2$a;->i:Lcom/my/target/d2;

    invoke-static {p0}, Lcom/my/target/d2;->a(Lcom/my/target/d2;)Ljava/util/List;

    move-result-object p2

    check-cast p1, Lcom/my/target/z1;

    invoke-virtual {p1, p2, p0}, Lcom/my/target/z1;->h(Ljava/util/List;Lcom/my/target/d2;)V

    :cond_0
    return-void
.end method

.method public final onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    sget v0, Lcom/my/target/d2;->m:I

    iget-object v0, p0, Lcom/my/target/d2$a;->i:Lcom/my/target/d2;

    invoke-virtual {v0}, Lcom/my/target/d2;->g()V

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    return-void
.end method
