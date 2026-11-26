.class public final Lyads/l53;
.super Lyads/vi;
.source "SourceFile"


# static fields
.field public static final c:Lyads/l53;

.field public static final d:Ljava/lang/String;

.field public static final e:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lyads/l53;

    invoke-direct {v0}, Lyads/l53;-><init>()V

    sput-object v0, Lyads/l53;->c:Lyads/l53;

    const-string v0, "getOptArrayFromArray"

    sput-object v0, Lyads/l53;->d:Ljava/lang/String;

    new-instance v0, Lyads/w13;

    sget-object v1, Lyads/xo2;->k:Lyads/xo2;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lyads/w13;-><init>(Lyads/xo2;I)V

    new-instance v1, Lyads/w13;

    sget-object v3, Lyads/xo2;->c:Lyads/xo2;

    invoke-direct {v1, v3, v2}, Lyads/w13;-><init>(Lyads/xo2;I)V

    filled-new-array {v0, v1}, [Lyads/w13;

    move-result-object v0

    invoke-static {v0}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lyads/l53;->e:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lyads/xo2;->k:Lyads/xo2;

    invoke-direct {p0, v0}, Lyads/vi;-><init>(Lyads/xo2;)V

    return-void
.end method


# virtual methods
.method public final a(Lyads/yo2;Lyads/uo2;Ljava/util/List;)Ljava/lang/Object;
    .locals 0

    sget-object p0, Lyads/l53;->d:Ljava/lang/String;

    invoke-static {p0, p3}, Lyads/gi;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lorg/json/JSONArray;

    if-eqz p1, :cond_0

    check-cast p0, Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    :cond_1
    return-object p0
.end method

.method public final a()Ljava/util/List;
    .locals 0

    .line 22
    sget-object p0, Lyads/l53;->e:Ljava/util/List;

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    sget-object p0, Lyads/l53;->d:Ljava/lang/String;

    return-object p0
.end method
