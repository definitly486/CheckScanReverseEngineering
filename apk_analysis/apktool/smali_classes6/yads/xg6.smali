.class public final Lyads/xg6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/u8;

.field public final b:Lyads/q84;

.field public final c:Lyads/cr4;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/bf5;)V
    .locals 2

    new-instance v0, Lyads/u8;

    invoke-direct {v0}, Lyads/u8;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Lyads/do6;

    new-instance v1, Lyads/lm6;

    iget-object p2, p2, Lyads/do6;->a:Landroid/content/Context;

    invoke-direct {v1, p2}, Lyads/lm6;-><init>(Landroid/content/Context;)V

    invoke-static {p1, v1}, Lyads/re;->a(Landroid/content/Context;Lyads/lm6;)Lyads/q84;

    move-result-object p1

    new-instance p2, Lyads/cr4;

    invoke-direct {p2}, Lyads/cr4;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/xg6;->a:Lyads/u8;

    iput-object p1, p0, Lyads/xg6;->b:Lyads/q84;

    iput-object p2, p0, Lyads/xg6;->c:Lyads/cr4;

    return-void
.end method


# virtual methods
.method public final a(Lyads/vg6;Lyads/e4;)V
    .locals 4

    iget-object v0, p2, Lyads/e4;->e:Lyads/n8;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lyads/xg6;->a:Lyads/u8;

    invoke-virtual {v2, v0}, Lyads/u8;->a(Lyads/n8;)Lyads/h75;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lyads/h75;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lyads/h75;-><init>(Ljava/util/Map;I)V

    :goto_0
    iget-object v2, p2, Lyads/e4;->e:Lyads/n8;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lyads/xg6;->a:Lyads/u8;

    invoke-virtual {v3, v2}, Lyads/u8;->a(Lyads/n8;)Lyads/h75;

    move-result-object v2

    invoke-static {v0, v2}, Lyads/i75;->a(Lyads/h75;Lyads/h75;)Lyads/h75;

    :cond_1
    iget-object v2, p2, Lyads/e4;->c:Lyads/ma;

    iget-object v2, v2, Lyads/ma;->a:Ljava/lang/String;

    const-string v3, "ad_unit_id"

    invoke-virtual {v0, v2, v3}, Lyads/h75;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lyads/xg6;->c:Lyads/cr4;

    iget v3, p2, Lyads/e4;->n:I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x1

    if-eq v3, v2, :cond_3

    const/4 v2, 0x2

    if-eq v3, v2, :cond_2

    const-string v2, "undefined"

    goto :goto_1

    :cond_2
    const-string v2, "landscape"

    goto :goto_1

    :cond_3
    const-string v2, "portrait"

    :goto_1
    const-string v3, "orientation"

    invoke-virtual {v0, v2, v3}, Lyads/h75;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p2, Lyads/e4;->d:Lyads/tl5;

    iget-object v2, v2, Lyads/tl5;->a:Lyads/sl5;

    if-eqz v2, :cond_4

    invoke-interface {v2}, Lyads/sl5;->b()Lyads/rl5;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, v2, Lyads/rl5;->b:Ljava/lang/String;

    goto :goto_2

    :cond_4
    move-object v2, v1

    :goto_2
    const-string v3, "size_type"

    invoke-virtual {v0, v2, v3}, Lyads/h75;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p2, Lyads/e4;->d:Lyads/tl5;

    iget-object v2, v2, Lyads/tl5;->a:Lyads/sl5;

    if-eqz v2, :cond_5

    invoke-interface {v2}, Lyads/sl5;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_3

    :cond_5
    move-object v2, v1

    :goto_3
    const-string v3, "size_info_width"

    invoke-virtual {v0, v2, v3}, Lyads/h75;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p2, Lyads/e4;->d:Lyads/tl5;

    iget-object p2, p2, Lyads/tl5;->a:Lyads/sl5;

    if-eqz p2, :cond_6

    invoke-interface {p2}, Lyads/sl5;->getHeight()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_6
    const-string p2, "size_info_height"

    invoke-virtual {v0, v1, p2}, Lyads/h75;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p1, Lyads/vg6;->a:Lyads/ug6;

    iget p2, p2, Lyads/ug6;->a:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "view_width"

    invoke-virtual {v0, p2, v1}, Lyads/h75;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p1, Lyads/vg6;->a:Lyads/ug6;

    iget p2, p2, Lyads/ug6;->b:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "view_height"

    invoke-virtual {v0, p2, v1}, Lyads/h75;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p1, Lyads/vg6;->b:Lyads/vr3;

    iget-object p2, p2, Lyads/vr3;->a:Ljava/lang/Integer;

    const-string v1, "layout_width"

    invoke-virtual {v0, p2, v1}, Lyads/h75;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p1, Lyads/vg6;->b:Lyads/vr3;

    iget-object p2, p2, Lyads/vr3;->b:Ljava/lang/Integer;

    const-string v1, "layout_height"

    invoke-virtual {v0, p2, v1}, Lyads/h75;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p1, Lyads/vg6;->c:Lyads/xx3;

    iget-object p2, p2, Lyads/xx3;->a:Lyads/yx3;

    iget p2, p2, Lyads/yx3;->a:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "measured_width"

    invoke-virtual {v0, p2, v1}, Lyads/h75;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p1, Lyads/vg6;->c:Lyads/xx3;

    iget-object p2, p2, Lyads/xx3;->a:Lyads/yx3;

    iget-object p2, p2, Lyads/yx3;->b:Lyads/zx3;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "measured_width_mode"

    invoke-virtual {v0, p2, v2}, Lyads/h75;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p1, Lyads/vg6;->c:Lyads/xx3;

    iget-object p2, p2, Lyads/xx3;->b:Lyads/yx3;

    iget p2, p2, Lyads/yx3;->a:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v2, "measured_height"

    invoke-virtual {v0, p2, v2}, Lyads/h75;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lyads/vg6;->c:Lyads/xx3;

    iget-object p1, p1, Lyads/xx3;->b:Lyads/yx3;

    iget-object p1, p1, Lyads/yx3;->b:Lyads/zx3;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "measured_height_mode"

    invoke-virtual {v0, p1, p2}, Lyads/h75;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lyads/g75;

    sget-object p2, Lyads/e75;->c:Lyads/e75;

    iget-object p2, v0, Lyads/h75;->a:Ljava/util/Map;

    iget-object v0, v0, Lyads/h75;->b:Lyads/c;

    const-string v1, "ad_view_size_info"

    invoke-static {p2}, Ln05;->n(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object p2

    invoke-direct {p1, v1, p2, v0}, Lyads/g75;-><init>(Ljava/lang/String;Ljava/util/Map;Lyads/c;)V

    iget-object p0, p0, Lyads/xg6;->b:Lyads/q84;

    invoke-virtual {p0, p1}, Lyads/q84;->a(Lyads/g75;)V

    return-void
.end method
