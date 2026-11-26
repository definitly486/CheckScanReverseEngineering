.class public Lcom/my/target/f5;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/target/f5$a;
    }
.end annotation


# instance fields
.field public final b:Landroid/widget/RelativeLayout;

.field public final c:Landroid/widget/ImageView;

.field public final d:Landroid/widget/ImageView;

.field public final e:Ll3a;

.field public final f:Z

.field public final g:Lcom/my/target/f5$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ll3a;Z)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/f5;->b:Landroid/widget/RelativeLayout;

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/f5;->c:Landroid/widget/ImageView;

    const-string v1, "logo_image"

    invoke-static {v0, v1}, Ll3a;->n(Landroid/view/View;Ljava/lang/String;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/my/target/f5;->d:Landroid/widget/ImageView;

    const-string v1, "store_image"

    invoke-static {v0, v1}, Ll3a;->n(Landroid/view/View;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/my/target/f5;->e:Ll3a;

    iput-boolean p3, p0, Lcom/my/target/f5;->f:Z

    new-instance p2, Lcom/my/target/f5$a;

    invoke-direct {p2, p1}, Lcom/my/target/f5$a;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/my/target/f5;->g:Lcom/my/target/f5$a;

    return-void
.end method
