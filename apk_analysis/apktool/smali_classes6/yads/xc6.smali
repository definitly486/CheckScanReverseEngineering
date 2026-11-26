.class public final Lyads/xc6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/f00;


# instance fields
.field public final a:Lyads/am4;

.field public final b:Lyads/p90;


# direct methods
.method public constructor <init>(Lyads/am4;Lyads/p90;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/xc6;->a:Lyads/am4;

    iput-object p2, p0, Lyads/xc6;->b:Lyads/p90;

    return-void
.end method


# virtual methods
.method public final a(Lyads/ot3;Lyads/h00;)V
    .locals 3

    iget-object v0, p0, Lyads/xc6;->a:Lyads/am4;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lyads/xc6;->b:Lyads/p90;

    new-instance v2, Lyads/wc6;

    invoke-direct {v2, p1, p2, v1}, Lyads/wc6;-><init>(Lyads/ot3;Lyads/h00;Lyads/p90;)V

    new-instance p1, Lyads/oz;

    invoke-direct {p1, v0, v2}, Lyads/oz;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lyads/xc6;->a:Lyads/am4;

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p0, Lyads/xc6;->a:Lyads/am4;

    iget-object p0, p0, Lyads/am4;->a:Lyads/xd6;

    iget-object p0, p0, Lyads/xd6;->b:Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
