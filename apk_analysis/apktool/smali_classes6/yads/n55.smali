.class public final Lyads/n55;
.super Lyads/te3;
.source "SourceFile"


# instance fields
.field public final transient d:Lyads/re3;

.field public final transient e:Lyads/o55;


# direct methods
.method public constructor <init>(Lyads/re3;Lyads/o55;)V
    .locals 0

    invoke-direct {p0}, Lyads/te3;-><init>()V

    iput-object p1, p0, Lyads/n55;->d:Lyads/re3;

    iput-object p2, p0, Lyads/n55;->e:Lyads/o55;

    return-void
.end method


# virtual methods
.method public final a(I[Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Lyads/n55;->e:Lyads/o55;

    invoke-virtual {p0, p1, p2}, Lyads/oe3;->a(I[Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final a()Lyads/oe3;
    .locals 0

    .line 7
    iget-object p0, p0, Lyads/n55;->e:Lyads/o55;

    return-object p0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lyads/n55;->d:Lyads/re3;

    invoke-virtual {p0, p1}, Lyads/re3;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final e()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final iterator()Lyads/i46;
    .locals 1

    iget-object p0, p0, Lyads/n55;->e:Lyads/o55;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lyads/oe3;->a(I)Lyads/le3;

    move-result-object p0

    return-object p0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lyads/n55;->d:Lyads/re3;

    check-cast p0, Lyads/p55;

    iget p0, p0, Lyads/p55;->g:I

    return p0
.end method
