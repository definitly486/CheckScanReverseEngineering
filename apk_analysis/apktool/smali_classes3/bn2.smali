.class public final Lbn2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lby6;
.implements Lv47;


# instance fields
.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lij0;Lui0;Lvp3;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lbn2;->b:Ljava/lang/Object;

    .line 104
    iput-object p2, p0, Lbn2;->c:Ljava/lang/Object;

    .line 105
    iput-object p3, p0, Lbn2;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lcom/warefly/checkscan/core/ui/base/dialogs/BaseDialogNew;)V
    .locals 8

    const-class v0, Landroid/view/ViewGroup;

    const-class v1, Landroid/view/LayoutInflater;

    const-string v2, "inflate"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iput-object v3, p0, Lbn2;->b:Ljava/lang/Object;

    const v4, 0x1020002

    invoke-virtual {p2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lbn2;->c:Ljava/lang/Object;

    const/4 v5, 0x0

    :try_start_0
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v1, v0, v6}, [Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {p1, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    filled-new-array {v3, v4, v7}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v6, v5, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v3, Landroidx/viewbinding/ViewBinding;

    invoke-interface {v3}, Landroidx/viewbinding/ViewBinding;->getRoot()Landroid/view/View;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    filled-new-array {v1, v0}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iget-object v0, p0, Lbn2;->b:Ljava/lang/Object;

    check-cast v0, Landroid/view/LayoutInflater;

    iget-object v1, p0, Lbn2;->c:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v3, p1

    check-cast v3, Landroidx/viewbinding/ViewBinding;

    invoke-interface {v3}, Landroidx/viewbinding/ViewBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    :goto_0
    iput-object v3, p0, Lbn2;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Le47;Lxz5;)Le47;
    .locals 2

    invoke-interface {p1}, Le47;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    iget-object p1, p0, Lbn2;->c:Ljava/lang/Object;

    check-cast p1, Lui0;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object p0, p0, Lbn2;->b:Ljava/lang/Object;

    check-cast p0, Lij0;

    invoke-static {p0, v0}, Lkj0;->b(Lij0;Landroid/graphics/Bitmap;)Lkj0;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Lui0;->a(Le47;Lxz5;)Le47;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, v0, Lup3;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lbn2;->d:Ljava/lang/Object;

    check-cast p0, Lvp3;

    invoke-virtual {p0, p1, p2}, Lvp3;->a(Le47;Lxz5;)Le47;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getValue(Ljava/lang/Object;Lze4;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/app/Dialog;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lbn2;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/viewbinding/ViewBinding;

    return-object p0
.end method
