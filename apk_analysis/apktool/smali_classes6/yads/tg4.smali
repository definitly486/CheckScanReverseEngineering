.class public final Lyads/tg4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/a85;


# instance fields
.field public final a:Lyads/zg4;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/q84;)V
    .locals 1

    new-instance v0, Lyads/zg4;

    invoke-direct {v0, p1, p2}, Lyads/zg4;-><init>(Landroid/content/Context;Lyads/q84;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/tg4;->a:Lyads/zg4;

    return-void
.end method


# virtual methods
.method public final a(Lyads/en4;)Ljava/lang/Object;
    .locals 6

    iget-object p0, p0, Lyads/tg4;->a:Lyads/zg4;

    iget-object v0, p0, Lyads/zg4;->a:Lyads/ni6;

    iget-object v1, v0, Lyads/ni6;->a:Lyads/mi6;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lyads/a95;

    iget v2, p1, Lyads/en4;->a:I

    new-instance v3, Lyads/b95;

    iget-object v4, p1, Lyads/en4;->b:[B

    invoke-direct {v3, v4}, Lyads/b95;-><init>([B)V

    iget-object v4, p1, Lyads/en4;->c:Ljava/util/Map;

    sget-object v5, Lmx2;->b:Lmx2;

    if-nez v4, :cond_0

    move-object v4, v5

    :cond_0
    invoke-direct {v1, v2, v3, v4}, Lyads/a95;-><init>(ILyads/b95;Ljava/util/Map;)V

    iget-object v0, v0, Lyads/ni6;->b:Lyads/gn4;

    invoke-virtual {v0, v1}, Lyads/gn4;->a(Lyads/a95;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Lyads/yo;

    iget-object p1, p1, Lyads/en4;->c:Ljava/util/Map;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move-object v5, p1

    :goto_0
    invoke-direct {v1, v5}, Lyads/yo;-><init>(Ljava/util/Map;)V

    :try_start_0
    iget-object p0, p0, Lyads/zg4;->b:Lyads/qj4;

    invoke-virtual {p0, v0, v1}, Lyads/qj4;->a(Ljava/lang/String;Lyads/yo;)Lyads/vg4;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lyads/rg4; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lsj0;->d(Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-static {p0}, Lsj0;->d(Ljava/lang/Throwable;)Ljava/lang/String;

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method
