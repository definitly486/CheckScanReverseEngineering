.class public final Lud9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lby6;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroidx/viewbinding/ViewBinding;",
        ">",
        "Ljava/lang/Object;",
        "Lby6<",
        "Lcom/google/android/material/bottomsheet/BottomSheetDialog;",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:Landroid/view/LayoutInflater;

.field public final c:Landroid/view/View;

.field public final d:Landroidx/viewbinding/ViewBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/google/android/material/bottomsheet/BottomSheetDialog;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/android/material/bottomsheet/BottomSheetDialog;",
            ")V"
        }
    .end annotation

    const-class v0, Landroid/view/ViewGroup;

    const-class v1, Landroid/view/LayoutInflater;

    const-string v2, "inflate"

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iput-object v3, p0, Lud9;->b:Landroid/view/LayoutInflater;

    const v4, 0x1020002

    invoke-virtual {p2, v4}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lud9;->c:Landroid/view/View;

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

    invoke-virtual {p2, v4}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setContentView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    filled-new-array {v1, v0}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iget-object v0, p0, Lud9;->b:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lud9;->c:Landroid/view/View;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v3, p1

    check-cast v3, Landroidx/viewbinding/ViewBinding;

    invoke-interface {v3}, Landroidx/viewbinding/ViewBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    :goto_0
    iput-object v3, p0, Lud9;->d:Landroidx/viewbinding/ViewBinding;

    return-void
.end method


# virtual methods
.method public final getValue(Ljava/lang/Object;Lze4;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lud9;->d:Landroidx/viewbinding/ViewBinding;

    return-object p0
.end method
