.class public final Lyads/zt5;
.super Lyads/wh0;
.source "SourceFile"


# instance fields
.field public final a:Lbm3;

.field public final b:Landroid/widget/Switch;


# direct methods
.method public constructor <init>(Landroid/view/View;Lbm3;)V
    .locals 0

    invoke-direct {p0, p1}, Lyads/wh0;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lyads/zt5;->a:Lbm3;

    sget p2, Lcom/yandex/mobile/ads/R$id;->item_switch:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lyads/zt5;->b:Landroid/widget/Switch;

    return-void
.end method

.method public static final a(Lyads/zt5;Lyads/th0;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 35
    iget-object p0, p0, Lyads/zt5;->a:Lbm3;

    .line 36
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lyads/sh0;->b:Lyads/sh0;

    .line 37
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lyads/th0;)V
    .locals 2

    iget-object v0, p0, Lyads/zt5;->b:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lyads/zt5;->b:Landroid/widget/Switch;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "Debug Error Indicator"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lyads/zt5;->b:Landroid/widget/Switch;

    iget-boolean v1, p1, Lyads/th0;->a:Z

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lyads/zt5;->b:Landroid/widget/Switch;

    new-instance v1, Lyna;

    invoke-direct {v1, p0, p1}, Lyna;-><init>(Lyads/zt5;Lyads/th0;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public final bridge synthetic a(Lyads/uh0;)V
    .locals 0

    .line 34
    check-cast p1, Lyads/th0;

    invoke-virtual {p0, p1}, Lyads/zt5;->a(Lyads/th0;)V

    return-void
.end method
