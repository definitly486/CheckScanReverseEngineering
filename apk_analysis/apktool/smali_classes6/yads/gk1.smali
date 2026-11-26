.class public final Lyads/gk1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic b:Lyads/zh2;

.field public final synthetic c:Lyads/j66;

.field public final synthetic d:Lyads/bn1;

.field public final synthetic e:Z

.field public final synthetic f:Lyads/ao2;

.field public final synthetic g:Ljava/lang/IllegalArgumentException;


# direct methods
.method public constructor <init>(Lyads/zh2;Lyads/j66;Lyads/bn1;ZLyads/ao2;Ljava/lang/IllegalArgumentException;)V
    .locals 0

    iput-object p1, p0, Lyads/gk1;->b:Lyads/zh2;

    iput-object p2, p0, Lyads/gk1;->c:Lyads/j66;

    iput-object p3, p0, Lyads/gk1;->d:Lyads/bn1;

    iput-boolean p4, p0, Lyads/gk1;->e:Z

    iput-object p5, p0, Lyads/gk1;->f:Lyads/ao2;

    iput-object p6, p0, Lyads/gk1;->g:Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p1, p0, Lyads/gk1;->b:Lyads/zh2;

    iget-object p2, p0, Lyads/gk1;->c:Lyads/j66;

    iget-object p2, p2, Lyads/j66;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lyads/zh2;->a(Ljava/lang/String;)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_2

    iget-object p3, p0, Lyads/gk1;->d:Lyads/bn1;

    invoke-virtual {p3}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-boolean p3, p0, Lyads/gk1;->e:Z

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lyads/gk1;->d:Lyads/bn1;

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p2

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setLabelFor(I)V

    return-void

    :cond_1
    iget-object p1, p0, Lyads/gk1;->f:Lyads/ao2;

    iget-object p0, p0, Lyads/gk1;->g:Ljava/lang/IllegalArgumentException;

    iget-object p2, p1, Lyads/ao2;->b:Ljava/util/ArrayList;

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lyads/ao2;->a()V

    return-void

    :cond_2
    iget-object p1, p0, Lyads/gk1;->f:Lyads/ao2;

    iget-object p0, p0, Lyads/gk1;->g:Ljava/lang/IllegalArgumentException;

    iget-object p2, p1, Lyads/ao2;->b:Ljava/util/ArrayList;

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lyads/ao2;->a()V

    return-void
.end method
