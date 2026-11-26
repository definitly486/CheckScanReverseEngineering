.class public final Lyads/z63;
.super Lyads/u13;
.source "SourceFile"


# static fields
.field public static final a:Lyads/z63;

.field public static final b:Ljava/util/List;

.field public static final c:Lyads/xo2;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lyads/z63;

    invoke-direct {v0}, Lyads/z63;-><init>()V

    sput-object v0, Lyads/z63;->a:Lyads/z63;

    new-instance v0, Lyads/w13;

    sget-object v1, Lyads/xo2;->f:Lyads/xo2;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lyads/w13;-><init>(Lyads/xo2;I)V

    new-instance v1, Lyads/w13;

    sget-object v3, Lyads/xo2;->i:Lyads/xo2;

    invoke-direct {v1, v3, v2}, Lyads/w13;-><init>(Lyads/xo2;I)V

    filled-new-array {v0, v1}, [Lyads/w13;

    move-result-object v0

    invoke-static {v0}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lyads/z63;->b:Ljava/util/List;

    sput-object v3, Lyads/z63;->c:Lyads/xo2;

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

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Ljava/lang/String;

    iget-object p1, p1, Lyads/yo2;->a:Lyads/z66;

    invoke-interface {p1, p0}, Lyads/m76;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lyads/q46;

    if-eqz p1, :cond_0

    check-cast p0, Lyads/q46;

    iget-object p0, p0, Lyads/q46;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    new-instance p1, Lyads/q46;

    invoke-direct {p1, p0}, Lyads/q46;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_1
    const/4 p0, 0x1

    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lyads/q46;

    return-object p0
.end method

.method public final a()Ljava/util/List;
    .locals 0

    .line 45
    sget-object p0, Lyads/z63;->b:Ljava/util/List;

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    const-string p0, "getUrlValue"

    return-object p0
.end method

.method public final d()Lyads/xo2;
    .locals 0

    sget-object p0, Lyads/z63;->c:Lyads/xo2;

    return-object p0
.end method

.method public final e()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
