.class public final Lyads/zd3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lid3;


# instance fields
.field public final synthetic a:Lyads/be3;

.field public final synthetic b:Lyads/rd3;


# direct methods
.method public constructor <init>(Lyads/be3;Lyads/rd3;)V
    .locals 0

    iput-object p1, p0, Lyads/zd3;->a:Lyads/be3;

    iput-object p2, p0, Lyads/zd3;->b:Lyads/rd3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lyads/zd3;->a:Lyads/be3;

    invoke-virtual {p2}, Lyads/rf6;->b()Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    if-eqz p2, :cond_1

    iget-object v0, p0, Lyads/zd3;->a:Lyads/be3;

    iget-object p0, p0, Lyads/zd3;->b:Lyads/rd3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lyads/rd3;->e:Lyads/zn5;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lyads/be3;->f:Lyads/un5;

    invoke-virtual {v0, p2, p0, p1}, Lyads/un5;->a(Landroid/widget/ImageView;Lyads/rd3;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
