.class public final synthetic Lf0a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/my/target/k$a;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/my/target/k$a;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf0a;->b:Lcom/my/target/k$a;

    iput p2, p0, Lf0a;->c:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lf0a;->b:Lcom/my/target/k$a;

    iget-object v0, p1, Lcom/my/target/k$a;->b:Ljava/util/ArrayList;

    iget p0, p0, Lf0a;->c:I

    if-ltz p0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p0, v1, :cond_1

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/my/target/k$b;

    iget-object p1, p1, Lcom/my/target/k$a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr95;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lcom/my/target/k$c;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/my/target/k$c;

    iget-object p0, p0, Lcom/my/target/k$c;->a:Ls95;

    invoke-interface {p1, p0}, Lr95;->a(Ls95;)V

    :cond_1
    :goto_0
    return-void
.end method
