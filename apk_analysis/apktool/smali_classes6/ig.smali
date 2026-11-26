.class public final synthetic Lig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmq5;
.implements Lyads/l66;
.implements Lyads/jv;
.implements Lcom/my/target/m1$b;
.implements Lyads/iz3;
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 7
    iput p1, p0, Lig;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/my/target/d0;Lao9;)V
    .locals 0

    const/4 p1, 0x6

    iput p1, p0, Lig;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic b()Landroid/graphics/BlendMode;
    .locals 1

    sget-object v0, Landroid/graphics/BlendMode;->HUE:Landroid/graphics/BlendMode;

    return-object v0
.end method

.method public static d(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p4, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static bridge synthetic e(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p0, Landroid/view/inputmethod/DeleteRangeGesture;

    return p0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)I
    .locals 0

    .line 28
    check-cast p1, Lyads/vy3;

    invoke-static {p1}, Lyads/jz3;->a(Lyads/vy3;)I

    move-result p0

    return p0
.end method

.method public a(Landroid/os/Bundle;)Lyads/kv;
    .locals 0

    .line 26
    invoke-static {p1}, Lyads/f04;->a(Landroid/os/Bundle;)Lyads/g04;

    move-result-object p0

    return-object p0
.end method

.method public a()V
    .locals 0

    .line 27
    return-void
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, Lig;->b:I

    check-cast p1, Ljava/lang/Long;

    packed-switch p0, :pswitch_data_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lyads/lh1;->b(J)Z

    move-result p0

    return p0

    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lyads/cd1;->b(J)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public c()Ljava/lang/Object;
    .locals 0

    new-instance p0, Ljava/util/TreeMap;

    invoke-direct {p0}, Ljava/util/TreeMap;-><init>()V

    return-object p0
.end method

.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    invoke-static {p1, p2}, Lyads/r03;->c(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method
