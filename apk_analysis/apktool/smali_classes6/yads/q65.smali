.class public final Lyads/q65;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final b:Lyads/am4;

.field public final c:Lyads/v65;


# direct methods
.method public constructor <init>(Lyads/am4;Lyads/v65;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/q65;->b:Lyads/am4;

    iput-object p2, p0, Lyads/q65;->c:Lyads/v65;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lyads/q65;->b:Lyads/am4;

    iget-object v0, v0, Lyads/am4;->b:Landroid/view/TextureView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lyads/q65;->c:Lyads/v65;

    iget-object p0, p0, Lyads/v65;->a:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
