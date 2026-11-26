.class public final enum Lcy3$i;
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

    const-string v0, "InTemplate"

    const/16 v1, 0x11

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final f(Lgx8;Lby3;)Z
    .locals 4

    sget-object v0, Lcy3$q;->a:[I

    iget-object v1, p1, Lgx8;->a:Lgx8$i;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "template"

    packed-switch v0, :pswitch_data_0

    const-string p0, "Unexpected state: "

    iget-object p1, p1, Lgx8;->a:Lgx8$i;

    invoke-static {p1, p0}, Lqz0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return v1

    :pswitch_0
    invoke-virtual {p2, v3}, Lby3;->H(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p0}, Lby3;->q(Lcy3;)V

    invoke-virtual {p2, v3}, Lby3;->K(Ljava/lang/String;)V

    invoke-virtual {p2}, Lby3;->k()V

    invoke-virtual {p2}, Lby3;->L()V

    invoke-virtual {p2}, Lby3;->Q()Z

    iget-object p0, p2, Lby3;->l:Lcy3;

    sget-object v0, Lcy3;->InTemplate:Lcy3;

    if-eq p0, v0, :cond_1

    iget-object p0, p2, Lby3;->r:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/16 v0, 0xc

    if-ge p0, v0, :cond_1

    invoke-virtual {p2, p1}, Lby3;->e(Lgx8;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    return v2

    :pswitch_1
    move-object v0, p1

    check-cast v0, Lgx8$f;

    invoke-virtual {v0}, Lgx8$h;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lcy3;->InHead:Lcy3;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1, p2}, Lcy3;->f(Lgx8;Lby3;)Z

    return v2

    :cond_2
    invoke-virtual {p2, p0}, Lby3;->q(Lcy3;)V

    return v1

    :pswitch_2
    move-object p0, p1

    check-cast p0, Lgx8$g;

    invoke-virtual {p0}, Lgx8$h;->l()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcy3$z;->J:[Ljava/lang/String;

    invoke-static {p0, v0}, Lja8;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lcy3;->InHead:Lcy3;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1, p2}, Lcy3;->f(Lgx8;Lby3;)Z

    return v2

    :cond_3
    sget-object v0, Lcy3$z;->K:[Ljava/lang/String;

    invoke-static {p0, v0}, Lja8;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lby3;->L()V

    sget-object p0, Lcy3;->InTable:Lcy3;

    invoke-virtual {p2, p0}, Lby3;->M(Lcy3;)V

    iput-object p0, p2, Lby3;->l:Lcy3;

    invoke-virtual {p2, p1}, Lby3;->e(Lgx8;)Z

    move-result p0

    return p0

    :cond_4
    const-string v0, "col"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Lby3;->L()V

    sget-object p0, Lcy3;->InColumnGroup:Lcy3;

    invoke-virtual {p2, p0}, Lby3;->M(Lcy3;)V

    iput-object p0, p2, Lby3;->l:Lcy3;

    invoke-virtual {p2, p1}, Lby3;->e(Lgx8;)Z

    move-result p0

    return p0

    :cond_5
    const-string v0, "tr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p2}, Lby3;->L()V

    sget-object p0, Lcy3;->InTableBody:Lcy3;

    invoke-virtual {p2, p0}, Lby3;->M(Lcy3;)V

    iput-object p0, p2, Lby3;->l:Lcy3;

    invoke-virtual {p2, p1}, Lby3;->e(Lgx8;)Z

    move-result p0

    return p0

    :cond_6
    const-string v0, "td"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "th"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_1

    :cond_7
    invoke-virtual {p2}, Lby3;->L()V

    sget-object p0, Lcy3;->InBody:Lcy3;

    invoke-virtual {p2, p0}, Lby3;->M(Lcy3;)V

    iput-object p0, p2, Lby3;->l:Lcy3;

    invoke-virtual {p2, p1}, Lby3;->e(Lgx8;)Z

    move-result p0

    return p0

    :cond_8
    :goto_1
    invoke-virtual {p2}, Lby3;->L()V

    sget-object p0, Lcy3;->InRow:Lcy3;

    invoke-virtual {p2, p0}, Lby3;->M(Lcy3;)V

    iput-object p0, p2, Lby3;->l:Lcy3;

    invoke-virtual {p2, p1}, Lby3;->e(Lgx8;)Z

    move-result p0

    return p0

    :pswitch_3
    sget-object p0, Lcy3;->InBody:Lcy3;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1, p2}, Lcy3;->f(Lgx8;Lby3;)Z

    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
