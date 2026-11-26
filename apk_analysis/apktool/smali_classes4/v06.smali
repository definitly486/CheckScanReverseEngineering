.class public final synthetic Lv06;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/google/android/material/overflow/OverflowLinearLayout;

.field public final synthetic c:Landroidx/appcompat/widget/PopupMenu;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/overflow/OverflowLinearLayout;Landroidx/appcompat/widget/PopupMenu;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv06;->b:Lcom/google/android/material/overflow/OverflowLinearLayout;

    iput-object p2, p0, Lv06;->c:Landroidx/appcompat/widget/PopupMenu;

    iput p3, p0, Lv06;->d:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lv06;->c:Landroidx/appcompat/widget/PopupMenu;

    iget v1, p0, Lv06;->d:I

    iget-object p0, p0, Lv06;->b:Lcom/google/android/material/overflow/OverflowLinearLayout;

    invoke-static {p0, v0, v1, p1}, Lcom/google/android/material/overflow/OverflowLinearLayout;->b(Lcom/google/android/material/overflow/OverflowLinearLayout;Landroidx/appcompat/widget/PopupMenu;ILandroid/view/View;)V

    return-void
.end method
