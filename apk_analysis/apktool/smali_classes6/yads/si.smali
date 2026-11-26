.class public abstract Lyads/si;
.super Lyads/vi;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lyads/xo2;->e:Lyads/xo2;

    invoke-direct {p0, v0}, Lyads/vi;-><init>(Lyads/xo2;)V

    return-void
.end method


# virtual methods
.method public final a(Lyads/yo2;Lyads/uo2;Ljava/util/List;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lyads/u13;->c()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p3}, Lyads/gi;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    const/4 p0, 0x2

    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    :cond_1
    return-object p0
.end method
