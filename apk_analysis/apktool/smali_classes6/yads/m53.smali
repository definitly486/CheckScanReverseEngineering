.class public final Lyads/m53;
.super Lyads/u13;
.source "SourceFile"


# static fields
.field public static final a:Lyads/m53;

.field public static final b:Ljava/util/List;

.field public static final c:Lyads/xo2;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lyads/m53;

    invoke-direct {v0}, Lyads/m53;-><init>()V

    sput-object v0, Lyads/m53;->a:Lyads/m53;

    new-instance v0, Lyads/w13;

    sget-object v1, Lyads/xo2;->j:Lyads/xo2;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lyads/w13;-><init>(Lyads/xo2;I)V

    new-instance v1, Lyads/w13;

    sget-object v2, Lyads/xo2;->f:Lyads/xo2;

    invoke-direct {v1, v2}, Lyads/w13;-><init>(Lyads/xo2;)V

    filled-new-array {v0, v1}, [Lyads/w13;

    move-result-object v0

    invoke-static {v0}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lyads/m53;->b:Ljava/util/List;

    sget-object v0, Lyads/xo2;->k:Lyads/xo2;

    sput-object v0, Lyads/m53;->c:Lyads/xo2;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lyads/u13;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lyads/yo2;Lyads/uo2;Ljava/util/List;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    const/4 p1, 0x1

    invoke-static {p3, p0, p1}, Lyads/jo0;->a(Ljava/util/List;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Lorg/json/JSONArray;

    if-eqz p2, :cond_0

    check-cast p1, Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    return-object p0

    :cond_1
    return-object p1
.end method

.method public final a()Ljava/util/List;
    .locals 0

    .line 22
    sget-object p0, Lyads/m53;->b:Ljava/util/List;

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    const-string p0, "getOptArrayFromDict"

    return-object p0
.end method

.method public final d()Lyads/xo2;
    .locals 0

    sget-object p0, Lyads/m53;->c:Lyads/xo2;

    return-object p0
.end method

.method public final e()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
