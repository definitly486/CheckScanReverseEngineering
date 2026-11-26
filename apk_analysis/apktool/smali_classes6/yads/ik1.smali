.class public final Lyads/ik1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final synthetic a:Ljava/util/ArrayList;

.field public final synthetic b:Lyads/jk1;

.field public final synthetic c:Lyads/bn1;

.field public final synthetic d:Lyads/vq0;

.field public final synthetic e:Lyads/fs2;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Lyads/jk1;Lyads/bn1;Lyads/vq0;Lyads/fs2;)V
    .locals 0

    iput-object p1, p0, Lyads/ik1;->a:Ljava/util/ArrayList;

    iput-object p2, p0, Lyads/ik1;->b:Lyads/jk1;

    iput-object p3, p0, Lyads/ik1;->c:Lyads/bn1;

    iput-object p4, p0, Lyads/ik1;->d:Lyads/vq0;

    iput-object p5, p0, Lyads/ik1;->e:Lyads/fs2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 8

    if-eqz p1, :cond_0

    iget-object p1, p0, Lyads/ik1;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/j66;

    iget-object v1, p0, Lyads/ik1;->b:Lyads/jk1;

    iget-object v2, p0, Lyads/ik1;->c:Lyads/bn1;

    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lyads/ik1;->c:Lyads/bn1;

    iget-object v4, p0, Lyads/ik1;->d:Lyads/vq0;

    iget-object v5, p0, Lyads/ik1;->e:Lyads/fs2;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v0, Lyads/j66;->a:Lyads/os;

    invoke-virtual {v6, v2}, Lyads/os;->a(Ljava/lang/String;)Z

    move-result v2

    iget-object v6, v0, Lyads/j66;->b:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v6, v7, v5}, Lyads/l76;->a(Lyads/vq0;Ljava/lang/String;Ljava/lang/String;Lyads/fs2;)Lyads/k76;

    invoke-virtual {v1, v0, v4, v3, v2}, Lyads/jk1;->a(Lyads/j66;Lyads/vq0;Lyads/bn1;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
