.class public final Lyads/w66;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field public final a:Lyads/n76;

.field public final b:Lyads/i76;


# direct methods
.method public constructor <init>(Lyads/n76;Lyads/i76;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lyads/w66;->a:Lyads/n76;

    iput-object p2, p0, Lyads/w66;->b:Lyads/i76;

    return-void
.end method

.method public static final a(Lyads/w66;Lyads/e76;Ljava/lang/String;)Lj59;
    .locals 1

    .line 62
    iget-object p0, p0, Lyads/w66;->b:Lyads/i76;

    .line 63
    iget-object v0, p1, Lyads/e76;->a:Ljava/lang/String;

    .line 64
    iget-object p1, p1, Lyads/e76;->b:Ljava/lang/String;

    .line 65
    invoke-virtual {p0, v0, p1, p2}, Lyads/i76;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static b(Lyads/e76;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lyads/e76;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lyads/e76;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lyads/e76;->a()Ljava/lang/String;

    move-result-object p0

    const-string v1, "/"

    invoke-static {v0, v1, p0}, Lcg;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lyads/e76;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lyads/e76;)V
    .locals 5

    iget-object v0, p0, Lyads/w66;->a:Lyads/n76;

    iget-object v1, v0, Lyads/n76;->a:Landroid/widget/TextView;

    invoke-static {p1}, Lyads/w66;->b(Lyads/e76;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lyads/n76;->b:Landroid/widget/TextView;

    iget-object v2, p1, Lyads/e76;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lyads/n76;->c:Landroid/widget/EditText;

    iget-object v2, p1, Lyads/e76;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lyads/n76;->c:Landroid/widget/EditText;

    iget-object v2, p1, Lyads/e76;->c:Ljava/lang/String;

    const-string v3, "number"

    invoke-static {v2, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    const-string v3, "integer"

    invoke-static {v2, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    :goto_0
    if-eqz v2, :cond_1

    const/4 v2, 0x2

    goto :goto_1

    :cond_1
    move v2, v4

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setInputType(I)V

    new-instance v1, Lvw2;

    invoke-direct {v1, v4, p0, p1}, Lvw2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, v0, Lyads/n76;->d:Lnl3;

    return-void
.end method
