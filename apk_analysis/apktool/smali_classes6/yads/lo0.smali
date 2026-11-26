.class public final Lyads/lo0;
.super Lyads/u13;
.source "SourceFile"


# static fields
.field public static final a:Lyads/lo0;

.field public static final b:Ljava/util/List;

.field public static final c:Lyads/xo2;

.field public static final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lyads/lo0;

    invoke-direct {v0}, Lyads/lo0;-><init>()V

    sput-object v0, Lyads/lo0;->a:Lyads/lo0;

    new-instance v0, Lyads/w13;

    sget-object v1, Lyads/xo2;->j:Lyads/xo2;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lyads/w13;-><init>(Lyads/xo2;I)V

    invoke-static {v0}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lyads/lo0;->b:Ljava/util/List;

    sget-object v0, Lyads/xo2;->e:Lyads/xo2;

    sput-object v0, Lyads/lo0;->c:Lyads/xo2;

    const/4 v0, 0x1

    sput-boolean v0, Lyads/lo0;->d:Z

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

    const/4 p0, 0x0

    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x1

    :cond_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final a()Ljava/util/List;
    .locals 0

    .line 22
    sget-object p0, Lyads/lo0;->b:Ljava/util/List;

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    const-string p0, "isEmpty"

    return-object p0
.end method

.method public final d()Lyads/xo2;
    .locals 0

    sget-object p0, Lyads/lo0;->c:Lyads/xo2;

    return-object p0
.end method

.method public final e()Z
    .locals 0

    sget-boolean p0, Lyads/lo0;->d:Z

    return p0
.end method
