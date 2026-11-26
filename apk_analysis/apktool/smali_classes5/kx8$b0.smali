.class public final enum Lkx8$b0;
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

    const-string v0, "AttributeName"

    const/16 v1, 0x22

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final f(Ljx8;Lea1;)V
    .locals 4

    invoke-virtual {p2}, Lea1;->z0()I

    sget-object v0, Lkx8;->attributeNameCharsSorted:[C

    invoke-virtual {p2, v0}, Lea1;->U([C)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Ljx8;->j:Lgx8$h;

    const/4 v2, 0x0

    const v3, 0xfffd

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v1, Lgx8$h;->h:Lm54;

    invoke-virtual {v1, v0}, Lm54;->b(Ljava/lang/String;)V

    invoke-virtual {p2}, Lea1;->p()C

    move-result p2

    const/16 v0, 0x9

    if-eq p2, v0, :cond_4

    const/16 v0, 0xa

    if-eq p2, v0, :cond_4

    const/16 v0, 0xc

    if-eq p2, v0, :cond_4

    const/16 v0, 0xd

    if-eq p2, v0, :cond_4

    const/16 v0, 0x20

    if-eq p2, v0, :cond_4

    const/16 v0, 0x22

    if-eq p2, v0, :cond_3

    const/16 v0, 0x27

    if-eq p2, v0, :cond_3

    const/16 v0, 0x2f

    if-eq p2, v0, :cond_2

    const v0, 0xffff

    if-eq p2, v0, :cond_1

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p1, Ljx8;->g:Lorg/jsoup/nodes/f$a$a;

    sget-object v0, Lorg/jsoup/nodes/f$a$a;->xml:Lorg/jsoup/nodes/f$a$a;

    if-ne p0, v0, :cond_0

    iget-object p0, p1, Ljx8;->j:Lgx8$h;

    instance-of p0, p0, Lgx8$j;

    if-eqz p0, :cond_0

    sget-object p0, Lkx8;->AfterAttributeName:Lkx8;

    invoke-virtual {p1, p0}, Ljx8;->o(Lkx8;)V

    return-void

    :cond_0
    :goto_0
    iget-object p0, p1, Ljx8;->j:Lgx8$h;

    iget-object p0, p0, Lgx8$h;->h:Lm54;

    invoke-virtual {p0, p2}, Lm54;->a(C)V

    return-void

    :pswitch_1
    invoke-virtual {p1}, Ljx8;->k()V

    sget-object p0, Lkx8;->Data:Lkx8;

    invoke-virtual {p1, p0}, Ljx8;->o(Lkx8;)V

    return-void

    :pswitch_2
    sget-object p0, Lkx8;->BeforeAttributeValue:Lkx8;

    invoke-virtual {p1, p0}, Ljx8;->o(Lkx8;)V

    return-void

    :cond_1
    invoke-virtual {p1, p0}, Ljx8;->l(Lkx8;)V

    sget-object p0, Lkx8;->Data:Lkx8;

    invoke-virtual {p1, p0}, Ljx8;->o(Lkx8;)V

    return-void

    :cond_2
    sget-object p0, Lkx8;->SelfClosingStartTag:Lkx8;

    invoke-virtual {p1, p0}, Ljx8;->o(Lkx8;)V

    return-void

    :cond_3
    :pswitch_3
    invoke-virtual {p1, p0}, Ljx8;->m(Lkx8;)V

    iget-object p0, p1, Ljx8;->j:Lgx8$h;

    iget-object p0, p0, Lgx8$h;->h:Lm54;

    invoke-virtual {p0, p2}, Lm54;->a(C)V

    return-void

    :cond_4
    sget-object p0, Lkx8;->AfterAttributeName:Lkx8;

    invoke-virtual {p1, p0}, Ljx8;->o(Lkx8;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
