.class public final synthetic Lu06;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Landroid/view/MenuItem;


# direct methods
.method public synthetic constructor <init>(Landroid/view/MenuItem;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lu06;->a:Landroid/view/View;

    iput-object p1, p0, Lu06;->b:Landroid/view/MenuItem;

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lu06;->a:Landroid/view/View;

    iget-object p0, p0, Lu06;->b:Landroid/view/MenuItem;

    invoke-static {v0, p0, p1}, Lcom/google/android/material/overflow/OverflowLinearLayout;->a(Landroid/view/View;Landroid/view/MenuItem;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method
