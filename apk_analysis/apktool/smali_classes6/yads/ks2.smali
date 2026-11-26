.class public final Lyads/ks2;
.super Lyads/os;
.source "SourceFile"


# instance fields
.field public final b:Lll3;


# direct methods
.method public constructor <init>(ZLll3;)V
    .locals 0

    invoke-direct {p0, p1}, Lyads/os;-><init>(Z)V

    iput-object p2, p0, Lyads/ks2;->b:Lll3;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .locals 1

    iget-boolean v0, p0, Lyads/os;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lyads/ks2;->b:Lll3;

    invoke-interface {p0}, Lll3;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
