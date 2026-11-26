.class public final Lyads/p34;
.super Lyads/v34;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lyads/e4;)V
    .locals 0

    invoke-direct {p0, p1}, Lyads/v34;-><init>(Lyads/e4;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/util/Map;
    .locals 3

    invoke-super {p0, p1}, Lyads/v34;->a(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Ln05;->n(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v0

    iget-object p0, p0, Lyads/v34;->a:Lyads/e4;

    iget-object p0, p0, Lyads/e4;->d:Lyads/tl5;

    iget-object p0, p0, Lyads/tl5;->a:Lyads/sl5;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lyads/sl5;->c(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "width"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0, p1}, Lyads/sl5;->a(Landroid/content/Context;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "height"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method
