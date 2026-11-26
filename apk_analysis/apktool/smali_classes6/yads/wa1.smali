.class public abstract Lyads/wa1;
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

.method public static a(Lyads/ka1;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    .line 70
    iget-object p0, p0, Lyads/ka1;->i:Lorg/json/JSONObject;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    .line 71
    :goto_0
    :try_start_0
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 72
    new-instance p1, Lk57$a;

    invoke-direct {p1, p0}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    .line 73
    :goto_1
    nop

    instance-of p1, p0, Lk57$a;

    if-eqz p1, :cond_1

    goto :goto_2

    :cond_1
    move-object v0, p0

    .line 74
    :goto_2
    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method


# virtual methods
.method public final a(Lyads/ka1;Lyads/vq0;Lyads/fs2;Lyads/n32;)Landroid/view/View;
    .locals 0

    iget-object p0, p2, Lyads/vq0;->l:Lyads/pq0;

    new-instance p2, Landroid/widget/ProgressBar;

    const/4 p3, 0x0

    const p4, 0x1010078

    invoke-direct {p2, p0, p3, p4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p0, "progress_color"

    invoke-static {p1, p0}, Lyads/wa1;->a(Lyads/ka1;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    const-string p0, "background_color"

    invoke-static {p1, p0}, Lyads/wa1;->a(Lyads/ka1;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/ProgressBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-object p0, p1, Lyads/ka1;->i:Lorg/json/JSONObject;

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const-string p1, "is_focusable"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {p2, p0}, Landroid/view/View;->setFocusable(Z)V

    :cond_3
    :goto_0
    return-object p2
.end method
