.class public final Lyads/cj;
.super Lyads/u13;
.source "SourceFile"


# static fields
.field public static final a:Lyads/cj;

.field public static final b:Ljava/util/List;

.field public static final c:Lyads/xo2;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lyads/cj;

    invoke-direct {v0}, Lyads/cj;-><init>()V

    sput-object v0, Lyads/cj;->a:Lyads/cj;

    new-instance v0, Lyads/w13;

    sget-object v1, Lyads/xo2;->k:Lyads/xo2;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lyads/w13;-><init>(Lyads/xo2;I)V

    invoke-static {v0}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lyads/cj;->b:Ljava/util/List;

    sget-object v0, Lyads/xo2;->f:Lyads/xo2;

    sput-object v0, Lyads/cj;->c:Lyads/xo2;

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

    invoke-static {p3}, Lqn1;->T(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lorg/json/JSONArray;

    invoke-virtual {p0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final a()Ljava/util/List;
    .locals 0

    .line 14
    sget-object p0, Lyads/cj;->b:Ljava/util/List;

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    const-string p0, "toString"

    return-object p0
.end method

.method public final d()Lyads/xo2;
    .locals 0

    sget-object p0, Lyads/cj;->c:Lyads/xo2;

    return-object p0
.end method

.method public final e()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
