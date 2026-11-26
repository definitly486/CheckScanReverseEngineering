.class public final enum Lkx8$c0;
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

    const-string v0, "AfterAttributeName"

    const/16 v1, 0x23

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final f(Ljx8;Lea1;)V
    .locals 2

    invoke-virtual {p2}, Lea1;->p()C

    move-result v0

    if-eqz v0, :cond_4

    const/16 v1, 0x20

    if-eq v0, v1, :cond_3

    const/16 v1, 0x22

    if-eq v0, v1, :cond_2

    const/16 v1, 0x27

    if-eq v0, v1, :cond_2

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_1

    const v1, 0xffff

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_3

    const/16 v1, 0xa

    if-eq v0, v1, :cond_3

    const/16 v1, 0xc

    if-eq v0, v1, :cond_3

    const/16 v1, 0xd

    if-eq v0, v1, :cond_3

    packed-switch v0, :pswitch_data_0

    iget-object p0, p1, Ljx8;->j:Lgx8$h;

    invoke-virtual {p0}, Lgx8$h;->k()V

    invoke-virtual {p2}, Lea1;->C0()V

    sget-object p0, Lkx8;->AttributeName:Lkx8;

    invoke-virtual {p1, p0}, Ljx8;->o(Lkx8;)V

    return-void

    :pswitch_0
    invoke-virtual {p1}, Ljx8;->k()V

    sget-object p0, Lkx8;->Data:Lkx8;

    invoke-virtual {p1, p0}, Ljx8;->o(Lkx8;)V

    return-void

    :pswitch_1
    sget-object p0, Lkx8;->BeforeAttributeValue:Lkx8;

    invoke-virtual {p1, p0}, Ljx8;->o(Lkx8;)V

    return-void

    :cond_0
    invoke-virtual {p1, p0}, Ljx8;->l(Lkx8;)V

    sget-object p0, Lkx8;->Data:Lkx8;

    invoke-virtual {p1, p0}, Ljx8;->o(Lkx8;)V

    return-void

    :cond_1
    sget-object p0, Lkx8;->SelfClosingStartTag:Lkx8;

    invoke-virtual {p1, p0}, Ljx8;->o(Lkx8;)V

    return-void

    :cond_2
    :pswitch_2
    invoke-virtual {p1, p0}, Ljx8;->m(Lkx8;)V

    iget-object p0, p1, Ljx8;->j:Lgx8$h;

    invoke-virtual {p0}, Lgx8$h;->k()V

    iget-object p0, p1, Ljx8;->j:Lgx8$h;

    iget-object p0, p0, Lgx8$h;->h:Lm54;

    invoke-virtual {p0, v0}, Lm54;->a(C)V

    sget-object p0, Lkx8;->AttributeName:Lkx8;

    invoke-virtual {p1, p0}, Ljx8;->o(Lkx8;)V

    :cond_3
    return-void

    :cond_4
    invoke-virtual {p1, p0}, Ljx8;->m(Lkx8;)V

    iget-object p0, p1, Ljx8;->j:Lgx8$h;

    const p2, 0xfffd

    iget-object p0, p0, Lgx8$h;->h:Lm54;

    invoke-virtual {p0, p2}, Lm54;->a(C)V

    sget-object p0, Lkx8;->AttributeName:Lkx8;

    invoke-virtual {p1, p0}, Ljx8;->o(Lkx8;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
