.class public final Lcom/my/target/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/my/target/t1;


# instance fields
.field public final b:Lcom/my/target/t1$a;

.field public final c:Lwy9;

.field public d:Lcom/my/target/v;

.field public e:Le6a;


# direct methods
.method public constructor <init>(Lwy9;Lcom/my/target/t1$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ld6a;

    invoke-direct {v0}, Le6a;-><init>()V

    iput-object v0, p0, Lcom/my/target/a0;->e:Le6a;

    iput-object p1, p0, Lcom/my/target/a0;->c:Lwy9;

    iput-object p2, p0, Lcom/my/target/a0;->b:Lcom/my/target/t1$a;

    return-void
.end method


# virtual methods
.method public final a(Lvy9;)V
    .locals 5

    iget-object v0, p1, Lvy9;->a0:Lh14;

    iget-object v1, p1, Lvy9;->Z:Lh14;

    iget-object v2, p1, Ljia;->R:Lh14;

    iget-object v3, p0, Lcom/my/target/a0;->c:Lwy9;

    invoke-interface {v3, v0, v1, v2}, Lwy9;->b(Lh14;Lh14;Lh14;)V

    iget-object v0, p1, Lao9;->g:Ljava/lang/String;

    invoke-interface {v3, v0}, Lwy9;->setAgeRestrictions(Ljava/lang/String;)V

    invoke-interface {v3}, Lwy9;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lmv0;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0, p1}, Lmv0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-interface {v3}, Lwy9;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/my/target/c1;

    new-instance v2, Lch1;

    const/4 v4, 0x4

    invoke-direct {v2, p0, v4}, Lch1;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v1, v2}, Lcom/my/target/c1;-><init>(Lcom/my/target/c1$a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-interface {v3}, Lwy9;->getCloseButton()Lcom/my/target/f6;

    move-result-object v0

    new-instance v1, Lxv9;

    invoke-direct {v1, p0, p1}, Lxv9;-><init>(Lcom/my/target/a0;Lvy9;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Lao9;->H:Lcom/my/target/q;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lyv9;

    invoke-direct {v1, p0, v0}, Lyv9;-><init>(Lcom/my/target/a0;Lcom/my/target/q;)V

    invoke-interface {v3, v0, v1}, Lwy9;->a(Lcom/my/target/q;Lyv9;)V

    iget-object v1, v0, Lcom/my/target/q;->c:Ljava/util/List;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Lex0;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lcom/my/target/v;

    invoke-direct {v2, v0, v1}, Lcom/my/target/v;-><init>(Lcom/my/target/q;Lex0;)V

    iput-object v2, p0, Lcom/my/target/a0;->d:Lcom/my/target/v;

    new-instance v0, Lcom/my/target/z;

    invoke-direct {v0, p0, p1}, Lcom/my/target/z;-><init>(Lcom/my/target/a0;Lvy9;)V

    iput-object v0, v2, Lcom/my/target/v;->c:Lgv9;

    :goto_0
    iget-object p0, p0, Lcom/my/target/a0;->b:Lcom/my/target/t1$a;

    invoke-interface {v3}, Lwy9;->a()Landroid/view/View;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lcom/my/target/t1$a;->o(Lao9;Landroid/view/View;)V

    return-void
.end method

.method public final destroy()V
    .locals 0

    return-void
.end method

.method public final getCloseButton()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/my/target/a0;->c:Lwy9;

    invoke-interface {p0}, Lwy9;->getCloseButton()Lcom/my/target/f6;

    move-result-object p0

    return-object p0
.end method

.method public final i()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/my/target/a0;->c:Lwy9;

    invoke-interface {p0}, Lwy9;->a()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final pause()V
    .locals 0

    return-void
.end method

.method public final resume()V
    .locals 0

    return-void
.end method

.method public final stop()V
    .locals 0

    return-void
.end method
