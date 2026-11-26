.class public final Lcom/my/target/w2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/w2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final b:Lcom/my/target/w2;


# direct methods
.method public constructor <init>(Lcom/my/target/w2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/my/target/w2$a;->b:Lcom/my/target/w2;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p0, p0, Lcom/my/target/w2$a;->b:Lcom/my/target/w2;

    iget-object p1, p0, Lcom/my/target/w2;->k:Lcom/my/target/r0;

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/my/target/r0;->d:Lcom/my/target/c;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/my/target/c;->a(Z)V

    invoke-interface {v0}, Lcom/my/target/l;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/my/target/r0;->b(Landroid/content/Context;)V

    iget-boolean v0, p1, Lcom/my/target/r0;->l:Z

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/my/target/r0;->f:Lcom/my/target/k0;

    invoke-virtual {p1}, Lcom/my/target/k0;->h()V

    :cond_0
    iget-object p1, p0, Lcom/my/target/w2;->f:Lcom/my/target/m2$a;

    iget-object p0, p0, Lcom/my/target/w2;->d:Lxda;

    invoke-virtual {p1, p0}, Lcom/my/target/m2$a;->e(Lao9;)V

    return-void
.end method
