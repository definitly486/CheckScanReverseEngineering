.class public final Lyads/va1;
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
    .locals 3

    iget-object p0, p2, Lyads/vq0;->l:Lyads/pq0;

    sget-object p2, Lyads/un4;->d:Lyads/rn4;

    invoke-virtual {p2, p0}, Lyads/rn4;->a(Landroid/content/Context;)Lyads/un4;

    move-result-object p2

    iget-object p2, p2, Lyads/un4;->c:Lyads/r46;

    iget-object p3, p1, Lyads/ka1;->i:Lorg/json/JSONObject;

    const/4 p4, 0x0

    if-eqz p3, :cond_0

    const-string v0, "on_image_url"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_0

    :cond_0
    move-object p3, p4

    :goto_0
    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_1

    check-cast p3, Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object p3, p4

    :goto_1
    iget-object v0, p1, Lyads/ka1;->i:Lorg/json/JSONObject;

    if-eqz v0, :cond_2

    const-string v1, "off_image_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, p4

    :goto_2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_3

    move-object p4, v0

    check-cast p4, Ljava/lang/String;

    :cond_3
    new-instance v0, Lyads/yx5;

    invoke-direct {v0, p0}, Lyads/yx5;-><init>(Landroid/content/Context;)V

    if-eqz p3, :cond_4

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p2, p3}, Lyads/r46;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p3

    invoke-direct {v1, v2, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lyads/yx5;->setCheckedIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    if-eqz p4, :cond_5

    new-instance p3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p2, p4}, Lyads/r46;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-direct {p3, p0, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, p3}, Lyads/yx5;->setUncheckedIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    iget-object p0, p1, Lyads/ka1;->i:Lorg/json/JSONObject;

    if-nez p0, :cond_6

    goto :goto_3

    :cond_6
    const-string p1, "is_focusable"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setFocusable(Z)V

    :cond_7
    :goto_3
    return-object v0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 0

    .line 112
    const-string p0, "mute_button"

    .line 113
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
