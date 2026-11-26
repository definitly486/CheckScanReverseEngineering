.class public final enum Lkx8$h0;
.super Lkx8;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkx8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "AttributeValue_unquoted"

    const/16 v1, 0x27

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final f(Ljx8;Lea1;)V
    .locals 3

    invoke-virtual {p2}, Lea1;->z0()I

    sget-object v0, Lkx8;->attributeValueUnquoted:[C

    invoke-virtual {p2, v0}, Lea1;->U([C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p1, Ljx8;->j:Lgx8$h;

    iget-object v1, v1, Lgx8$h;->i:Lm54;

    invoke-virtual {v1, v0}, Lm54;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p2}, Lea1;->z0()I

    move-result v0

    invoke-virtual {p2}, Lea1;->p()C

    move-result v1

    if-eqz v1, :cond_6

    const/16 v2, 0x20

    if-eq v1, v2, :cond_5

    const/16 v2, 0x22

    if-eq v1, v2, :cond_4

    const/16 v2, 0x60

    if-eq v1, v2, :cond_4

    const v2, 0xffff

    if-eq v1, v2, :cond_3

    const/16 v2, 0x9

    if-eq v1, v2, :cond_5

    const/16 v2, 0xa

    if-eq v1, v2, :cond_5

    const/16 v2, 0xc

    if-eq v1, v2, :cond_5

    const/16 v2, 0xd

    if-eq v1, v2, :cond_5

    const/16 v2, 0x26

    if-eq v1, v2, :cond_1

    const/16 v2, 0x27

    if-eq v1, v2, :cond_4

    packed-switch v1, :pswitch_data_0

    iget-object p0, p1, Ljx8;->j:Lgx8$h;

    invoke-virtual {p2}, Lea1;->z0()I

    move-result p1

    invoke-virtual {p0, v0, p1, v1}, Lgx8$h;->g(IIC)V

    return-void

    :pswitch_0
    invoke-virtual {p1}, Ljx8;->k()V

    sget-object p0, Lkx8;->Data:Lkx8;

    invoke-virtual {p1, p0}, Ljx8;->o(Lkx8;)V

    return-void

    :cond_1
    const/16 p0, 0x3e

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p1, p0, v1}, Ljx8;->c(Ljava/lang/Character;Z)[I

    move-result-object p0

    iget-object p1, p1, Ljx8;->j:Lgx8$h;

    if-eqz p0, :cond_2

    invoke-virtual {p2}, Lea1;->z0()I

    move-result p2

    invoke-virtual {p1, p0, v0, p2}, Lgx8$h;->h([III)V

    return-void

    :cond_2
    invoke-virtual {p2}, Lea1;->z0()I

    move-result p0

    invoke-virtual {p1, v0, p0, v2}, Lgx8$h;->g(IIC)V

    return-void

    :cond_3
    invoke-virtual {p1, p0}, Ljx8;->l(Lkx8;)V

    sget-object p0, Lkx8;->Data:Lkx8;

    invoke-virtual {p1, p0}, Ljx8;->o(Lkx8;)V

    return-void

    :cond_4
    :pswitch_1
    invoke-virtual {p1, p0}, Ljx8;->m(Lkx8;)V

    iget-object p0, p1, Ljx8;->j:Lgx8$h;

    invoke-virtual {p2}, Lea1;->z0()I

    move-result p1

    invoke-virtual {p0, v0, p1, v1}, Lgx8$h;->g(IIC)V

    return-void

    :cond_5
    sget-object p0, Lkx8;->BeforeAttributeName:Lkx8;

    invoke-virtual {p1, p0}, Ljx8;->o(Lkx8;)V

    return-void

    :cond_6
    invoke-virtual {p1, p0}, Ljx8;->m(Lkx8;)V

    iget-object p0, p1, Ljx8;->j:Lgx8$h;

    const p1, 0xfffd

    invoke-virtual {p2}, Lea1;->z0()I

    move-result p2

    invoke-virtual {p0, v0, p2, p1}, Lgx8$h;->g(IIC)V

    return-void

    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
