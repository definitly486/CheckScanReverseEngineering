.class public final Lyads/j16;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 5

    invoke-static {}, Lu96;->e()Lar4;

    move-result-object v0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    :try_start_0
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    new-instance v4, Lk57$a;

    invoke-direct {v4, v3}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object v3, v4

    :goto_1
    nop

    instance-of v4, v3, Lk57$a;

    if-nez v4, :cond_0

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lar4;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lu96;->d(Lar4;)Lar4;

    move-result-object p0

    return-object p0
.end method
