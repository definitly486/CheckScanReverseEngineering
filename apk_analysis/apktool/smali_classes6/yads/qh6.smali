.class public final Lyads/qh6;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    sget-object v0, Lyads/e66;->c:Lyads/e66;

    new-instance v1, Lb36;

    const-string v2, "No ad view"

    invoke-direct {v1, v0, v2}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lyads/e66;->d:Lyads/e66;

    new-instance v2, Lb36;

    const-string v3, "No valid ads in ad unit"

    invoke-direct {v2, v0, v3}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lyads/e66;->e:Lyads/e66;

    new-instance v3, Lb36;

    const-string v4, "Ad is not visible for percent"

    invoke-direct {v3, v0, v4}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lyads/e66;->f:Lyads/e66;

    new-instance v4, Lb36;

    const-string v5, "Required asset %s is not visible in ad view"

    invoke-direct {v4, v0, v5}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lyads/e66;->g:Lyads/e66;

    new-instance v5, Lb36;

    const-string v6, "Ad view is null"

    invoke-direct {v5, v0, v6}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lyads/e66;->h:Lyads/e66;

    new-instance v6, Lb36;

    const-string v7, "Ad view is hidden"

    invoke-direct {v6, v0, v7}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lyads/e66;->i:Lyads/e66;

    new-instance v7, Lb36;

    const-string v8, "Visible area of an ad view is too small"

    invoke-direct {v7, v0, v8}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array/range {v1 .. v7}, [Lb36;

    move-result-object v0

    invoke-static {v0}, Ln05;->e([Lb36;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lyads/qh6;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lyads/f66;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "Unknown error, that shouldn\'t happen"

    return-object p0

    :cond_0
    iget-object v0, p0, Lyads/f66;->b:Ljava/lang/String;

    iget-object p0, p0, Lyads/f66;->a:Lyads/e66;

    sget-object v1, Lyads/qh6;->a:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_1

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "Visibility error"

    return-object p0
.end method
