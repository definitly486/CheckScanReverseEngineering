.class public final Lcom/my/target/core/ui/views/nativeslider/a$b;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/core/ui/views/nativeslider/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final l:Lcom/my/target/zh;

.field public final m:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Lcom/my/target/core/ui/views/nativeslider/a$a;Lcom/my/target/zh;Landroid/widget/FrameLayout;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/my/target/core/ui/views/nativeslider/a$b;->l:Lcom/my/target/zh;

    iput-object p3, p0, Lcom/my/target/core/ui/views/nativeslider/a$b;->m:Landroid/widget/FrameLayout;

    return-void
.end method
