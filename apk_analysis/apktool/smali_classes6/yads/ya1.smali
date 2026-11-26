.class public final Lyads/ya1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/oa1;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lyads/ka1;Lyads/vq0;Lyads/fs2;Lyads/n32;)Landroid/view/View;
    .locals 0

    iget-object p0, p2, Lyads/vq0;->l:Lyads/pq0;

    new-instance p2, Lyads/f45;

    invoke-direct {p2, p0}, Lyads/f45;-><init>(Landroid/content/Context;)V

    iget-object p0, p1, Lyads/ka1;->i:Lorg/json/JSONObject;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "is_focusable"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setFocusable(Z)V

    :cond_1
    const-string p1, "descendant_focusability"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    :cond_2
    :goto_0
    return-object p2
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 0

    .line 43
    const-string p0, "rating"

    .line 44
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
