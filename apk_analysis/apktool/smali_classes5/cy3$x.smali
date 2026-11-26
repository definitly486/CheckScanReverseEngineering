.class public final enum Lcy3$x;
.super Lcy3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcy3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "Text"

    const/4 v1, 0x7

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final f(Lgx8;Lby3;)Z
    .locals 2

    iget-object v0, p1, Lgx8;->a:Lgx8$i;

    sget-object v1, Lgx8$i;->Character:Lgx8$i;

    if-ne v0, v1, :cond_0

    check-cast p1, Lgx8$b;

    const/4 p0, 0x0

    invoke-virtual {p2, p1, p0}, Lby3;->z(Lgx8$b;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lgx8;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2, p0}, Lby3;->q(Lcy3;)V

    invoke-virtual {p2}, Lh39;->d()Lorg/jsoup/nodes/h;

    iget-object p0, p2, Lby3;->m:Lcy3;

    iput-object p0, p2, Lby3;->l:Lcy3;

    sget-object v0, Lcy3;->Text:Lcy3;

    if-ne p0, v0, :cond_1

    sget-object p0, Lcy3;->InBody:Lcy3;

    iput-object p0, p2, Lby3;->l:Lcy3;

    :cond_1
    invoke-virtual {p2, p1}, Lby3;->e(Lgx8;)Z

    move-result p0

    return p0

    :cond_2
    invoke-virtual {p1}, Lgx8;->d()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {p2}, Lh39;->d()Lorg/jsoup/nodes/h;

    iget-object p0, p2, Lby3;->m:Lcy3;

    iput-object p0, p2, Lby3;->l:Lcy3;

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
