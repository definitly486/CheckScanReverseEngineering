.class public final synthetic Lps9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lyads/fs2;

.field public final synthetic d:Landroid/view/View;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lyads/fs2;I)V
    .locals 0

    iput p6, p0, Lps9;->b:I

    iput-object p1, p0, Lps9;->d:Landroid/view/View;

    iput-object p2, p0, Lps9;->e:Ljava/lang/Object;

    iput-object p3, p0, Lps9;->f:Ljava/lang/Object;

    iput-object p4, p0, Lps9;->g:Ljava/lang/Object;

    iput-object p5, p0, Lps9;->c:Lyads/fs2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    iget v0, p0, Lps9;->b:I

    iget-object v1, p0, Lps9;->g:Ljava/lang/Object;

    iget-object v2, p0, Lps9;->f:Ljava/lang/Object;

    iget-object v3, p0, Lps9;->e:Ljava/lang/Object;

    iget-object v4, p0, Lps9;->d:Landroid/view/View;

    packed-switch v0, :pswitch_data_0

    move-object v5, v4

    check-cast v5, Landroid/widget/TextView;

    move-object v6, v3

    check-cast v6, Lyads/as2;

    move-object v7, v2

    check-cast v7, Lyads/as2;

    move-object v8, v1

    check-cast v8, Lyads/as2;

    iget-object v9, p0, Lps9;->c:Lyads/fs2;

    move-object v10, p1

    check-cast v10, Lorg/json/JSONObject;

    invoke-static/range {v5 .. v10}, Lyads/kw5;->a(Landroid/widget/TextView;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/fs2;Lorg/json/JSONObject;)Lj59;

    move-result-object p0

    return-object p0

    :pswitch_0
    move-object v0, v4

    check-cast v0, Lyads/s22;

    check-cast v3, Lyads/in5;

    check-cast v2, Lyads/tc1;

    check-cast v1, Landroid/util/DisplayMetrics;

    iget-object v4, p0, Lps9;->c:Lyads/fs2;

    move-object v5, v3

    move-object v3, v1

    move-object v1, v5

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lyads/d22;->a(Lyads/s22;Lyads/in5;Lyads/tc1;Landroid/util/DisplayMetrics;Lyads/fs2;Ljava/lang/Object;)Lj59;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
