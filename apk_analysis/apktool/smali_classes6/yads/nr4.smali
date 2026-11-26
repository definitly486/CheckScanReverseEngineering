.class public final Lyads/nr4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/view/View;

.field public final b:I

.field public c:Lyads/zs0;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x53

    iput v0, p0, Lyads/nr4;->b:I

    iput-object p1, p0, Lyads/nr4;->a:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View$OnClickListener;
    .locals 2

    .line 22
    new-instance v0, Le71;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Le71;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method

.method public final a(Lyads/zs0;)Lyads/nr4;
    .locals 0

    .line 23
    iput-object p1, p0, Lyads/nr4;->c:Lyads/zs0;

    return-object p0
.end method

.method public final synthetic a(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroidx/appcompat/widget/PopupMenu;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lyads/nr4;->b:I

    invoke-direct {v0, v1, p1, v2}, Landroidx/appcompat/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iget-object p0, p0, Lyads/nr4;->c:Lyads/zs0;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Lyads/zs0;->a(Landroidx/appcompat/widget/PopupMenu;)V

    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->show()V

    return-void
.end method

.method public final b()Lyads/nr4;
    .locals 0

    return-object p0
.end method
